# 1a forma de declarar outpus no módulo filho
output "ip_address" {
  value = "${aws_instance.web[*].public_ip}"
}

# 2a forma de declarar outpus no módulo filho
output "dns_name" {
  value = [aws_instance.web.*.public_dns]
}