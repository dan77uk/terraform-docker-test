resource "aws_instance" "first_instance" {
  ami                    = "ami-0e1c5be2aa956338b"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  tags = {
    Name = "First Instance"
  }

  key_name = "ssh_test"

  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y",
      "sudo yum install docker -y",
      "sudo yum install git -y",
      "git clone https://github.com/dan77uk/docker_repo.git",
      "sudo systemctl start docker",
      "cd ./docker_repo",
      "sudo docker image build . -t final:1",
      "sudo docker run -d -p 8080:80 final:1"
    ]
  }

  connection {
    agent = false
    type = "ssh"
    user = "ec2-user"
    private_key = file("/Users/dan/.ssh/ssh_test.pem")
    host = self.public_ip
  }



}