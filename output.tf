output "instance_public_ip" {
  description = "Public IP of ec2 instance"
  value       = aws_instance.my-server.public_ip
}

output "instance_url" {
  description = "The Url to acess nginx server"

  value = "http://${aws_instance.my-server.public_ip}"

}
