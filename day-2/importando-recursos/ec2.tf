resource "aws_instance" "test" {
  ami           = "ami-062f7200baf2fa504" # AMI da aula
  instance_type = "t2.micro"
}

resource "aws_security_group" "elb_sg" {
  # (resource arguments)

  # Além do Security Group é necessário criar recursos para as regras (rules) - Referências abaixo
  
  # https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group
  # https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule.html
}

#
# Comandos de import
#   terraform import <resource-type>.<resource-name> <resource-id>
#   terraform import aws_instance.web i-12345678
#   terraform import aws_security_group.elb_sg sg-903004f8
#
