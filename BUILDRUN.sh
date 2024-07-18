cd $WORKSPACE

docker build -t anujimage .

docker stop $(docker ps -q) && docker rm $(docker ps -a -q) || true

docker run -d -p 80:80 anujimage