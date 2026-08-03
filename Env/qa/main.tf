module "vpc" {
  source      = "../../modules/vpc"
  env         = "qa"

  cidr_block  = "11.0.0.0/16"   
  subnet_cidr_block = "11.0.1.0/24"
  subnet_availability_zone = "${var.aws_region}a"
}

module "ec2" {
  source      = "../../modules/ec2"
  env         = "qa"

  instance_count = 1
  name           = "qa-ec2"
  instance_type  = "t2.micro"
  ami            = "ami-02b64aa047cb5edf5" # Example AMI ID for Amazon Linux 2
  subnet_id      = module.vpc.subnet_id
}