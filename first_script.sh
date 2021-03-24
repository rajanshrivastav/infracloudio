#!/bin/bash

#cloning the private repo.
git clone https://github.com/rajanshrivastav/mypvtrepo.git
echo "Hello Rajan" > abc.txt
git add .
git commit -am "First commit"
git push --set-upstream origin master
git push

#pulling docker image
docker pull infracloudio/csvserver:latest
docker pull prom/prometheus:v2.22.0

#running docker container
docker run -itd -p 9393:9393 --name infracloudio -e CSVSERVER_BORDER=Orange infracloudio/csvserver:latest 

bash gencsv.sh

docker -exec -it infracloudio sh -c 'ps aux | grep infracloudio'