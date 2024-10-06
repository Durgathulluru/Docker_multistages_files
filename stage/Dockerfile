FROM ubuntu:18.04
RUN apt update -y && apt install -y  wget lsb-release curl gpg
RUN curl -fsSL https://packages.redis.io/gpg | gpg --dearmor -o /usr/share/keyrings/redis-archive-keyring.gpg
RUN echo "deb [signed-by=/usr/share/keyrings/redis-archive-keyring.gpg] https://packages.redis.io/deb $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/redis.list
RUN apt update -y;\
    apt install -y redis
EXPOSE 6379
CMD ["redis-server"]
#RUN wget -O  https://download.redis.io/redis-stable.tar.gz
#RUN tar -xzvf redis-stable.tar.gz
#RUN cd temp/redis-stable
#    make
   # make install 
#CMD ["redis-server"]
