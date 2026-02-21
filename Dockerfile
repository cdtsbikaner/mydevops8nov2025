FROM rockylinux:9.3.20231119

LABEL osinfo="Rockylinux"

LABEL author="Mahinder Singh"

MAINTAINER "EKAMJEET SINGH | ekam@gmail.com"

RUN dnf install  nginx  -y

RUN  echo "<h1>  Hello this is test site</h1> "  >  /usr/share/nginx/html/index.html

#COPY ./index.html   /usr/share/nginx/html/index.html

#VOLUME ["/usr/share/ngin/html"]

#COPY  ./dockerfilenginx   /root/

VOLUME /usr/share/nginx/html

WORKDIR  /usr/share/nginx/html

EXPOSE 80 443 8080

CMD ["/usr/sbin/nginx","-g","daemon off;"] 

