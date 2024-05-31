variable "instance_names" {
    default = ["db","backend","frontend"]
    type  = list
  
}


variable "common_tags" {
    default = {
        Project = "Expense"
        Environment = "Dev"
        Terraform = "true"
    }
}