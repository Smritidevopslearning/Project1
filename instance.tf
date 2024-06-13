resource "aws_key_pair" "exercise-key" {
  key_name   = "exercisekey"
  public_key = file(var.PUB_KEY)
}

resource "aws_instance" "exercise" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = var.TYPE
  key_name               = aws_key_pair.exercise-key.key_name
  availability_zone      = var.ZONE1
  vpc_security_group_ids = [aws_security_group.exercise-sg.id]
  subnet_id              = aws_subnet.exercise-pub1.id
  tags = {
    Name    = "Exercise-instance"
    project = "Exercise"
  }


  connection {
    type        = "ssh"
    user        = var.USER
    private_key = file("exercisekey")
    host        = self.public_ip
  }

}

output "PUBLICIP" {
  value = aws_instance.exercise.public_ip
}

