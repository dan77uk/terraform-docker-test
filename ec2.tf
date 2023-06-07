resource "aws_instance" "first_instance" {
  ami                    = "ami-0e1c5be2aa956338b"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  tags = {
    Name = "First Instance"
  }

  # provisioner "remote-exec" {
  #   inline = [
  #     "sudo yum -y install nginx",
  #     "sudo systemctl start nginx"
  #   ]
  # }

  # connection {
  #   agent = false
  #   type = "ssh"
  #   user = "ec2-user"
  #   private_key = file("/Users/dan/.ssh/ssh_test.pem")
  #   host = self.public_ip
  # }



}