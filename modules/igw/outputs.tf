output "aws_vpc" {
    value = aws_vpc.liengevpc.id 
}

output "ec2_subnets" {
    value = module.ec2-instances.subnets 
    }

output "ec2_sg" {
  value = module.ec2-instances.sg
}

output "ec2_ami_id" {
  value = module.ec2-instances.ami_id
} 

