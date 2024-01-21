

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  default     = "ami-0c7217cdde317cfec"
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  default     = "t2.micro"
}



#### VPC variables #####

variable "vpc_cidr" {
  type    = string
  default = "172.32.0.0/16"
}

variable "public_subnets" {
  description = "A list of public subnet CIDR blocks"
  type        = list(string)
  default     = ["172.32.1.0/24", "172.32.2.0/24"]
}

variable "availability_zones" {
  description = "A list of availability zones in the region"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}


variable "private_subnet" {
  type    = string
  default = "172.32.3.0/24"
}


variable "key_name" {
  default = "rstudio"
}

variable "secret_name" {
  default = "rstudio-secret-123"
}


variable "domain_name" {
  type    = string
  default = "k8jagadeeshhowdary.xyz."
}

variable "subdomain_name" {
  default = "jagadeesh"
}





