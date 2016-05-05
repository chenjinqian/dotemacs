#!/bin/bash
#a project to install OS onece for all.
sudo apt-get install zsh emacs ipython3 python3 ipython ipython-notebook ipython3-notebook
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
sudo apt-get install clisp
sudo apt-get install git subversion
sudo apt-get install sbcl  #no slime here, or with overlap with emacs-one.
#install  chinese input method.
sudo apt-get install ibus-pinyin
# fix emacs chinese input local envirement, by adding one line into .rc file.


sudo apt-get install python-dev python3-dev
sudo easy_install pip
pip install --upgrade pip
sudo easy_install3 pip

sudo apt-get install libatlas-base-dev gfortran #prepare for scipy
sudo apt-get install libfreetype6-dev libxft-dev #prepare for matplotlib
sudo pip install scipy matplotlib pandas virtualenv

sudo apt-get install texlive-full

sudo apt-get install libpq-dev
sudo pip install psycopg2
sudo pip install pgsql   #database adapter.
sudo pip install reportlib nose psutil
sudo apt-get install postgresql-contrib
sudo apt-get intall tree docker
sudo apt-get install icedtea-plugin
sudo apt-get install unixodbc-dev
sudo pip install pyodbc
sudo apt-get autoremove

#database,
