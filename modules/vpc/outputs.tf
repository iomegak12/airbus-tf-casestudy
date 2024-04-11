output "public_subnetids" {
  value = aws_subnet.public_subnets[*].id
}

output "vpc_id" {
  value = aws_vpc.main.id
}
