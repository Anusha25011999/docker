FROM centos
LABEL name Anusha
#RUN apt  update -y
RUN yum install httpd -y
copy index.html /var/www/html
CMD ["/usr/bin/httpd","-D","FOREGROUND"]


