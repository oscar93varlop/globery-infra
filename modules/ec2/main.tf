#instancia para el runner
resource "aws_instance" "ec2" {
  ami                    = var.amis
  instance_type          = var.type_instance
  subnet_id              = var.subnet_public
  vpc_security_group_ids = [var.sg-ec2]
  tags = {
    Name = "EC2-${var.env}-${var.project}"
  }
}
