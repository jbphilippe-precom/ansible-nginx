Role Name
=========
	Deploy Nginx on Ubuntu Trusty and Xenial

Requirements
------------
	Ansible v2 and server with Ubuntu (Trusty or Xenial)

Role Variables
--------------
	# Default
	nginx_use_lvm: "true"
	nginx_vg_name: vg_vroot
	nginx_lv_name: lv_www
	nginx_data_dir: "/var/www"
	nginx_lv_size: 10g
	nginx_version: latest
	nginx_mirrored_version: "false"
	# Vars
	nginx_fastcgi_file: "/etc/nginx/fastcgi_params"
	nginx_conf_file: "/etc/nginx/nginx.conf"
	nginx_default_vhost_file: "/etc/nginx/sites-available/default"

Dependencies
------------
	None

Example Playbook
----------------
	- name: Deploy Nginx
	  hosts: WEB_SERVER
	  become: yes
	  vars:
	    nginx_listen_port: "8080"
	  roles:
	    - ansible-nginx

License
-------
	BSD

Author Information
------------------
	BSO ISL (ael.scs.systeme@pagesjaunes.fr)
