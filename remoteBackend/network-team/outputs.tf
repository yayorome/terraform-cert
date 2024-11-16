output "eip_addr" {
  value = aws_eip.lb.public_ip
}