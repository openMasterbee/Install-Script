#!/bin/bash

echo "Now begain creating folder data"
mkdir /opt/data/

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

chmod -R 777 /opt/data/odoo10e
echo "Made odoo10e Folder 777"
echo ""

curl -sSL url | bash


echo "Now begain creating folder structure for let's encrypt"

mkdir /opt/data/letsencrypt
echo "Crerated /opt/data/letsencrypt"

mkdir /opt/data/letsencrypt/verify
echo "Crerated /opt/data/letsencrypt/verify"

mkdir /opt/data/letsencrypt/certs
echo "Crerated /opt/data/letsencrypt/certs"

chmod -R 777 /opt/data/letsencrypt
echo "Made letsencrypt Folder 777"
echo ""

echo "Now begain creating folder structure for postgres"

mkdir /opt/data/postgres/
echo "Crerated /opt/data/postgres"

mkdir /opt/data/postgres/database
echo "Crerated /opt/data/postgres/database"

chmod -R 777 /opt/data/postgres
echo "Made postgres Folder 777"
echo ""


echo "Now begain creating folder structure for redis"

mkdir /opt/data/redis/
echo "Crerated /opt/data/redis"

mkdir /opt/data/redis/storage
echo "Crerated /opt/data/redis/storage"

chmod -R 777 /opt/data/redis
echo "Made redis Folder 777"
echo ""
