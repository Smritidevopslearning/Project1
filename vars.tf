variable "REGION" {
  default = "us-east-1"
}

variable "ZONE1" {
  default = "us-east-1a"
}

variable "ZONE2" {
  default = "us-east-1b"
}

variable "TYPE" {
  default = "t2.micro"
}

variable "AMIS" {
  type = map(any)
  default = {
    us-east-1 = "ami-04b70fa74e45c3917"
  }
}

variable "PUB_KEY" {
  default = "exercisekey.pub"
}

variable "PRIV_KEY" {
  default = "exercisekey"
}

variable "MYIP" {
  default = "106.222.203.54/32"
}

variable "USER" {
  default = "ubuntu"
}



