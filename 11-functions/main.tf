variable "class" {
  default = "devops"
}

output "class" {
  #value1 = var.class
  value = upper(var.class)
}

variable "fruits" {
  default = ["apple", "banana", "orange"]
}

output "fruit_count" {
  #value1 = var.fruits
  value = length(var.fruits)
}

variable "classes" {
  default = {
    devops = {
      name = "devops"
      topics = ["jenkins", "docker"]
    }
    aws = {
      name = "aws"
    }
  }
}

output "devops_topics" {
  value = var.classes["devops"]["topics"]
}

output "aws_topics" {
  #value = var.classes["aws"]["topics"]
  #value1 = lookup(var.classes, "aws", null)
  value = lookup(lookup(var.classes, "aws", null), "topics", "no topics so far")
}

output "fruit_0" {
 # value = var.fruits
  #value1 = var.fruits[0]
  #value2 = var.fruits[4]
  value = element(var.fruits, 4)
}