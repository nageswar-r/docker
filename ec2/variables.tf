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
  type = map(string)
  default = {
    Name        = "docker-practice"
    Environment = "dev"
  }
}

