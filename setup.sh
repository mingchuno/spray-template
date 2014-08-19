#!/bin/sh

# return to home
cd ~

# Install basic
sudo apt-get install git vim

# Install scala
sudo apt-get remove scala-library scala
wget http://www.scala-lang.org/files/archive/scala-2.11.2.deb
sudo dpkg -i scala-2.11.2.deb
sudo apt-get update
sudo apt-get install scala

# Install sbt
wget http://dl.bintray.com/sbt/debian/sbt-0.13.5.deb
sudo dpkg -i sbt-0.13.5.deb 
sudo apt-get update
sudo apt-get install sbt

# Install Java JDK
sudo apt-get install python-software-properties
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer

# Install Akka
wget http://downloads.typesafe.com/akka/akka_2.11-2.3.5.zip
sudo unzip akka_2.11-2.3.5.zip -d /usr/local/akka
sudo echo 'AKKA_HOME=/usr/local/akka/akka-2.3.5' > /etc/profile.d/akka.sh
sudo echo 'export AKKA_HOME' >> /etc/profile.d/akka.sh
# beware of the last 2 lines, check the *.sh ok or not

git clone https://github.com/mingchuno/spray-template.git
git checkout on_spray-can_1.3

# then follow the step to start the server!
