##Compile Hadoop in Docker container

####To comile [Hadoop](http://archive.apache.org/dist/hadoop/core/), just run with your prefered VERSION

```
sudo ./run.sh [VERSION]
```

For example, to compile Hadoop 2.3.0:

```
sudo ./run.sh 2.3.0
```


####The **run.sh** script will:

1. Build **kiwenlau/compile-hadoop** image

2. Start a container, **compile.sh** will execute within the container to compile Hadoop.

3. You will get compiled Hadoop in **compile-hadoop/binary** directory


####To download compiled Hadoop:

```
wget https://github.com/kiwenlau/compile-hadoop/releases/download/2.3.0/hadoop-2.3.0.tar.gz
wget https://github.com/kiwenlau/compile-hadoop/releases/download/2.4.0/hadoop-2.4.0.tar.gz
wget https://github.com/kiwenlau/compile-hadoop/releases/download/2.5.0/hadoop-2.5.0.tar.gz
wget https://github.com/kiwenlau/compile-hadoop/releases/download/2.6.0/hadoop-2.6.0.tar.gz
wget https://github.com/kiwenlau/compile-hadoop/releases/download/2.7.0/hadoop-2.7.0.tar.gz
wget https://github.com/kiwenlau/compile-hadoop/releases/download/2.7.2/hadoop-2.7.2.tar.gz
```