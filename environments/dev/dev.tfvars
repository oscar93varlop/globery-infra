region = "us-east-1"
env = "dev" 
project = "globery"
cidr_block = "10.1.0.0/16"
cidr_block_sbnt_public_1 = "10.1.1.0/24"
cidr_block_sbnt_private_1 =  "10.1.3.0/24"
cidr_block_sbnt_private_2 = "10.1.4.0/24"
cidr_block_sbnt_public_2   = "10.1.2.0/24"
cidr_block_sbnt_private_3 =  "10.1.5.0/24"
cidr_block_sbnt_private_4 =  "10.1.6.0/24"
#-----vars route53.tf----------------
domain_name = "globery.dev"
#-----vars security.tf----------------
name_sg_runner = "sg-ec2-ruuner-gh-actions" 
description_sg_runner = "sg-ec2-ruuner-gh-actions" 
ingress_sg_runner = "test"