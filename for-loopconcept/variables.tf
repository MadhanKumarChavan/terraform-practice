variable "instance_names" {
    # for each loop has key and value
    type  = map
    default = {

        db = "t3.micro"
        backend = "t2.micro"
        frontend = "t2.micro"

    }
}


variable "common_tags" {
    default = {
        Project = "Expense"
        Environment = "Dev"
        Terraform = "true"
    }
}