FROM redislabs/rebloom:latest
RUN mkdir -p /usr/share/man/man1
RUN apt-get update && apt-get install openjdk-8-jdk-headless curl -y
RUN apt-get autoremove -y
ENTRYPOINT redis-server --daemonize yes --loadmodule /usr/lib/redis/modules/redisbloom.so && bash