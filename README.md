##Compile Hadoop in Docker container

####Download docker image

```
sudo docker pull kiwenlau/compile-hadoop
```

or you can build kiwenlau/comile-hadoop image by your self

```
sudo docker build -t kiwenlau/compile-hadoop .
```

####Download [Hadoop source code](http://archive.apache.org/dist/hadoop/core/)

```
export VERSION=2.7.2
wget http://archive.apache.org/dist/hadoop/core/hadoop-$VERSION/hadoop-$VERSION-src.tar.gz
tar -xzvf hadoop-$VERSION-src.tar.gz
```

####Run Docker container, compile hadoop inside container

```
sudo docker run -v $(pwd)/hadoop-$VERSION-src:/hadoop-$VERSION-src kiwenlau/compile-hadoop /root/compile.sh $VERSION
```

output:

```
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 23:46.056s
[INFO] Finished at: Tue May 31 16:40:53 UTC 2016
[INFO] Final Memory: 210M/915M
[INFO] ------------------------------------------------------------------------


comile hadoop 2.7.2 success!
```

you can find compiled hadoop file in:

```
hadoop-2.3.0-src/hadoop-dist/target/hadoop-2.3.0.tar.gz
```

change the value of VERSION, you can compile other version of Hadoop

####Download compiled Hadoop

```
wget https://github.com/kiwenlau/compile-hadoop/releases/download/2.3.0/hadoop-2.3.0.tar.gz
wget https://github.com/kiwenlau/compile-hadoop/releases/download/2.4.0/hadoop-2.4.0.tar.gz
wget https://github.com/kiwenlau/compile-hadoop/releases/download/2.5.0/hadoop-2.5.0.tar.gz
wget https://github.com/kiwenlau/compile-hadoop/releases/download/2.6.0/hadoop-2.6.0.tar.gz
wget https://github.com/kiwenlau/compile-hadoop/releases/download/2.7.0/hadoop-2.7.0.tar.gz
wget https://github.com/kiwenlau/compile-hadoop/releases/download/2.7.2/hadoop-2.7.2.tar.gz
```

