`#` Đổi pass root: passwd

	sudo apt update && sudo apt upgrade -y

`#` docker logs

	docker compose down && docker compose up -d && docker compose logs --tail=100 -f

`#` Cài docker
 	
  	curl -fsSL https://get.docker.com -o get-docker.sh && sudo sh get-docker.sh

`#` Xóa tất cả container có trạng thái Exited:

   	docker rm $(docker ps -a --filter "status=exited" -q)

`#` Xóa tất cả images có trạng thái <<NONE>>

    	docker images --filter "dangling=true" -q | xargs --no-run-if-empty docker rmi -f


 
# Tạo ram ảo
`#` Lệnh bên dưới sẽ tạo swap có dung lượng 4Gb. Bạn có thể thay count=1024k

	sudo dd if=/dev/zero of=/swapfile bs=1024 count=4096k

`#` Tạo phân vùng swap

	mkswap /swapfile

`#` Kích hoạt swap

	swapon /swapfile

`#` Thiết lập swap tự động được kích hoạt mỗi khi reboot
	
	echo /swapfile none swap defaults 0 0 >> /etc/fstab

 `#` Tắt ram ảo 

 	swapoff -a

 `#` Sau đó vào file /etc/fstab xóa hết các dòng "mount swap" tìm thấy ở bên trên

  	nano /etc/fstab
   
# Kiểm tra tốc độ ghi ổ cứng

	sudo hdparm -t /dev/sda*

 
# Giải nén

	tar -xvf
 
# Hetzner

	sudo apt-get install htop -y
	
	sudo apt install git -y
	
	sudo apt install screen -y
	
	apt install apparmor -y
	
- Change language Netcup

	sudo update-locale LANG=en_US.UTF-8
	
- Copy toàn bộ nội dung qua thư mục hiện tại

	cp -RT ~/.shardeum/ .
	
# Ngắt screen: 

	screen -S (id_màn_hình) -X quit
	
# Check port running

	sudo lsof -i -P -n | grep LISTEN

# Install NodeJs
    
    curl -sL https://deb.nodesource.com/setup_20.x | sudo -E bash -

    sudo apt-get install -y nodejs
# Sao chép tất cả nội dung bên trong của thư mục gốc mà không bao gồm thư mục con:

	cp -r /root/.local/share/namada/* /mnt/sda/namada/

# Fortmat ổ cứng và mount
`#` Xem danh sách disk

	lsblk
`#` Fortmat 

	sudo mkfs.ext4 /dev/sda

`#` Mount

  	sudo mount /dev/sda /mnt/sda

`#` Tự động mount khi restart pc. Mở tệp /etc/fstab bằng trình soạn thảo văn bản, ví dụ sudo nano:

	sudo nano /etc/fstab

`#` Thêm dòng sau vào cuối tệp /etc/fstab để chỉ định việc mount phân vùng /dev/nvme0n1p1 vào thư mục /mnt/nvme0n1p1:

	/dev/sda /mnt/sda  ext4  defaults  0  2
# Install Go

	VERSION=1.20.5
	wget -O go.tar.gz https://go.dev/dl/go$VERSION.linux-amd64.tar.gz
	sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go.tar.gz && rm go.tar.gz
 
	echo 'export GOROOT=/usr/local/go' >> $HOME/.bash_profile
	echo 'export GOPATH=$HOME/go' >> $HOME/.bash_profile
	echo 'export GO111MODULE=on' >> $HOME/.bash_profile
	echo 'export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin' >> $HOME/.bash_profile && . $HOME/.bash_profile
 
	go version

`#` Gỡ Go
	
	which go – Xác định vị trí nhị phân của Go
	rm -rf /***/***/go – Xóa thư mục Go trên which go
	nano ~/.profile – Chỉnh sửa tệp hồ sơ
	source ~/.profile – Tải lại hồ sơ
 
 	//echo $GOROOT
	//sudo rm -rf /usr/local/go

 
# Để xem dung lượng của từng thư mục trong thư mục hiện tại (root)

	du -h --max-depth=1

# Tăng giới hạn số lượng file mở cùng một lúc bằng cách sửa đổi cấu hình kernel. Bạn có thể thực hiện bằng cách sửa đổi tệp và thêm các cấu hình như sau:

	nano /etc/sysctl.conf
 
	fs.file-max = 666665535

# a. Thiết lập proxy tạm thời

	export http_proxy=http://<proxy_ip>:<proxy_port>
	export https_proxy=http://<proxy_ip>:<proxy_port>

`#` b. Thiết lập proxy vĩnh viễn

	http_proxy=http://<proxy_ip>:<proxy_port>
	https_proxy=http://<proxy_ip>:<proxy_port>

 	source ~/.bashrc

