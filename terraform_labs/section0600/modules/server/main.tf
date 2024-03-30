resource "aws_instance" "web" {
  ami                    = var.ami
  instance_type          = var.size
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.security_groups
  public_ip = var.public_ip

  tags = {
    "Name"        = "Server from Module"
    "Environment" = "Training"
  }
}