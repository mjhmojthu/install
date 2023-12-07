`#` Đổi pass root: passwd

	sudo apt update && sudo apt upgrade -y

`#` docker logs

	docker compose down && docker compose up -d && docker compose logs --tail=100 -f
 
# Tạo ram ảo
`#` Lệnh bên dưới sẽ tạo swap có dung lượng 4Gb. Bạn có thể thay count=1024k

	sudo dd if=/dev/zero of=/swapfile bs=1024 count=4096k

`#` Tạo phân vùng swap

	mkswap /swapfile

`#` Kích hoạt swap

	swapon /swapfile

`#` Thiết lập swap tự động được kích hoạt mỗi khi reboot
	
	echo /swapfile none swap defaults 0 0 >> /etc/fstab

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
 
# Để xem dung lượng của từng thư mục trong thư mục hiện tại (root)

	du -h --max-depth=1
