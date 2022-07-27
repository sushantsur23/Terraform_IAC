resource "aws_instance" "ec2_example" {
    ami = "ami-123",
    instance_type = "${var.instance_type}",
    key_name = "26th July",
    tags = {
        Name = "Hello=World"
    }
}
