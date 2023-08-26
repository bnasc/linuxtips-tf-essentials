module "servers" {
  source  = "./servers"
  servers = 1
  # providers = {
  #   aws = aws.west-2
  # }
}

# resource "aws_route53_record" "server" {
#   zone_id = "zone-id"
#   name    = "server"
#   type    = "A"
#   ttl     = "300"
#   records = [module.servers.ip_address[0]]
# }
