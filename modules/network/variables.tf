variable "random_int" {
  type = string
}

variable "rg" {
  type = string
}

variable "location" {
  type = string
}

variable "address_space" {
  type = list(string)
  default = [ "10.0.0.0/8" ]
}

variable "address_prefixes" {
  type = list(string)
  default = [ "10.240.0.0/16" ]
}