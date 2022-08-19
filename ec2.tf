//// NIC
resource "aws_network_interface" "web" {
  subnet_id   = var.public_0_id

  tags = {
    Name = "primary_network_interface"
  }
}

resource "aws_eip" "web" {
  network_interface = resource.aws_network_interface.web.id
  vpc      = true
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  key_name = var.aws_key_pair_name

  network_interface {
    network_interface_id = aws_network_interface.web.id
    device_index         = 0
  }

  tags = {
    Name = "HelloWorld"
  }
  user_data = <<EOF
  sudo apt-get update
  sudo apt-get install -y nginx
  EOF
}

output "web_public_ip" {
  value = aws_eip.web.public_ip
}
