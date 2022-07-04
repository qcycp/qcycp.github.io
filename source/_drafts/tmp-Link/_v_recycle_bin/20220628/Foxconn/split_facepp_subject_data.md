```python
from shutil import copyfile, rmtree
import json
import os
import zipfile
import sys
from collections import OrderedDict

TARGET_ZIP_FILE = 'export.zip'
FILENAME_PREFIX = 'LH'
INDEX_COUNT = 5

subjects_dict = {}
total_subjects = 0
export_dir = os.path.join(os.getcwd(), 'export')
output_dir = os.path.join(os.getcwd(), 'output')
output_index_json = os.path.join(output_dir, 'index.json')
output_photo_dir = os.path.join(output_dir, 'photo')
output_avatar_dir = os.path.join(output_dir, 'avatar')

def read_index_json(index_by):
    global total_subjects
    global subjects_dict

    index_json = os.path.join(os.getcwd(), 'export', 'index.json')

    with open(index_json, 'r') as fp:
        subjects = json.load(fp)

    if index_by == '1':
        for subject in subjects:
            if len(subject['photos']) == 0:
                continue
            if subject['name'] in subjects_dict:
                continue
            subjects_dict[subject['name']] = subject

        #python3.6 don't need to sort
        #subjects_dict=OrderedDict(sorted(import_data.items(), key=lambda t: t[0]))
    elif index_by == '2':
        for subject in subjects:
            subjects_dict[subject['job_number']] = subject

    total_subjects = len(subjects_dict)

def fetch_by_count(start, end):
    global subjects_dict

    os.makedirs(output_dir, exist_ok=True)
    os.makedirs(output_photo_dir, exist_ok=True)
    os.makedirs(output_avatar_dir, exist_ok=True)
    output = []

    for count, index in enumerate(subjects_dict):
        job_number = FILENAME_PREFIX+str(count).zfill(INDEX_COUNT)
        if count >= int(start)-1 and count <= int(end)-1:
            for i, photo in enumerate(subjects_dict[index]['photos']):
                filepath = photo
                filename = job_number + "." + filepath.split('/')[1].split('.')[1]
                if len(subjects_dict[index]['photos']) > 1:
                    filename = job_number + "_" + str(i).zfill(2) + "." + filepath.split('/')[1].split('.')[1]
                filepath = os.path.join('photo', filename)
                subjects_dict[index]['photos'][i] = filepath
                copy_photo(photo, filename)

                if i == 0:
                    if subjects_dict[index]['avatar'] != "":
                        filepath = subjects_dict[index]['avatar']
                    else:
                        filepath = photo
                    filename = job_number + "." + filepath.split('/')[1].split('.')[1]
                    copy_avatar(filepath, filename)
                    filepath = os.path.join('avatar', filename)
                    subjects_dict[index]['avatar'] = filepath

            if not subjects_dict[index]['job_number']:
                subjects_dict[index]['job_number'] = subjects_dict[index]['pinyin']
            subjects_dict[index]['name'] = job_number
            #subjects_dict[index]['entry_date'] = '1970-1-1'
            #subjects_dict[index]['birthday'] = '1970-1-1'
            #subjects_dict[index]['email'] = subjects_dict[index]['name']+"@example.com"

            output.append(subjects_dict[index])

    with open(output_index_json, 'w') as fp:
        json.dump(output, fp, indent=2)

    zip_folder()

def fetch_by_file_list(file):
    os.makedirs(output_dir, exist_ok=True)
    os.makedirs(output_photo_dir, exist_ok=True)
    output = []

    with open(file, 'r') as fp:
        content = fp.readlines()
    content = [x.strip() for x in content]

    for name in content:
        if name not in subjects_dict:
            continue

        for i, photo in enumerate(subjects_dict[name]['photos']):
            filepath = photo
            filename = filepath.split('/')[1]
            filepath = os.path.join('photo', filename)
            subjects_dict[name]['photos'][i] = filepath
            copy_photo(photo, filename)

            if i == 0:
                if subjects_dict[name]['avatar'] != "":
                    filepath = subjects_dict[name]['avatar']
                    filename = filepath.split('/')[1]
                    filepath = os.path.join('photo', filename)
                    subjects_dict[name]['avatar'] = filepath
                    copy_avatar(subjects_dict[name]['avatar'], filename)
                else:
                    filepath = photo
                    filename = job_number + "." + filepath.split('/')[1].split('.')[1]
                    filepath = os.path.join('avatar', filename)
                    subjects_dict[index]['avatar'] = filepath
                    copy_avatar(photo, filename)

        output.append(subjects_dict[name])

    with open(output_index_json, 'w') as fp:
        json.dump(output, fp, indent=2)

    zip_folder()

def copy_photo(src, filename):
    if os.path.exists(os.path.join('export', src)):
        dst = os.path.join(output_photo_dir, filename)
        src = os.path.join('export', src)
        copyfile(src, dst)

def copy_avatar(src, filename):
    if os.path.exists(os.path.join('export', src)):
        dst = os.path.join(output_avatar_dir, filename)
        src = os.path.join('export', src)
        copyfile(src, dst)

def zip_folder():
    #zf = zipfile.ZipFile(sFilePath + '.ZIP', mode='w')#just store and no zip
    zf = zipfile.ZipFile('output.zip', mode = 'w', compression = zipfile.ZIP_DEFLATED)
    os.chdir(os.path.join(os.getcwd(), 'output'))

    for root, folders, files in os.walk("."):
        for sfile in files:
            aFile = os.path.join(root, sfile)
            zf.write(aFile)
    zf.close()

    rmtree(output_dir)
    rmtree(export_dir)

def unzip_file():
    export_zip = os.path.join(os.getcwd(), TARGET_ZIP_FILE)
    if os.path.exists(export_zip):
        print("Please Wait...")
        os.makedirs(export_dir, exist_ok=True)
        zf = zipfile.ZipFile(export_zip)
        zf.extractall(export_dir)
        return True
    else:
        print('%s file is not found' % TARGET_ZIP_FILE)
        return False

if __name__ == '__main__':
    if not unzip_file():
        print("Bye~")
        sys.exit()

    #for NH rules, the name field will be filled with job number
    #index_by = input('Read index.json by 1) name 2) job_number: ')
    index_by = '1'
    read_index_json(index_by)

    fetch_by = input('Fetch data by 1) count 2) File list 3) Quit: ')

    if fetch_by == '1':
        start = input('Total(1-%d), Fetch data from: ' % int(total_subjects))
        end = input('Total(1-%d), Fetch data to: ' % int(total_subjects))
        fetch_by_count(start, end)
    elif fetch_by == '2':
        file = input('Please input your file name(list.txt by default): ')
        if len(file) != 0:
            fetch_by_file_list(file)
        else:
            fetch_by_file_list('list.txt')
    else:
        print("Bye~")
```