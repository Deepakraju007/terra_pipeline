module "ec2_instance" {
  source = "../../modules/ec2_instance"

  instance_name = "dev"
  ami_id        = "ami-02b64aa047cb5edf5" # Replace with your desired AMI ID
  instance_type = "t2.micro"
  
}


module "aws_vpc" {
  source      = "../../modules/aws_vpc"
  env         = "dev"

  cidr_block  = "10.0.0.0/16"   
  subnet_cidr_block = "10.0.1.0/24"
    subnet_availability_zone = "${var.aws_region}a"
}