# MY dotfiles & Ansible configs
This project is a fork from https://github.com/dr460nf1r3/ansible-configs

Holds Ansible configs and dotfiles for my personal devices

# Ansible configs

- This Ansible configuration is used to quickly perform MY environments after reinstallations. 

It supports ArchLinux and derivates for the moment with Gnome for MY workstations.

Work in progress on debian and servers version.


## Ansible


Install ansible
```
pacman -Syu ansible

git clone https://github.com/dmagnand/ansible-configs.git
cd ansible-configs

```

Add in ./roles/workstations/files/home/USERNAME/ your dot files (.bashrc, .bash_aliases, .local/share/* , .config/... with the same folder structure...)

Modify ./host_var/localhost/localhost.yml vars with your user: USERNAME and favorite apps 

Modify ./hardening.yml 

```
./install_requirements.sh
./install_full.sh
```

install_full.sh executes system config hardening, apps install and gnome config

based on:
https://github.com/dev-sec/ansible-collection-hardening
https://github.com/dev-sec/ansible-collection-hardening/tree/master/roles/os_hardening


## Gnome extensions installed 

See ./roles/gnome/tasks/main.yml line 240 and modify as you need

https://extensions.gnome.org/extension/307/dash-to-dock/

https://extensions.gnome.org/extension/3193/blur-my-shell/  (Bightness to 0.6, Sigma to 30, Blur uncheck dash + pannel)

https://extensions.gnome.org/extension/1460/vitals/

https://extensions.gnome.org/extension/812/show-applications/

https://extensions.gnome.org/extension/302/windowoverlay-icons/ (Size 128)


## License

GPL-3.0

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program. If not, see <https://www.gnu.org/licenses/>.

***
WARNING: Each program installed with this script has its own licence
***