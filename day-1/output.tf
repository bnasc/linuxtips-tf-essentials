output "ip_address" {
  value = aws_instance.web.public_ip
}

output "dns_name" {
  value = aws_instance.web.public_dns
}

output "ip_address-west-2" {
  value = aws_instance.web-west-2.public_ip
}

output "dns_name-west-2" {
  value = aws_instance.web-west-2.public_dns
}
