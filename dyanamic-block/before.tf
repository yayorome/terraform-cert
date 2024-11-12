resource "aws_security_group" "my_group" {
  name = "sample-sg"

    ingress {
        from_port = 8200
        to_port = 8200
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    ingress {
        from_port = 8201
        to_port = 8201
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
    }

ingress {
        from_port = 8300
        to_port = 8300
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
    }

ingress {
        from_port = 8400
        to_port = 8400
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
    }

}