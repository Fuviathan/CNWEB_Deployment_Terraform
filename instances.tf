resource "aws_instance" "cnweb" {
  instance_type = "t1.micro"
  ami           = "ami-0fa377108253bf620"
  security_groups = [
    "allow_ingress", "allow_egress"
  ]
  key_name = aws_key_pair.deployer.id
  root_block_device {
    tags = {
      Name = "cnweb-ebs"
    }
    volume_size = 50
  }
}


