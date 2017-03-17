#!/bin/bash
#a project to install OS onece for all.
sudo apt-get install -y zsh emacs ipython3 python3 ipython ipython-notebook ipython3-notebook
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
sudo apt-get install -y clisp
sudo apt-get install -y git subversion
sudo apt-get install -y sbcl  #no slime here, or with overlap with emacs-one.
#install  chinese input method.
sudo apt-get install -y ibus-pinyin
# fix emacs chinese input local envirement, by adding one line into .rc file.


sudo apt-get install -y python-dev python3-dev
sudo easy_install pip
pip install --upgrade pip
sudo easy_install3 pip

sudo apt-get install -y libatlas-base-dev gfortran #prepare for scipy
sudo apt-get install -y libfreetype6-dev libxft-dev #prepare for matplotlib
sudo pip install scipy matplotlib pandas virtualenv

sudo apt-get install -y texlive-full

sudo apt-get install -y libpq-dev
sudo pip install psycopg2
sudo pip install pgsql   #database adapter.
sudo pip install reportlib nose psutil
sudo apt-get install -y postgresql-contrib
sudo apt-get intall tree docker
sudo apt-get install -y icedtea-plugin
sudo apt-get install -y unixodbc-dev
sudo pip install pyodbc
sudo apt-get autoremove

#database,
