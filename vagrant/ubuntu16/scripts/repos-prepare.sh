#!/bin/sh

echo "======== repos dir"
reposDir="/home/vagrant/repos"
echo "${reposDir}"

echo "======== prepare repos dir"
mkdir -p ${reposDir}
ls -l ${reposDir}

echo "======== clone repos"
cd ${reposDir}
ls -1
git clone -q https://github.com/marbug/angular-lazyload.git
git clone -q https://github.com/marbug/angularjs-oclazyload.git
chown -R vagrant:vagrant ./
ls -1
