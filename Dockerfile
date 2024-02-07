FROM CENTOS
LABEL name Anusha
#RUN apt  update -y
RUN cd /etc/yum.repos.d/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN yum install httpd -y
copy index.html /var/www/html
CMD ["/usr/bin/httpd","-D","FOREGROUND"]


