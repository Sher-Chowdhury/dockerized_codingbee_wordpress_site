# dockerized_codingbee_wordpress_site


useful links:

https://docs.docker.com/compose/wordpress/



To start up the containers, run:

```bash
docker-compose up --detach
```



To do a full rebuild of the above setup, run:

```bash
docker-compose down --timeout 1 --volumes --rmi all
docker-compose up --detach
```
for -rmi, you can replace 'all' with 'local', this will speed things up as it won't delete the mysql image continuousely. 


This deletes all containers, images, and volumes that are linked to the docker-compose file.

## Other useful Docker commands

Tip: in the unlikely event that you have to delete absolutely everything, run:

```bash
docker container stop $(docker container ls --all --quiet)
docker container rm $(docker container ls --all --quiet)
docker image rm $(docker image ls --quiet)
docker volume rm $(docker volume ls --quiet)
docker system prune --all --volumes --force
```

To view the logs of docker container, run:

```bash
docker logs {container_name}
```

To create a bash session inside the wordpress container, do:

```bash
docker container exec -it wordpress bash
```


To test if wordpress site is working, do:

```bash
curl -Lv http://localhost:8000
```


## Reference
[https://stackoverflow.com/questions/50999848/how-to-run-wp-cli-in-docker-compose-yml](https://stackoverflow.com/questions/50999848/how-to-run-wp-cli-in-docker-compose-yml) - needed to use xfs user to get it working. 