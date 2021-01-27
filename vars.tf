variable "prefix" {
  type = string
  default = "CLB"
}

variable "location" {
  default = "East US"
}

variable "rg-name"{
type = string
default = "CODELAB-PROJECT"
}

variable "vm_count" {
    default  = 2
  }

variable "vm_size" {
    type    = "string"
    default = "Standard_DS2_v2"
  }