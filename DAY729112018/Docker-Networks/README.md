### Docker’s networking subsystem is pluggable, using drivers. Several drivers exist by default, and provide core networking functionality

### 1. Command to create networks
`
docker network create <network-name>
`
In our case 
`
docker network create my-net
`
### 2. To view the available networks
`
docker network ls
`
### 3. To remove/delete created network
`
docker network rm my-net
`
### 4. To view / inspect particular network
`
docker network inspect ingress
`

### Types 

#### 1. bridge -- Default 
#### 2. host -- used for swarm services
#### 3. overlay -- Connect multiple docker deamons together and enable swarm services to communicate with each other
#### 4. macvlan -- it allows to assign a MAC address to a container, making it appear as a physical device on your network
#### 5. none -- disable all networking available for swarm services
#### 6. Network plugins -- Third party n/w plugins with docker, available from docker store

### 1. Bridge Networks
Create bridge network
```
docker network create --driver=bridge my-bridge-net
```
--Options are
```
--driver=bridge

```
```
--subnet=172.20.0.0/16

```
```
--ip-range=172.28.5.0/24

```
```
--gateway=172.28.5.254

```
This options are applicable for specific network devices/nodes,Like
```
--aux-address="my-router=192.168.1.5"

```
##### Connect a container to user-defined bridge network
###### Create service 
```
docker create --name my-nginx --network my-bridge-net --publish 8080:80 nginx
```
###### Connecting to bridge network
```
docker network connect my-bridge-net my-nginx
```
###### Disconnect to bridge network
```
docker network disconnect my-bridge-net my-nginx
```


### 2. Overlay Networks
The overlay network driver is a distributed network among multiple docker deamon hosts.

When we initialize or join existing swarm
##### 1.an overlay network called ingress 
which handles control and data traffic related to swarm services.
##### 2.bridge network -- docker_gwbridge
it connects the individual docker daemon to the other daemons participating in the swarm

#### Operations for all overlay networks
##### Create an overlay network
###### Firewall rules -- 
need the following ports open to traffic to and from each Docker host participating on an overlay network:
####### 1. TCP 2377 for cluster management communicaions
####### 2. TCP & UDP 7964 for communications among nodes
####### 3. UDP 4789 for overlay network traffic

##### Create or Join Swarm
Create swarm 
```
docker swarm init
``` 

Join swarm
```
docker swarm join --token SWMTKN-1-1b4ch0ios7cgl6g3627wdf5r110sdeqh7y87m4gayqnkhjn7oy-dmzf5k7dhv25v04bo1oyxemd8 172.16.16.182:2377
``` 
##### Create an overlay network to use with swarm services
```
docker network create -d overlay my-overlay-network
```
##### Check network created or not 
```
docker network ls
```

##### To create an overlay network which can be used by swarm services or standalone containers to communicate with other. Add the --attachable flag
```
docker network create -d overlay --attachable my-attachable-overlay
```

#### Operations for swarm services
##### Publish ports on an overlay network
```use
 -p <port-to-open>:<port-to-open>
```
