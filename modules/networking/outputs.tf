output "subnet_public" {
  value = aws_subnet.sbnt_public_1
}
output "subnet_public" {
  value = aws_subnet.sbnt_public_2.id
}
output "subnet_private_1" {
  value = aws_subnet.sbnt_private_1.id
}
output "subnet_private_2" {
  value = aws_subnet.sbnt_private_2.id
}

output "subnet_private_3" {
  value = aws_subnet.sbnt_private_3.id
}
output "subnet_private_4" {
  value = aws_subnet.sbnt_private_4.id
}

output "vpc_id" {
  value = aws_vpc.vpc_globery.id
}
