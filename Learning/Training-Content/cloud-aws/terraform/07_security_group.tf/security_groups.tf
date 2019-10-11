
resource "aws_security_group" "pub_web_sg" {
  description = "Allow external traffic"
  vpc_id = "${aws_vpc.vpc.id}"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "pub-web-sg"
  }
}

resource "aws_security_group" "protected_ssh_sg" {
  description = "Allow external traffic"
  vpc_id = "${aws_vpc.vpc.id}"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${var.ssh_ip}/32"]
  }

  tags = {
    Name = "pub-ssh-sg"
  }
}

resource "aws_security_group" "app_sg" {
  description = "Allow external traffic"
  vpc_id = "${aws_vpc.vpc.id}"

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    security_groups = ["${aws_security_group.pub_web_sg.id}"]
  }

  tags = {
    Name = "app-sg"
  }
}
