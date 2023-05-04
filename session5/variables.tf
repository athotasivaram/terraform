variable "instance" {
  type = list
  default = ["web-server","app-server","db-server"]
}

//is test ENVIRONMENT t2.micro other wise will use t2.large
variable "is_test" {
  type = bool
  default = false
}

//web-server should be t2.micro, app-server should be t2.medium, db-server should be t3.large

variable "server" {
  type = map
  default = {
    "web-server" = "t2.micro"
    "app-server" = "t2.medium"
    "db-server"  = "t2.large"
  }
}

variable "instance_name" {
  type = string
  default = "web-server"
}

variable "environment" {
  type = string
  default = "DEV"
}

//instance name should be web-server-DEV

