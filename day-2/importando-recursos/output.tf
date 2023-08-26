
output "ip_address" {
  value = aws_instance.test.public_ip
}

output "dns_name" {
  value = aws_instance.test.public_dns
}
