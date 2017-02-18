# CentOS7 Deploy 

## Basic
    yum install -y net-tools zip unzip vim elinks tree wget

## SSH key
	mkdir ~/.ssh && touch ~/.ssh/authorized_keys  && vim ~/.ssh/authorized_keys

## Sync Time
	yum install ntp -y
	chkconfig ntpd on
	ntpdate time.apple.com

## Timezone
	timedatectl set-timezone Asia/Shanghai


## LAMP
	yum install httpd mysql mariadb-server php php-mysql

	chkconfig httpd on && chkconfig mariadb on
	service httpd start && service mariadb start

	firewall-cmd --permanent --zone=public --add-service=http && firewall-cmd --reload
	
## Phpmyadmin
	rpm -Uvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-8.noarch.rpm
	yum install phpmyadmin
	

## Samba
	yum install samba

smb.conf

	        security = user
	        passdb backend = tdbsam
	        map to guest = bad user
	[w_html]
	        path = /var/www/html
	        browsable =yes
	        writable = yes
	        guest ok = yes
	        read only = no
	        force user = root
	        force group = root
		
---
	chkconfig smb on
	service smb start


	firewall-cmd --permanent --zone=public --add-service=samba && firewall-cmd --reload


## LAMP + Samba config
	mkdir ~/config_files && cd config_files && ln -s /etc/httpd . && ln -s /etc/httpd/conf/httpd.conf . && ln -s /etc/samba/smb.conf .

## Selinux Apache
	chcon -R -t httpd_sys_content_t */

## Jekyll
	gem install jekyll bundler
	jekyll new myblog

GemFile `gem "json", "2.0.2"`

	yum install libffi
	gem uninstall ffi
	gem install ffi --platform=ruby

	bundle exec jekyll serve  --host=0.0.0.0
	
# er 2 php_error
	mkdir ~/bin && echo -e '#!/bin/bash \n tail -f /var/log/httpd/error_log' > ~/bin/er && chmod u+x ~/bin/er


# ETC..
	firewall-cmd --list-all
	yum install tkinter
