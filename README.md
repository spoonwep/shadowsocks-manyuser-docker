# shadowsocks-manyuser-docker
A Dockerfile that installs the latest shadowsocks-manyuser and configures automatically.It only takes 3 minutes!

# Installation and Usage
### I want to build image by myself（easiest and recommended way）

1.Clone this repository
```
$ git clone https://github.com/spoonwep/shadowsocks-manyuser-docker.git
```

2.Get into the directory
```
$ cd shadowsocks-manyuser-docker
```

3.Modify `Config.py`

4.Build the image
```
$ docker build -t spoonwep/shadowsocks-manyuser-docker
```

### I don't want to build image by myself

1.Pull the latest image from Docker registry:
```
$ docker pull spoonwep/shadowsocks-manyuser-docker
```

2.Create a file called `Config.py`,the content of this file could be found HERE

3.Run a container:
```
$ docker run -i -t --name ss spoonwep/shadowsocks-manyuser-docker /bin/bash
```

4.Copy your `Config.py` to the container:
```
$ docker cp Config.py ss:/shadowsocks/Config.py
```

5.Attach into the container
```
$ docker attach ss
```

6.Start supervisor
```
$ /usr/local/bin/supervisord
```

7.Detach container
```
Ctrl + p,Ctrl + q
```

# BUG
export ports automatically

# Licence
MIT