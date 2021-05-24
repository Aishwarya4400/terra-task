resource "aws_key_pair" "mykeypair" {
 key_name = "aish2keypair"
 public_key = file(var.PATH_TO_PUBLIC_KEY)
} 
