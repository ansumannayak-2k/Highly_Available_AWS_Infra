resource "aws_instance" "web_a" {
  ami           = "ami-0f918f7e67a3323f0" 
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_a.id
  key_name      = var.key_name
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  tags = { Name = "web-a" }
}

resource "aws_instance" "web_b" {
  ami           = "ami-0f918f7e67a3323f0" 
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_b.id
  key_name      = var.key_name
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  tags = { Name = "web-b" }
}
