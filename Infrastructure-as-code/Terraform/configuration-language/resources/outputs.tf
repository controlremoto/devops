# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

output "domain-name" {
  value = aws_instance.web.public_dns
}

output "instance_public_ip" {
  value = aws_instance.web.public_ip
}

output "application-url" {
  value = "${aws_instance.web.public_dns}/index.php"
}
