#1. command line
#2. tfvars
#3. ENV variable
#4. variable default value
variable "image_id" {
  type        = string #optional
  default     = "ami-090252cbe067a9e58" #optional
  description = "RHEL-9 AMI ID" #optional
}

variable "instance_type" {
    default = "t3.micro"
   
}
variable "instance_name" {
    default = "db"
   
}