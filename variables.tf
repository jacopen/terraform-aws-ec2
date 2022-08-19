variable "aws_key_pair_name" {
  default   = "jacopen-key"
}

variable "aws_key_pair_public_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQClNV5DBMYmOo5pYMpYE0PzXAFlLbYT46s6a7sGZdr9FIecJakrTtPVm6Po3uFL6qURi6uRQ8VsgeZGzZWWft8yJs1JdTcem8+KIiCenisTT7m9dRaX3EMdvhHyDtFGPSdGSq+blvgKo+HaHUem+Sx8R1lZAESzlZHjCwDxpZc5F/BkB4Jn+WiRgTeMwavOp0FJedNraLwZIHJ9h4kKV5uxIt3VgD5pHMotzjGJXDd2+jrcX6I/gQ/Cq1mXtvIMRoy72vpwF0r2knt1DrOOGi/Z029ZiPbQJl8HjbQSx/7kYPlw+ZI5W5afMSlwcs8qb3SR5ofF06gUftb3Uq/ziD2j"
}

variable "instance_type" {
  default = "t3.micro"
}


variable "vpc_id" {
  default = ""
}

variable "public_0_id" {
  default = ""
}

variable "public_1_id" {
  default = ""
}

variable "private_0_id" {
  default = ""
}

variable "private_1_id" {
  default = ""
}

variable "region" {
  default = "ap-northeast-1"
}
