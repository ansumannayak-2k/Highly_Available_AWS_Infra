output "web_a_public_ip" {
  value = aws_instance.web_a.public_ip
}

output "web_b_public_ip" {
  value = aws_instance.web_b.public_ip
}
