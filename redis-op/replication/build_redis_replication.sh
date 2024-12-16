docker run -d --name master -p 7000:6380 redis:latest
docker run -d --name slave1 -p 7001:6380 redis:latest
docker run -d --name slave2 -p 7002:6380 redis:latest

docker cp redis.master.conf master:/data
docker cp redis.slave.conf slave1:/data
docker cp redis.slave.conf slave2:/data

docker exec -d master redis-server redis.master.conf
docker exec -d slave1 redis-server redis.slave.conf
docker exec -d slave2 redis-server redis.slave.conf


