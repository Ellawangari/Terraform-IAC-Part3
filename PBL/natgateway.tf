resource "aws_eip" "Prj17_nat_eip" {
  vpc        = true
  depends_on = [aws_internet_gateway.Prj17_ig]

  tags = merge(
    var.tags,
    {
      Name = format("%s-EIP", var.environment)
    },
  )
}

resource "aws_nat_gateway" "Prj17_nat" {
  allocation_id = aws_eip.Prj17_nat_eip.id
  subnet_id     = element(aws_subnet.public.*.id, 0)
  depends_on    = [aws_internet_gateway.Prj17_ig]

  tags = merge(
    var.tags,
    {
      Name = format("%s-Nat", var.environment)
    },
  )
}
