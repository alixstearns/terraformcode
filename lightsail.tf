resource "aws_resource "aws_lightsail_instance" "custom" {
  name              = "alixgit"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_1_0"
  user_data         = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>We are on our ways for six figures. Do not panic</h1>' | sudo tee /var/www/html/index.html"
}




output "lightsail_instance_ip" {
  value = aws_lightsail_instance.example.public_ip_address

}