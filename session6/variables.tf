variable "tags" {
  default = {
    Name = "timing"
    Environment = "DEV"
    terraform = true
  }
}

variable "igw_tags" {
  default = {
    Name = "timing-igw"
    Environment = "DEV"
    terraform = true
  }
}

variable "public_subnet_tags" {
  default = {
    Name = "timing-public-subnet"
    Environment = "DEV"
    terraform = true
  }
}

variable "private_subnet_tags" {
  default = {
    Name = "timing-private-subnet"
    Environment = "DEV"
    terraform = true
  }
}

variable "public_rt_tags" {
  default = {
    Name = "timing-public-rt"
    Environment = "DEV"
    terraform = true
  }
}

variable "nat-gw-tags" {
  default = {
    Name = "timing-nat-gw"
    Environment = "DEV"
    terraform = true
  }
}

variable "private_rt_tags" {
  default = {
    Name = "timing-private-rt"
    Environment = "DEV"
    terraform = true
  }
}

variable "db-subnet" {
  default = {
    Name = "timing-db-subnet"
    Environment = "DEV"
    terraform = true
  }
}
