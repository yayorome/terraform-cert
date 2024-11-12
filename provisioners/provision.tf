provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "firstec2" {
  ami           = "ami-0fff1b9a61dec8a5f"
  instance_type = "t2.micro"
  key_name = "your-key"

  tags = {
    Name = "firstec2"
  }

  provisioner "local_exec" {
    command = "echo $Y"
  }

  connection {
    type     = "ssh"
    user     = "root"
    private_key = "your-key.pem"
    host     = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [ "pu", "apt" ]
  }
}