##Compile Hadoop in Docker container

To comile [Hadoop](http://archive.apache.org/dist/hadoop/core/), just run with your prefered VERSION

```
sudo ./run.sh [VERSION]
```

For example, to compile Hadoop 2.3.0:

```
sudo ./run.sh 2.3.0
```

The **run.sh** script will:

1. Build **kiwenlau/compile-hadoop** image

2. Start a container based on  **kiwenlau/compile-hadoop** image, **compile.sh** will execute within the container to compile Hadoop.

3. You will get compiled Hadoop in **compile-hadoop/binary** directory