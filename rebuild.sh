docker-compose down --timeout 1 --volumes --rmi local
docker build . -f Dockerfile_wp_cli --tag img_wp_cli
docker build . -f Dockerfile_wp --tag img_wp
docker-compose up --detach
