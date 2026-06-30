data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }
}

resource "aws_key_pair" "terraform_key" {
  key_name   = var.key_name
  public_key = var.public_key_value

  tags = merge(var.common_tags, {
    Name = var.key_name
  })
}

resource "aws_instance" "web_server" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]
  key_name               = aws_key_pair.terraform_key.key_name

  user_data = <<-EOF
    #!/bin/bash
    dnf update -y
    dnf install -y httpd
    systemctl enable httpd
    systemctl start httpd
    echo "<h1>Hello from Terraform EC2</h1>" > /var/www/html/index.html
  EOF

  user_data_replace_on_change = true

  tags = merge(var.common_tags, {
    Name = var.server_name
  })
}
