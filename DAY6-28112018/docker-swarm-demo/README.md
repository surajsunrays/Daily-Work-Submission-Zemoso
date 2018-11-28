### How to Use the file

## 1. Use following command to start docker swarm
```
docker swarm init --advertise-addr=<ip-of-machine-for-swarm>
```

## 2. start the services
```
docker stack deploy --compose-file docker-compose.yml demoapp
```

## 3. Check the service 
```
docker service ls
```

## 4. Scale up the replicas 
```
docker service scale <service-name-here>=<no-of-replicas>
```
eg :
```
docker service scale demoapp_demo-mysql=2
```

## 5. to remove the service 
```
docker service rm demoapp_demo-mysql
```

## 6. To stop docker swarm
```
docker swarm leave --force
```
