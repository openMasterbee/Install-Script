#!/bin/bash

data="/opt/data"    # /   (root directory)
if [ -e "$device0" ]
then
  echo "$device0 existed, now continue..."
else
  mkdir /opt/data
  echo "$device0 crerated."
fi
echo ""
echo "----------------------------------------------------------------"
echo ""
echo "Now begain creating folder structure for odoo 10"

mkdir /opt/data/odoo10e
echo "Crerated /opt/data/odoo10e"

mkdir /opt/data/odoo10e/addons
echo "Crerated /opt/data/odoo10e/addons"

mkdir /opt/data/odoo10e/store
echo "Crerated /opt/data/odoo10e/store"

mkdir /opt/data/odoo10e/config
echo "Crerated /opt/data/odoo10e/config"

mkdir /opt/data/odoo10e/auto-backups
echo "Crerated /opt/data/odoo10e/auto-backups"

wget -P /opt/data/odoo10e/config/ https://raw.githubusercontent.com/openMasterbee/Install-Script/master/Folder%20Creation/odoo10e/odoo.conf
echo "Downloaded odoo.conf file"

chmod -R 777 /opt/data/odoo10e
echo "Made odoo10e Folder 777"
echo ""
echo "----------------------------------------------------------------"
echo ""
echo "Now begain creating folder structure for let's encrypt"

mkdir /opt/data/letsencrypt
echo "Crerated /opt/data/letsencrypt"

mkdir /opt/data/letsencrypt/verify
echo "Crerated /opt/data/letsencrypt/verify"

mkdir /opt/data/letsencrypt/certs
echo "Crerated /opt/data/letsencrypt/certs"

mkdir /opt/data/letsencrypt/nginx
echo "Crerated /opt/data/letsencrypt/nginx"

chmod -R 777 /opt/data/letsencrypt
echo "Made letsencrypt Folder 777"

wget -P /opt/data/letsencrypt/nginx/ https://raw.githubusercontent.com/openMasterbee/Install-Script/master/Folder%20Creation/odoo10e/default.conf
echo "Downloaded default.conf file"
echo ""
echo ""
echo "----------------------------------------------------------------"
echo ""
echo "Now begain creating folder structure for postgres"

mkdir /opt/data/postgres/
echo "Crerated /opt/data/postgres"

mkdir /opt/data/postgres/database
echo "Crerated /opt/data/postgres/database"

chmod -R 777 /opt/data/postgres
echo "Made postgres Folder 777"
echo ""
echo "----------------------------------------------------------------"
echo ""

echo "Now begain creating folder structure for redis"

mkdir /opt/data/redis/
echo "Crerated /opt/data/redis"

mkdir /opt/data/redis/storage
echo "Crerated /opt/data/redis/storage"

chmod -R 777 /opt/data/redis
echo "Made redis Folder 777"
echo ""

echo "Folder creation finished."
echo ""
echo ""
echo "----------------------------------------------------------------"
echo ""


read -r -p "Do you wish to pull down all images? [y/N]" response
case $response in
    [yY][eE][sS]|[yY])
      image_pull
      echo "Image Pull Secussful."
        ;;
    *)
      echo "Image pulling skiped. Process finish."
        ;;
esac


image_pull () {
docker pull postgres:9.3
docker pull redis
docker pull nginx:alpine
docker pull tozny/rancher-lets-encrypt
docker pull razeen/odoo10e:v1.1
}
