locals{
    ami_id = data.aws_ami.joindevops.id
    ec2_final_tags = var.ec2_tags
    sg_tags_docker = var.sg_tags
}
