variable "vpc-cidr" {
  type    = string
  default = "10.1.0.0/16"
}

variable "subnets" {
  type = list(map(string))
  default = [
    { cidr = "10.1.0.0/24", az = "us-east-2a" },
    { cidr = "10.1.2.0/24", az = "us-east-2b" },
  ]
}

variable "port" {
  type = map(number)
  default = {
    "http" = 80,
  }
}


variable "ecs-config" {
  type = map(number)
  default = {
    "cpu"    = 256,
    "memory" = 512,
  }
}
