docker-compose down --timeout 1 --volumes --rmi local
docker build . -f Dockerfile_wordpress --tag img_wpcli
docker-compose up --detach
