FROM centos
LABEL name Anusha
#RUN apt  update -y
RUN yum install apache2 -y
copy index.html /var/www/html
CMD ["/usr/sbin/apachectl","-D","FOREGROUND"]


