output "public_subnetids" {
  value = aws_subnet.public_subnets[*].id
}
