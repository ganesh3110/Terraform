provider "aws" {
    region =  "us-west-2"
    profile = "configs"
}
 

resource "aws_instance" "this_aws_instance" {
    ami = "ami-0eb5115914ccc4bc2"
    vpc_security_group_ids = ["sg-032e1a4a1685a03be"]
    key_name = "delete_oregon_anup"
    instance_type = "t2.micro"
    count = 2
}   

resource "aws_iam_user" "this_aws_iam_user" { 
    count = length(var.users_list)
    name = var.users_list[count.index]
}  
resource "aws_iam_user" "this_aws_iam_user_2" { 
    name = "neo.${count.index}"
    count = 3
}  


variable "users_list" {
    default = ["virat" , "rohit" , "raina"]
}
