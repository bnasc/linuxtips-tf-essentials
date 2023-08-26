# data "aws_ami" "ubuntu" {
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
#   }

#   owners = ["099720109477"] # Ubuntu
# }

resource "aws_instance" "web" {
  #ami          = "ami-0885b1f6bd170450c" # AMI exemplo - us-east-1
  #ami          = "ami-0136ddddd07f0584f" # AMI eu-west-1
  #ami           = data.aws_ami.ubuntu.id
  ami           = var.image_id
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}

data "aws_ami" "ubuntu-west-2" {
  provider    = aws.west-2
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Ubuntu
}

resource "aws_instance" "web-west-2" {
  provider      = aws.west-2
  ami           = data.aws_ami.ubuntu-west-2.id
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
