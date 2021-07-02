Technologies used in this project:
 - Vagrant
 - Ansible
 - Docker

This project features:
 - automation of a virtual machine creation (using Vagrant)
 - automation of a virtual machine configuration, e.g. installation of Docker  (using Ansible)
 - deployment of a static HTML page using Nginx docker container

**HowTo**

1. Run install_ansible.sh
2. Run install_virtualbox_vagrant.sh
3. Run vagrant up
4. Or alternatively run provision_remotely.sh

**history 100**
![](screenshots/Screenshot_20210702_182947.png)


**docker ps -a**
![](screenshots/Screenshot_20210702_184125.png)


**curl -v -XGET http://localhost**
![](screenshots/Screenshot_20210702_184016.png)
![](screenshots/Screenshot_20210702_184353.png)

**ASCIINEMA**
[![asciicast](https://asciinema.org/a/423623.svg)](https://asciinema.org/a/423623)