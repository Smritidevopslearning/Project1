resource "aws_security_group" "exercise-sg" {
  name        = "exercisesg"
  description = "Sec grp for exercise ssh"
  vpc_id      = aws_vpc.exercise.id
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.MYIP]
  }
}