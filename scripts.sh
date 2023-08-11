#!/bin/bash

sudo apt update

sudo apt install git -y

sudo apt install apache2 -y

sudo apt install default-jdk -y

sudo apt update

sudo apt install tomcat9 -y

sudo  apt install maven -y

cd /tmp/

git clone https://github.com/shashirajraja/onlinebookstore.git

cd /tmp/onlinebookstore/

mvn install

sudo chmod -R o+rwx /var/lib/tomcat9/webapps

sudo cp -r target/onlinebookstore.war /var/lib/tomcat9/webapps
