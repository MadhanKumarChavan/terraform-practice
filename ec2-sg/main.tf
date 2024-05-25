resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow TLS inbound traffic and all outbound traffic"
  
  tags = {
    Name = "allow_ssh"
    created-by = "madhan"
    env = "dev"
    project = "practice"
  }

ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]

  }

 egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }
}
resource "aws_instance" "first-project" {
  
  ami           =  "ami-090252cbe067a9e58"
 vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  instance_type = "t2.micro"


   tags = {
    Name = "first-project"
    created-by = "madhan"
    env = "dev"
    project = "practice"
  }
}


