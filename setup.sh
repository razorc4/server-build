sudo apt-get install apache2
sudo apt-get install mariadb-server
sudo mysql_secure_installation
## Copy 'Application' from repo.
## Replace later with actual steps. 

## Enable CGI scripts. 
sudo a2enmod cgid 
sudo systemctl restart apache2 

## Edit /etc/apache2/conf-available/cgi-enabled.conf
vi /etc/apache2/conf-available/cgi-enabled.conf
<Directory "/var/www/html/">
    Options +ExecCGI
    AddHandler cgi-script .cgi .pl
</Directory>
