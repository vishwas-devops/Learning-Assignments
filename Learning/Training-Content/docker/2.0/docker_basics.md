## Basic

- Docker Architecture
	- Docker Engine
	- Docker Daemon
	- Docker Client

>***Ref Link 1*** : [Docker Architecture](https://www.aquasec.com/wiki/display/containers/Docker+Architecture)

>***Ref Link 2*** : [Docker Architecture](https://docs.docker.com/engine/docker-overview/)

- Docker Comparison
	- vs Virtual machine
	- vs LXCs
	- Docker CE vs EE

>***Ref Link*** : [vs VM](https://stackoverflow.com/questions/16047306/how-is-docker-different-from-a-virtual-machine)

>***Ref Link*** : [vs LXCs](https://docs.docker.com/engine/faq/#what-does-docker-technology-add-to-just-plain-lxc)

>***Ref Link*** : [CE vs EE](https://docs.docker.com/ee/supported-platforms/#docker-ee-tiers)


***
### Docker CLI

| Image 	| Lifecycle 	| Operation 	| Registry 	| Monitoring	|
|   :-:      	|     :-:     	|    :-: 	|     :-:  	|	:-:	|
| build 	| create  	| attach	| login	  	| ps		|
| commit	| kill 		| cp		| logout  	| logs		|
| history 	| pause  	| diff		| pull  	| port		|
| inspect	| restart	| events	| push  	| top		|
| load  	| rm  		| exec      	|   		| stats		|
| rmi	  	| start  	| export  	|   		|		|
| save 		| stop  	| history  	|   		|		|
| search  	| unpause  	| import  	|   		|		|
| tag  		|   		| info  	|   		|		|
| 	  	|   		| inspect  	|   		|		|
|   		|   		| logs  	|   		|		|
|   		|   		| rename  	|  	 	|		|
|   		|   		| run  		|   		|		|
|   		|   		| update  	|   		|		|

***Ref Link*** : [Docker CLI](https://docs.docker.com/engine/reference/commandline/cli/)


***
### Port Mapping and Linking
- Expose
- Publish Ports (-P, -p)
- Restricting Access on published ports
- Linking Containers

>***Ref Link*** : [Port Map](https://docs.docker.com/engine/reference/commandline/run/#publish-or-expose-port--p---expose)

>***Ref Link*** : [Expose vs Publish](https://stackoverflow.com/questions/22111060/what-is-the-difference-between-expose-and-publish-in-docker)

>***Ref Link*** : [Link](https://docs.docker.com/network/links/)


***
### Volume Mounting
- Bind Mounts
- Docker Volumes
- Tmpfs Mounts

>***Ref Link*** : [Bind](https://docs.docker.com/storage/bind-mounts/)

>***Ref Link*** : [Volume](https://docs.docker.com/storage/volumes/)

>***Ref Link*** : [Tmpfs](https://docs.docker.com/storage/tmpfs/)


*** 
### Dockerfile

- Creating Dockerfile
- Starting with Nginx Dockerfile 
- Dockerfile for SpringHibernateApp
- Using Multistage Builds
- Dockerfile Best Practices
- Docker Image Scanning
- Reducing Dockerfile size/layers

| BUILD 	| RUN 		| 
|   :-:      	|     :-:	| 
| FROM  	| CMD		|
| MAINTAINER 	| ENV 		|
| COPY 		| EXPOSE 	|
| ADD 		| VOLUME 	|
| RUN 		| ENTRYPOINT 	|
| WORKDIR 	|  		|
| USER		|  		|
| FROM 		|  		|

>***Ref Link*** : [Dockerfile Instructions](https://takacsmark.com/dockerfile-tutorial-by-example-dockerfile-best-practices-2018/#dockerfile-key-instructions-best-practices)

>***Ref Link*** : [Nginx Dockerfile](https://rominirani.com/docker-tutorial-series-writing-a-dockerfile-ce5746617cd)

>***Ref Link*** : [SpringHIbernateApp](https://github.com/OpsTree/ContinuousIntegration/tree/master/Spring3HibernateApp)

>***Ref Link*** : [Multistage](https://docs.docker.com/develop/develop-images/multistage-build/)

>***Ref Link1*** : [Dockerfile Best Practices](https://docs.docker.com/develop/develop-images/dockerfile_best-practices)

>***Ref Link2*** : [Dockerfile Best Practices](https://takacsmark.com/dockerfile-tutorial-by-example-dockerfile-best-practices-2018)


*** 
### Docker Compose

- Docker compose file 
- Using Custom Network
- Using Docker Volumes

| build	| image	| container_name	| environment	| depends_on	|
| - | - | - | - | - |

| dns	| tmpfs	| entrypoint	| env_file	| environment	| expose	|
| - | - | - | - | - | - |

| labels	| logging	| ports	| network_mode	| external_links	| 
| - | - | - | - | - |
 
| aliases	| volumes	| ulimits	|
| - | - | - |

>***Ref Link*** : [Docker Compose CLI](https://docs.docker.com/compose/reference/overview/)

>***Ref Link*** : [Docker Compose FIle](https://docs.docker.com/compose/compose-file/)

>***Ref Link*** : [Docker Compose Networking](https://docs.docker.com/compose/networking/)


***
