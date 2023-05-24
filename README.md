# lookbusy-docker

This project is a dockerized version of the original project **Lookbusy** by Devin https://devin.com/lookbusy/ 

## How to use

### Build the image

Clone this project into your folder, then run

``` shell
docker build . -t lookbusy
```

### Update parameters

You can update the parameters in the file start.sh, refer to the following

``` shell
lookbusy -c 50 # 占用所有 CPU 核心各 50%
lookbusy -c 50 -n 2 # 占用两个 CPU 核心各 50%
lookbusy -c 50-80 -r curve # 占用所有 CPU 核心在 50%-80% 左右浮动
lookbusy -c 0 -m 128MB -M 1000 # 每 1000 毫秒，循环释放并分配 128MB 内存
lookbusy -c 0 -d 1GB -b 1MB -D 10 # 每 10 毫秒，循环进行 1MB 磁盘写入，临时文件不超过 1GB
```

Source: https://51.ruyo.net/18289.html

### Deploy

``` shell
docker run -d --name lookbusy --restart=always -v /PATH/TO/start.sh:/app/start.sh lookbusy
```

