FROM	centos:latest
MAINTAINER	tanya.gulati@mykaarma.com
RUN	yum install httpd vim -y
COPY	index.html /var/www/html
ADD	test.txt /var/www/html
WORKDIR	/var/www/html
EXPOSE	80
CMD	/usr/sbin/httpd -DFOREGROUND
