output "instance_public_ip" {
  description = "The public ip of the instance"
  value = aws_instance.test.public_ip
}