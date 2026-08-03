module "ec2" {
  source         = "../../modules/ec2"

  name           = "dev"
  ami            = "ami-02b64aa047cb5edf5" 
  env            = "dev"
  instance_type  = "t3.micro"
<<<<<<< HEAD
  instance_count = 3
=======
  instance_count = 2
>>>>>>> ce0a3df57fcf48919785e540eadf60676f66fe46
  subnet_id      = module.vpc.subnet_id
}


module "vpc" {
  source      = "../../modules/vpc"
  env         = "dev"

  cidr_block  = "10.0.0.0/16"   
  subnet_cidr_block = "10.0.1.0/24"
  subnet_availability_zone = "${var.aws_region}a"
}
