# A basic variable declaration
variable "ec2_instance_type" {
    default = "t2.micro"
}

# A basic string variable type 
variable "template" {
    type = "string"
    default = "ubuntu-14.04-lts"
}

# A basic list variable type
variable "users" {
    type = list
    default  = ["ubuntu","root","admin"]

}

variable "Products" {
    type = map
    default = {
        "Processor" = "Intel",
        "GPU" = "RTX 3060",
        "cores" = "3"
    }
}

variable "set_passsword" {
    default = False
}