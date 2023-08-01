variable "sample" {
  default = 100
}

variable "sample1" {
  default = "hello World"
}

output "sample" {
  value = var.sample
}

output "sample1" {
  value = var.sample1
}

output "sample-ext"{
  value = "value of sample - ${var.sample}"
}
