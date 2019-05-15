echo "Update"
sudo apt update

echo "Installing apache2"
sudo apt install apache2 -y

echo "Installing php 5.6"
sudo add-apt-repository ppa:ondrej/php -y
sudo apt install php5.6 php5.6-common php5.6-mysql php5.6-mbstring php5.6-curl -y

echo "Installing mariadb and phpmyadmin"
sudo apt install mariadb-server phpmyadmin -y

echo "linking phpmyadmin"
sudo ln -s /usr/share/phpmyadmin /var/www/html

echo "Clone Projects..."
cd /var/www/html
pwd
git clone https://github.com/miqdadyyy/VULN
mv VULN/* ./
rm -rf VULN
chmod 777 -R ./

echo "Config database..."
mysql < secret/current.sql
rm -rf secret
rm index.html
