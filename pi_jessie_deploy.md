# Pi_jessie_deploy

# LAMP

	apt-get install apache php5 mysql-server php5-mysql 
pma

	apt-get install phpmyadmin
	ln -s /usr/share/phpmyadmin /var/www/html/pma

wordpress

	sudo a2enmod rewrite

# Uninstall apache2
	apt-get --purge remove apache2

# Reference
- https://www.raspberrypi.org/learning/lamp-web-server-with-wordpress/worksheet/
