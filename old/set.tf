variable "myset" {
  type=set(string)

  default = [ "value", "value1", "value2" , "value2" ]
}


output "name" {
  value=var.myset
}