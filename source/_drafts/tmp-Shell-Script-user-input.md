---
title: tmp_Shell_Script_user_input
tags:
---
shell script - user input
===
```bash
user@vm-docker:~$ ./script.sh
=== Deployment ===
1) All
2) Kangaroo
3) Attendance
4) Wrapper
5) Quit
Please Enter Your Choice: 5
Goodbye!
user@vm-docker:~$ ./script.sh
=== Deployment ===
1) All
2) Kangaroo
3) Attendance
4) Wrapper
5) Quit
Please Enter Your Choice: 7
Invalid Option. Try Another One.
Please Enter Your Choice: 2
Deploy Kangaroo...
```
```bash
#!/bin/bash

deploy_folder="/home/user/deploy"

deploy_kangaroo()
{
    rm -rf $deploy_folder/kangaroo
    cd $deploy_folder

    git clone git@10.36.94.101:SI/kangaroo.git -b develop

    cd $deploy_folder/kangaroo/deploy
    sh deploy.sh
}

deploy_attendance()
{
    rm -rf $deploy_folder/DeployAttendanceSystem
    cd $deploy_folder

    git clone git@10.36.94.101:SI/DeployAttendanceSystem.git

    cd $deploy_folder/DeployAttendanceSystem/docker-deploy
    sh deploy.sh
}

deploy_wrapper()
{
    rm -rf $deploy_folder/wrapper
    cd $deploy_folder

    git clone git@10.36.94.101:SI/wrapper.git

    cd $deploy_folder/wrapper/deploy
    sh deploy.sh
}

deploy_all()
{
    deploy_kangaroo
    deploy_attendance
    deplay_wrapper
}

echo "=== Deployment === "
PS3="Please Enter Your Choice: "
options=("All" "Kangaroo" "Attendance" "Wrapper" "Quit")
select opt in "${options[@]}";
do
    case "$REPLY" in
        1 )
            echo "Deploy $opt..."
            deploy_all
            ;;
        2 )
            echo "Deploy $opt..."
            deploy_kangaroo
            ;;
        3 )
            echo "Deploy $opt..."
            deplay_attenadane
            ;;
        4 )
            echo "Deploy $opt..."
            deploy_wrapper
            ;;
        5 )
            echo "Goodbye!"
            break
            ;;
        *) echo "Invalid Option. Try Another One."
           continue
           ;;
    esac
done
```