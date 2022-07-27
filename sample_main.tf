provider "aws"{
    region = "us-east-1"
    access_key_id = "XXXXXXXXX"
    SecretKeyId = "XXXXXXXXXXXXXXXXXX"
}

resource "aws_db_instance" "default" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  name                 = "mydb"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}

resource"aws_s3_bucket" {
    bucket = "my-tf-bucket"
    tags ={
        name = "my-tf-bucket"
        Environment = "Dev"
    }
} 

resource "aws_s3_bucket_acl" "example" {
    bucket = aws_s3_bucket.bucket1.id
    acl = "private" 

}

##Security Grooup
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
#   vpc_id      = aws_vpc.main.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    # cidr_blocks      = [aws_vpc.main.cidr_block]
    # ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}