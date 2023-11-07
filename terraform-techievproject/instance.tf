terraform {
 backend "s3" {
 encrypt = true
 bucket = "elasticbeanstalk-us-east-2-531306854166"
 region = "us-east-2"
 key = "automation/method2/automationmh2.tfstate"
 }
}

resource "aws_instance" "r100c96" {
  ami               = "ami-02b8534ff4b424939"
  instance_type     = "t2.micro"
  availability_zone = "us-east-2a"
  key_name          = "awsclass9"
  user_data         = file("installcommand.sh")
  tags = {
    Name = "Terraform-diff-linux"
  }

  provisioner "local-exec" {
    command = "echo ${aws_instance.r100c96.public_dns} > inventory"
  }

  #provisioner "local-exec" {
  #  command = "sleep 150"
  #}

  provisioner "local-exec" {
    command = "ansible all -m shell -a 'yum -y install httpd; systemctl restart httpd'"
  }

}

output "ip" {
  value = aws_instance.r100c96.public_ip
}

output "publicName" {
  value = aws_instance.r100c96.public_dns
}
