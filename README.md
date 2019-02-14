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

# php settings
you can view php settings here:

[http://localhost:8000/phpinfo.php](http://localhost:8000/phpinfo.php)

To monitor progress, do:

```bash
docker container logs -f cntr_wp_cli
```
To log into a container to troubleshoot, do:

```bash
docker container exec -it cntr_wp_cli /bin/bash
```

Also can run the following for troubleshooting:

```bash
curl -Lv http://localhost:8000
```

### Manual TODO list
- Import/create the elementor template
- install and setup monstainsights
- import elementor templates
- updated admin password
- update guest admin password
- menus created but need to populate them. 
- create one nav-menu widget and then clone it. use the matt lipe widget to create it. 
- 




# need to:
go here:
https://codingbee.net/wp-admin/options-general.php?page=widgetopts_plugin_settings
and set licence key. also enable/disable various parts. Need to enable:
- enable clone widget option
- disable day range
- enable Import & Export Widgets



## Reference
[https://stackoverflow.com/questions/50999848/how-to-run-wp-cli-in-docker-compose-yml](https://stackoverflow.com/questions/50999848/how-to-run-wp-cli-in-docker-compose-yml) - needed to use xfs user to get it working. 

wp2static.com