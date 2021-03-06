# -------------------------------------------------------------------
# Minimal dockerfile from alpine base
#
# Instructions:
# =============
# 1. Create an empty directory and copy this file into it.
#
# 2. Create image with: 
#	docker build --tag timeoff:latest .
#
# 3. Run with: 
#	docker run -d -p 3000:3000 --name alpine_timeoff timeoff
#
# 4. Login to running container (to update config (vi config/app.json): 
#	docker exec -ti --user root alpine_timeoff /bin/sh
# --------------------------------------------------------------------
FROM alpine:3.8

EXPOSE 3000


RUN apk add --no-cache \
    git \
    make \
    nodejs npm \
    python \
    vim
 
WORKDIR /app
WORKDIR /app/timeoff-management
COPY . .

RUN npm install

RUN npm install mysql

CMD npm start

