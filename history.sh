sudo usermod -aG docker vagrant
docker info


docker build -t myredis:test redis/
docker rmi redis
docker images
docker build -t myredis:test redis/

docker run -p 6379:6379 myredis:test



docker build -t phpredis:test php/
docker run phpredis:test


docker run -t -i phpredis:test /bin/bash
docker run -t -i myredis:test /bin/bash



root@5bb9b86e73c1:/data# redis-server  --help
Usage: ./redis-server [/path/to/redis.conf] [options]
       ./redis-server - (read config from stdin)
       ./redis-server -v or --version
       ./redis-server -h or --help
       ./redis-server --test-memory <megabytes>

Examples:
       ./redis-server (run the server with default conf)
       ./redis-server /etc/redis/6379.conf
       ./redis-server --port 7777
       ./redis-server --port 7777 --slaveof 127.0.0.1 8888
       ./redis-server /etc/myredis.conf --loglevel verbose

Sentinel mode:
       ./redis-server /etc/sentinel.conf --sentinel