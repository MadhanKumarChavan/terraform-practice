# resource <resource-type> <resource-name>
resource "aws_instance" "db" {

    ami = "ami-090252cbe067a9e58"
    
    instance_type = var.instance_type == "t2.micro"
    instance_name = var.instance_name == "db" ? "t2.micro" : "t3.micro"

   
    }

