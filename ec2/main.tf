resource "aws_instance" "test" {
    ami         = local.ami_id
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_tls.id]
    tags = local.ec2_final_tags
    user_data = file("docker_practice.sh")

    root_block_device {
    volume_size = 50
    volume_type = "gp3"
    # EBS volume tags
    tags = "docker-practice"
    }
}

resource "aws_security_group" "allow_tls" {
    name = "terraform_sg_group"
    description = "terraform security group allow all"

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    ingress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }
    tags = local.sg_tags_docker
   
}