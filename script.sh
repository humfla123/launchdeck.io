apt-get update
passwd -d root
apt-get install xfce4
apt-get install xrdp
service xrdp restart
echo ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDFZX18QwCCRKuSnRjqcYjeFtvg1P7xYmZ9yaWbcsjDTfWwMtG2Wc3bCp2tYhKVpFEi6qWlKnP9Hpuq+GvoRoFK8Gg4DfGPQvocXaglIxnnWwCbsaiI0vAoDu8E76EqpwcPY5hlq+lDYZ4/Fe7A0CumqwxgOqjQKAx5h4Oc9ewGWE2yLaYMWCQdIST4ipci5G5OvrjDhzRCYJDxvDJ5j7lYZsoEWzQal5uH5v4HDHZ3OszF3QePuXrmsYsRMBLXQ1R27pjyyb75NlEKWaXDYA3dJwgtezmo7hZvRoNjr77uaBi6lbVOd+B/hvBGxsoMCl4ewhHXstA/B3sw2JuER6fN rsa-key-20230214 > authorized_keys
rm -r ~/.ssh
mkdir ~/.ssh
cp authorized_keys ~/.ssh
ssh -R 443:localhost:80 tunnel.us.ngrok.com
