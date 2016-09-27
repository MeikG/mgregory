FROM meik/local-web-server
MAINTAINER Mike Gregory <mike@mgregory.me>

COPY . /data
WORKDIR /data

EXPOSE 80
CMD ws --verbose -p 80 --spa index.html