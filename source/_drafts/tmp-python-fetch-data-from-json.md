---
title: tmp_python_fetch_data_from_json
abbrlink: 9712b856
tags:
---
從json file中fetch data
===
[export.zip](:storage\5d77adc7-0869-4681-849a-26bfb8dbbf73\a189650a.zip)
[split_index.py](:storage\5d77adc7-0869-4681-849a-26bfb8dbbf73\d1c961f0.py)

Usage:
1. index.json檔中unique的欄位是name，以name為key建立dictionary
2. 將export.zip放在跟split_index.py同層目錄
3. 可以選擇index的start\end來fetch data
4. 也可建立一個list.txt file，file中記錄name list(每個name獨立一列)，利用這個file來fetch data
5. 最後的結果會自動壓縮到output.zip中

```python
from shutil import copyfile, rmtree
import json
import os
import zipfile

subjects_dict = {}
total_subjects = 0
export_dir = os.path.join(os.getcwd(), 'export')
output_dir = os.path.join(os.getcwd(), 'output')
output_index_json = os.path.join(output_dir, 'index.json')
output_photo_dir = os.path.join(output_dir, 'photo')

def read_index_json(index_by):
    global total_subjects

    index_json = os.path.join(os.getcwd(), 'export', 'index.json')

    with open(index_json, 'r') as fp:
        subjects = json.load(fp)

    total_subjects = len(subjects)

    if index_by == '1':
        for subject in subjects:
            subjects_dict[subject['name']] = subject
    elif index_by == '2':
        for subject in subjects:
            subjects_dict[subject['job_number']] = subject

def fetch_by_count(start, end):
    os.makedirs(output_dir, exist_ok=True)
    os.makedirs(output_photo_dir, exist_ok=True)
    output = []

    for count, index in enumerate(subjects_dict):
        if count >= int(start)-1 and count <= int(end)-1:
            if subjects_dict[index]['avatar'] != "":
                copy_photo(subjects_dict[index]['avatar'])

                filepath = subjects_dict[index]['avatar']
                filename = filepath.split('\')[1]
                filepath = os.path.join('photo', filename)
                subjects_dict[index]['avatar'] = filepath

            for i, photo in enumerate(subjects_dict[index]['photos']):
                copy_photo(photo)

                filepath = photo
                filename = filepath.split('\')[1]
                filepath = os.path.join('photo', filename)
                subjects_dict[index]['photos'][i] = filepath

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

        if subjects_dict[name]['avatar'] != "":
            copy_photo(subjects_dict[name]['avatar'])

            filepath = subjects_dict[name]['avatar']
            filename = filepath.split('\')[1]
            filepath = os.path.join('photo', filename)
            subjects_dict[name]['avatar'] = filepath

        for i, photo in enumerate(subjects_dict[name]['photos']):
            copy_photo(photo)

            filepath = photo
            filename = filepath.split('\')[1]
            filepath = os.path.join('photo', filename)
            subjects_dict[name]['photos'][i] = filepath

        output.append(subjects_dict[name])

    with open(output_index_json, 'w') as fp:
        json.dump(output, fp, indent=2)

    zip_folder()

def copy_photo(src):
    if os.path.exists(os.path.join('export', src)):
        filename = src.split('\')[1]
        dst = os.path.join(output_photo_dir, filename)
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
    export_zip = os.path.join(os.getcwd(), 'export.zip')
    if os.path.exists(export_zip):
        os.makedirs(export_dir, exist_ok=True)
        zf = zipfile.ZipFile(export_zip)
        zf.extractall(export_dir)
        return True
    else:
        return False

if __name__ == '__main__':

    if unzip_file():
        #for NH rules, the name field will be filled with job number
        #index_by = input('Read index.json by 1) name 2) job_number: ')
        index_by = '1'
        read_index_json(index_by)

        fetch_by = input('Fetch data by 1) count 2) file list: ')

        if fetch_by == '1':
            start = input('Total(1-%d), Fetch data from: ' % int(total_subjects))
            end = input('Total(1-%d), Fetch data to: ' % int(total_subjects))
            fetch_by_count(start, end)
        else:
            file = input('Please input your file name(list.txt by default): ')
            if len(file) != 0:
                fetch_by_file_list(file)
            else:
                fetch_by_file_list('list.txt')
    else:
        print('export.zip file is not found')

```