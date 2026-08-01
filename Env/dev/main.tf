module "ec2" {
  source         = "../../modules/ec2"

  name           = "dev"
  ami            = "ami-02b64aa047cb5edf5" # Replace with your desired AMI ID
  env            = "dev"
  instance_type  = "t3.micro"
  instance_count = 1
  subnet_id      = module.aws_vpc.subnet_id
}


module "vpc" {
  source      = "../../modules/vpc"
  env         = "dev"

  cidr_block  = "10.0.0.0/16"   
  subnet_cidr_block = "10.0.1.0/24"
    subnet_availability_zone = "${var.aws_region}a"
}