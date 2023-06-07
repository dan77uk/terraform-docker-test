output "first_instance_ip" {
  value = aws_instance.first_instance.public_ip
}