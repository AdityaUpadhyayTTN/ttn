FROM ubuntu
MAINTAINER Aditya
RUN apt-get update
RUN apt-get -y install nginx
RUN apt-get -y install apt-utils vim wget curl net-tools -y
RUN rm /etc/nginx/sites-enabled/default
COPY abc.com /etc/nginx/sites-available
RUN ln -s /etc/nginx/sites-available/abc.com /etc/nginx/sites-enabled
EXPOSE 80
CMD [ "nginx", "-g", "daemon off;"  ]

