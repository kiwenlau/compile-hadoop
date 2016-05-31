#!/bin/bash

# compile hadoop 2.7.2 by default
version=${1:-2.7.2}

#echo -e "\n\ndownload hadoop source code..."

#wget http://archive.apache.org/dist/hadoop/core/hadoop-$version/hadoop-$version-src.tar.gz

#echo -e "\n\nextract hadoop source directory..."
#tar -xzvf hadoop-$version-src.tar.gz

cd /hadoop-$version-src

echo -e "\n\ncomile hadoop $version..."
mvn package -Pdist,native -DskipTests -Dtar

if [[ $? -eq 0 ]]; then
	echo -e "\n\ncomile hadoop $version success!\n\n"
	#mv ./hadoop-dist/target/hadoop-$version.tar.gz /binary
else
        echo -e "\n\ncomile hadoop $version fail!\n\n"
fi


