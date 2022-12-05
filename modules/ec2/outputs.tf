output "public_ip" {
  description = "Public IP"
  value = aws_instance.globery_bastion.public_ip
}

output "instance_id" {
  description = "ID of globery_bastion instance"
  value = aws_instance.globery_bastion.id
}