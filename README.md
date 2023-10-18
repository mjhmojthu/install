`#` Đổi pass root: passwd

	sudo apt update && sudo apt upgrade -y
 
# Install Docker Engine on Ubuntu
	
`#` This example downloads the script from get.docker.com and runs it to install the latest stable release of Docker on Linux:

 	curl -fsSL https://get.docker.com -o get-docker.sh && sudo sh get-docker.sh

`#` Verify that Docker Engine is installed correctly by running the hello-world image.
	
	sudo docker run hello-world

`#` Install Docker Compose plugin
`#` Update the apt package index, and install the latest version of Docker Compose
 
 	sudo apt-get update && sudo apt-get install docker-compose-plugin
 
`#` Verify that Docker Compose is installed correctly by checking the version.

 	docker compose version

`#`	XOÁ docker image, liệt kê tất cả: docker images 

	docker rmi -f <your-image-id> <your-image-id> ...
 
`#` Viết ID hình ảnh trong lệnh, theo sau là dấu cách giữa chúng.

# Cách tạo ram ảo
`#` Lệnh bên dưới sẽ tạo swap có dung lượng 4Gb. Bạn có thể thay count=1024k

	sudo dd if=/dev/zero of=/swapfile bs=1024 count=4096k

`#` Tạo phân vùng swap

	mkswap /swapfile

`#` Kích hoạt swap

	swapon /swapfile

`#` Thiết lập swap tự động được kích hoạt mỗi khi reboot
	
	echo /swapfile none swap defaults 0 0 >> /etc/fstab

 --------------------------------------------------------------
- Hetzner

	sudo apt-get install htop -y
	
	sudo apt install git -y
	
	sudo apt install screen -y
	
	apt install apparmor -y

- Check port using

	sudo lsof -i -P -n | grep LISTEN
	
- Change language Netcup

	sudo update-locale LANG=en_US.UTF-8
	
- Copy toàn bộ nội dung qua thư mục hiện tại

	cp -RT ~/.shardeum/ .
	
# Download damomine

	wget https://github.com/damomine/aleominer/releases/download/v2.3.1/damominer_linux_v2.3.1.tar

	tar -xvf damominer_*.tar ; chmod +x damominer
	
- Ngắt screen: screen -S (id_màn_hình) -X quit

	XOÁ docker image
	liệt kê tất cả: docker images 
	
	docker rmi -f <your-image-id> <your-image-id> ...
	
- Viết ID hình ảnh trong lệnh, theo sau là dấu cách giữa chúng.

-	sudo lsof -i -P -n | grep LISTEN

- Install NodeJs
    
    curl -sL https://deb.nodesource.com/setup_20.x | sudo -E bash -

    sudo apt-get install -y nodejs

`#` Fortmat ổ cứng

	sudo mkfs.ext4 /dev/sda

`#` Tự động mount khi restart pc. Mở tệp /etc/fstab bằng trình soạn thảo văn bản, ví dụ sudo nano:

	sudo nano /etc/fstab

	Thêm dòng sau vào cuối tệp /etc/fstab để chỉ định việc mount phân vùng /dev/nvme0n1p1 vào thư mục /mnt/nvme0n1p1:

	/dev/sda /mnt/sda  ext4  defaults  0  2


