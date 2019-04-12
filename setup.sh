sudo apt-get install apache2
sudo apt-get install mariadb-server
sudo mysql_secure_installation
## Copy 'Application' from repo.
## Replace later with actual steps. 

## Change ownership/groups of files to www-data

## Ensure *.cgi files have eXecute permissions by owner.

## Enable CGI scripts. 
sudo a2enmod cgid 
sudo systemctl restart apache2 

## Edit /etc/apache2/conf-available/cgi-enabled.conf
vi /etc/apache2/conf-available/cgi-enabled.conf
<Directory "/var/www/html/">
    Options +ExecCGI
    AddHandler cgi-script .cgi .pl
</Directory>

a2enconf cgi-enabled
sudo systemctl restart apache2 

## Setup CPAN modules for perl use. 
sudo apt-get install make
sudo cpan
sudo cpan Switch
sudo cpan Appache::Session , Time::Local, URI::Escape,  CGI qw/:standard *table start_ul/;
sudo cpan -T Compress::Zlib
sudo cpan -T Font::TTF
sudo cpan -T PDF::API2

## Install phpamyadmin
sudo apt-get install phpmyadmin
sudo phpenmod mbstring
sudo phpenmod mcrypt
sudo systemctl restart apache2 

## Create MySQL user
## mysql> CREATE USER 'sammy'@'localhost' IDENTIFIED BY 'password';
## mysql> GRANT ALL PRIVILEGES ON *.* TO 'sammy'@'localhost' WITH GRANT OPTION;

