variable "sg_ports" {
  type = list(number)
  default = [ 8200, 8201, 8300, 9200, 9500 ]
}

resource "aws_security_group" "sg_group" {
  name = "dynamic-sg"

  dynamic "ingress" {
    for_each = var.sg_ports
    iterator = it
    content {
      from_port = it.value
      to_port = it.value
      protocol = "tcp"
      cidr_blocks = [ "0.0.0.0/0" ]
    }
  }

  dynamic "egress" {
    for_each = var.sg_ports
    content {
      from_port = egress.value
      to_port = egress.value
      protocol = "tcp"
      cidr_blocks = [ "0.0.0.0/0" ]
    }
  }

}