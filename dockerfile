
# REMEMBER THAT DOCKER IS JUST ANOTHER MACHINE (not really but kind of)

# FROM <<image_name>>:<<version>>
# FROM <<image_name>> // default to latest
# FROM <<image_name>> // LATEST to latest (don't us this in prod) -> no control over version number
FROM node:current-alpine3.18


# COPY . /var/task specific path for applications in lambda
# COPY <<FROM(host)>> <<TO(container)>>
COPY index.js index.js
COPY package.json package.json

# RUN <<WHATEVER YOUR COMMAND IS>> (CAN DO THIS AS MANY TIMES AS YOU WANT)
RUN npm install


# CMD [<<base command>>,...arguments]
CMD ["node","index.js"]

# TO BUILD THIS DOCKER FILE DO $ docker build .


# IF DEPLOYING APPLICATION THAT REQUIRES NETWORKING (EITHER IN DOCKER FILE SPECIFY PORT EXPOSED OR DEFINE THAT IN DOCKER RUN)


# COMMANDS TO KNOW FROM DOCKER
# docker build . << build this image in this directory>>
# docker run -p <<host_port>>:<<container_port>> image_name or image_id or hash
# docker kill <<container id>>
# docker ps  (lists containers that are currently running at this instant)
# docker images (lists images you just built)

# HOMEWORK
# deploy your python application in dokcer and make it run locally via docker


