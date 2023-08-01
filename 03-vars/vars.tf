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

# variable data types
# string
# number
# boolean

# variable types
# In ansible - 1. Plain key , value; 2. List; 3. Map/Dict
# In Terraform - 1. Plain , 2. List, 3. Map

## plain
variable "course" {
  default = "Devops Training"
}

## List
variable "courses" {
  default = [
  "Devops",
  "AWS",
  "Python"
  ]
}

## MAp
variable "course_details" {
 default = {
   Devops = {
     name = "DevOps"
     timing = "10 am"
     duration = 90
   }
   AWS = {
     name = "AWS"
     timing = "11 am"
     duration = 30
   }
 }
}

output "course" {
  value = var.course
}

output "courses" {
  value = var.courses
}

output "course_details" {
  value = var.course_details["Devops"]
}


variable "env" {}

output "env" {
  value = var.env
}