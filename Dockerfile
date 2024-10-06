FROM ubuntu:18.04
RUN apt-get update && apt-get install -y lsb-release curl gnupg
#RUN apt-get install lsb-release curl  gpg 
RUN curl -fsSL https://packages.redis.io/gpg | gpg --dearmor -o /usr/share/keyrings/redis-archive-keyring.gpg
RUN chmod 644 /usr/share/keyrings/redis-archive-keyring.gpg && echo "deb [signed-by=/usr/share/keyrings/redis-archive-keyring.gpg] https://packages.redis.io/deb $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/redis.list
RUN apt-get update && apt-get install -y redis
RUN sysctl -w net.core.somaxconn=1024
EXPOSE 6379
CMD ["redis-server"]
