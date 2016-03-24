# shadowsocks-manyuser-docker
A Dockerfile that installs the latest shadowsocks-manyuser and configures automatically.It only takes 3 minutes!

# Installation and Usage
### I want to build image by myself（easiest and recommended way）

Clone this repository
`git clone https://github.com/spoonwep/shadowsocks-manyuser-docker.git`

Get into the directory
`cd shadowsocks-manyuser-docker`

Modify `Config.py`

Build the image
`docker build -t spoonwep/shadowsocks-manyuser-docker`

### I don't want to build image by myself

Pull the latest image from Docker registry:
`docker pull spoonwep/shadowsocks-manyuser-docker`

Create a file called `Config.py`,the content of this file could be found HERE

Run a container:
`docker run -i -t --name ss spoonwep/shadowsocks-manyuser-docker /bin/bash`

Copy your `Config.py` to the container:
`docker cp Config.py ss:/shadowsocks/Config.py`

Attach into the container
`docker attach ss`

Start supervisor
`/usr/local/bin/supervisord`

Detach container
`Ctrl + p,Ctrl + q`

# BUG
export ports automatically

# Licence
MIT