#!/bin/bash
dnf install -y podman
sudo useradd user1 && echo 'user1:skupper' | sudo chpasswd
whoami
su user1 -c 'echo "skupper" | curl https://skupper.io/install.sh | sh'
sudo -u user1 bash -c 'whoami;echo $USER'
echo "hello"
echo $SHELL
su user1 -c 'echo "skupper" | systemctl --user enable podman.socket --now' 
