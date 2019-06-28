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
