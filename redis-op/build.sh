docker run -p 7379:6379 --name myredis --privileged=true -v /root/redis/redis/conf:/etc/redis/redis.conf -v /root/redis/data:/data -d redis:6.0.8 redis-server /etc/redis/redis.conf
