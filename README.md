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
This deletes all containers, images, and volumes that are linked to the docker-compose file.

for -rmi, you can replace 'all' with 'local', this will speed things up as it won't delete the mysql image continuousely. 


## Other useful Docker commands

Tip: in the unlikely event that you have to delete absolutely everything, run:

```bash
docker container stop $(docker container ls --all --quiet)
docker container rm $(docker container ls --all --quiet)
docker image rm $(docker image ls --quiet)
docker volume rm $(docker volume ls --quiet)
docker system prune --all --volumes --force
```


To test if wordpress site is working, add the following to your macbook's /etc/hosts file

## Sanity checking

```
127.0.0.1    codingbee.net
```

then do:

```bash
curl -Lv http://codingbee.net:8000
```

### php settings
you can view php settings here:

[http://codingbee.net:8000/phpinfo.php](http://codingbee:8000/phpinfo.php)

To monitor progress, do:


## monitoring + troubleshooting
```bash
docker container logs -f cntr_wp_cli
```
To log into a container to troubleshoot, do:

```bash
docker container exec -it cntr_wp_cli /bin/bash
```


### Manual TODO list
- 
- use wpallimport to import xml payload. Use import template to do this.
- Import/create the elementor template, if that doesn't work then create it. 
- work on the easy TOC widget. 
- install and setup monstainsights
- import elementor templates
- updated admin password
- update guest admin password
- menus created but need to populate them. 
- create one nav-menu widget and then clone it. use the matt lipe widget to create it. 




# need to:
go here:
https://codingbee.net/wp-admin/options-general.php?page=widgetopts_plugin_settings
and set licence key. also enable/disable various parts. Need to enable:
- enable clone widget option
- disable day range
- enable Import & Export Widgets
- remove the phpinfo.php file
- remove the importbuddy.php file. 



## Reference
[https://stackoverflow.com/questions/50999848/how-to-run-wp-cli-in-docker-compose-yml](https://stackoverflow.com/questions/50999848/how-to-run-wp-cli-in-docker-compose-yml) - needed to use xfs user to get it working. 

wp2static.com