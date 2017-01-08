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

## er 2 php_error
	 echo -e '#!/bin/bash \n tail -f /var/log/apache2/error.log' > /usr/local/bin/er && chmod u+x /usr/local/bin/er
