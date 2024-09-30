output "first_tags" {
  description = "Instance tags for first instance"
  value       = aws_instance.ubuntu[0].tags
}


output "private_ip_addressess" {
  description = "values of private ip addresses"
  value       = aws_instance.ubuntu[*].private_dns
}