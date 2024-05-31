
resource "aws_instance" "expense" {
    count = length(var.instance_names)

    ami = data.aws_ami.ami_id.id
    vpc_security_group_ids = ["sg-0fea5e49e962e81c9"]
    instance_type = var.instance_names[count.index] == "db" ? "t3.micro" : "t2.micro"
    tags = merge(
        var.common_tags,
        {
            Name = var.instance_names[count.index]
            Module = var.instance_names[count.index]
        }
    )
}