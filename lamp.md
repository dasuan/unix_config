
# MySQL backup [REF](https://dev.mysql.com/doc/refman/5.5/en/mysqldump-sql-format.html)
    mysqldump --all-databases > dump.sql
    mysqldump --databases db1 db2 db3 > dump.sql
    mysqldump --databases test > dump.sql
    
# MySQL recover [REF](https://dev.mysql.com/doc/refman/5.5/en/reloading-sql-format-dumps.html)
    shell> mysql < dump.sql
    mysql> source dump.sql
    
    shell> mysqladmin create db1
    shell> mysql db1 < dump.sql
    
    
# Apache Virtual hosts
``` 
<VirtualHost *:80>
    ServerAdmin admin@example.com
    ServerName example.com
    ServerAlias www.example.com
    DocumentRoot /var/www/example.com/public_html
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>

```
