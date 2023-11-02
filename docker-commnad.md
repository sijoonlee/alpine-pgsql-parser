
sudo docker build -t test-plat2 --network host .

sudo docker run --rm -it --entrypoint bash test-plat2

sudo docker system df

sudo docker system prune
