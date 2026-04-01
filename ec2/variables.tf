variable "ec2_tags" {
    type = map
    default = {
        Name = "variables-demo"
        Project = "roboshop"
        Terraform = "true"
        Environment = "dev"
    }
}

variable "sg_tags" {

    default = "docker-practice"  
    type = string
}