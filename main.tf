resource "aws_security_group" "main" {
  name        = local.sg_final_name
  description = "Creation of expense-vpc with security group"
  vpc_id      = var.vpc_id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(
    var.common_tags,
    var.sg_tags,
    {
      Name = local.sg_final_name
    }
  )
}