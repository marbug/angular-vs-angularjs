#!/bin/sh

echo "======== repos dir"
reposDir="/home/vagrant/repos"
echo "${reposDir}"

echo "======== build"
cd "${reposDir}"
for repoName in `ls -1 ${reposDir}`; do
    echo "==== ${repoName}"
    cd ${repoName}
    git pull
    npm install
    npm run build
    cd ..
done

echo "======== copy"
rm -fR /var/www/html/*
cp -r ${reposDir}/angularjs-oclazyload/dist/* /var/www/html/
mkdir -p /var/www/html/new-ui
cp -r ${reposDir}/angular-lazyload/dist/angular-lazyload/* /var/www/html/new-ui/
