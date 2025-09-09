variable "resource-group" {
  type = map(string)
}

variable "azure-virtual-network" {
  type = map(any)
  
}

variable "azure-subnet" {
  type = map(any)
  
}