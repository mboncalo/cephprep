Role Name
=========

A brief description of the role goes here.

Requirements
------------

Configure the ansible environment in /etc/ansible
Copy ansible.cfg, hosts, inventory.yml, cephrun.yml,  roles/ to /etc/ansible from the ansible directory in the repo
Edit your hostnames in the [nodes] group in hosts and inventory.yml
Make sure there is a symlink to your role location named cephprep in roles/ directory


Run Playbook
----------------

Make sure you are in /etc/ansible and run ansible-playbook cephrun.yml --ask-become-pass
