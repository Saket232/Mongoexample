
FROM gitpod/workspace-full



RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4
RUN echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.0.list
RUN apt-get update \
 && apt-get install -y mongodb-org \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
RUN mkdir -p /data/db \
 && sudo chown gitpod:gitpod -R /data/db

USER gitpod
