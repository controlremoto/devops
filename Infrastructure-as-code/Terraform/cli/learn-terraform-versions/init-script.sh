#!/bin/bash
# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

sudo echo nameserver 8.8.8.8 >> /etc/resolv.conf
sudo yum update -y
sudo yum install httpd -y
sudo systemctl enable httpd
sudo systemctl start httpd
echo "Hello world! by instance ${instance_name}" > /var/www/html/index.html