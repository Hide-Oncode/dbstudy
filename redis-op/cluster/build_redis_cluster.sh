docker run -d --name master-node-1 -p 7100:6380 redis:latest
docker run -d --name master-node-2 -p 7101:6380 redis:latest
docker run -d --name master-node-3 -p 7102:6380 redis:latest
docker run -d --name slave-node-1 -p 7103:6380 redis:latest
docker run -d --name slave-node-2 -p 7104:6380 redis:latest
docker run -d --name slave-node-3 -p 7105:6380 redis:latest

docker cp conf/7100.conf  master-node-1:/data
docker cp conf/7101.conf  master-node-2:/data
docker cp conf/7102.conf  master-node-3:/data
docker cp conf/7103.conf  slave-node-1:/data
docker cp conf/7104.conf  slave-node-2:/data
docker cp conf/7105.conf  slave-node-3:/data

docker exec -d master-node-1 redis-server 7100.conf
docker exec -d master-node-2 redis-server 7101.conf
docker exec -d master-node-1 redis-server 7102.conf

docker exec -d slave-node-1 redis-server 7103.conf
docker exec -d slave-node-2 redis-server 7104.conf
docker exec -d slave-node-3 redis-server 7105.conf

