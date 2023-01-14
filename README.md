	Install Docker Engine on Ubuntu

This example downloads the script from get.docker.com and runs it to install the latest stable release of Docker on Linux:

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

Verify that Docker Engine is installed correctly by running the hello-world image.
$ sudo docker run hello-world

	Install Docker Compose plugin
Update the apt package index, and install the latest version of Docker Compose:
Or, if using a different distro, use the equivalent package manager instructions.
 
 sudo apt-get update
 sudo apt-get install docker-compose-plugin
 
 Verify that Docker Compose is installed correctly by checking the version.
 docker compose version

	XOÁ docker image
	liệt kê tất cả: docker images 
	docker rmi -f <your-image-id> <your-image-id> ...
Viết ID hình ảnh trong lệnh, theo sau là dấu cách giữa chúng.
