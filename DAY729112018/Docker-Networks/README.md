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

