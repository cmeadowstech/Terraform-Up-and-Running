variable "location" {
  type    = string
  default = "East US"
}
variable "rg-name" {
  type = string
}
variable "storage-name" {
  type = string
}
variable "tags" {
  type    = map(string)
  default = {}
}