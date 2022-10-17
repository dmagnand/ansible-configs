#!/bin/bash

#requirements
sudo ansible-galaxy install -r requirements.yml

#apps
sudo ansible-playbook -i hosts  -l localhost --connection=local full_run.yml --skip-tags [homeconfiguration]


#perso gnome
ansible-playbook -i hosts -l localhost --connection=local  gnome_run.yml

#Hardening
sudo ansible-playbook -i hosts -l localhost  --connection=local  hardening_run.yml
