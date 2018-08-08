#!/bin/bash
yum update -y
yum install httpd -y
service httpd start
chkconfig httpd on
aws s3 cp s3://acloudguru-tobiasleong-us-s3 /var/www/html --recursive