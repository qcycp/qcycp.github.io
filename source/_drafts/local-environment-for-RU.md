---
title: local_environment_for_RU
abbrlink: 88c54fe9
tags:
---
Step 1
執行 Embedded_Command_Shell.bat
![](10.png)
Step 2
執行 eclipse &
![](11.png)
## 設定 project
![](01.png)
![](02.png)
![](03.png)
### RHON
![](04_1.png)
### RPQN
![](04_2.png)
## License
![](05.png)
C:\Users\asus\Desktop\baremetal_env\92D48-07160-7396p\92D48-07160-7396p.lic
![](06.png)
## MAC of ethernet
B4B686D8438E
![](12.png)
## import project
![](07.png)
![](08.png)
![](09.png)

# build code
### RPQN - starter (core0)
git clone git@10.36.94.101:RRH-STARTER/rrh-starter.git
cd rrh-starter
source setup.env
make rrh_config
make clean_rrh_config
output ==> build/rrh_config_enable_core1/init_rrh_config_enable_cuplane
make reconfig_rf
make clean_reconfig_rf
output ==> build/rrh_reconfig_rf_param/rrh_reconfig_rf_param

### RHON - starter (core0)
git clone git@10.36.94.101:RRH-STARTER/rrh-starter-stratix10.git
cd rrh-starter-stratix10
source setup.env
make rrh_config
make clean_rrh_config
output ==> build/rrh_config_core1/init_rrh_config_enable_cuplane
make reconfig_rf
make clean_reconfig_rf
output ==> build/rrh_reconfig_rf_param/rrh_reconfig_rf_param

### RPQN - bare-metal (core1)
git clone git@10.36.94.101:RRH/rrh-bare-metal.git
cd rrf-bare-metal
git submodule init 
git submodule update --recuresive
source env.sh
make -C build/build_test all
make -C build/build_test clean_all
output ==> build/test_xran/bootimage_cuplane.bin

### RHON - bare-metal (core1)
git clone git@10.36.94.101:RRH/rrh-stratix10.git
cd rrh-stratix10
git submodule init 
git submodule update --recuresive
source env.sh
make -C build/build_test all
make -C build/build_test clean_al
ourput ==> build/test_xran/bootimage_cuplane.bin

### RPQN - installer
repo init -u ssh://git@10.36.94.101/SI/rpqn_manifest.git -b v3.0.0q.524 --repo-url=git@10.36.94.101:SI/git-repo.git --repo-branch=repo-1
repo sync
cd rpqn-make-starter
make
make clean_all
output ==> release_img/install_v3_0_0q_524.run

### RHON - installer
repo init -u ssh://git@10.36.94.101/SI/rhon_manifest.git -b v2.0.0o.524_dev --repo-url=git@10.36.94.101:SI/git-repo.git --repo-branch=repo-1
repo sync
cd rhon-make-starter
make
make clean_all
output ==> release_img/install_v2_0_0o_524.run