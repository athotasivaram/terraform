variable "cidr" {
  type = string
  #default = "10.0.0.0/16" #default value not give asking command line
}

variable "pulblic-cidr" {
  type = string
}

variable "private-cidr" {
  type = string
}

variable "route-public" {
  type = string
}

variable "tags" {
  type = map
}

variable "internet" {
  type = bool
}

variable "lb_type" {
  type = string
}

variable "subnet_id" {
  type = list
}

variable "security-group" {
  type = list
}

variable "timeout" {
  type = number
}