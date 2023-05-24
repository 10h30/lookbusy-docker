# lookbusy-docker

This project is a dockerized version of the original project **Lookbusy** by Devin https://devin.com/lookbusy/ 

## How to use

### Build the image

Clone this project into your folder, then run

``` shell
docker build . -t lookbusy
```

### Deploy using Docker Run

``` shell
docker run -d --name lookbusy --restart=always -v ./start.sh:/app/start.sh lookbusy
```


### Deploy using Docker Compose

``` shell
docker compose up -d
```
