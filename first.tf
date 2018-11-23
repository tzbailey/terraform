provider "aws" {
  region = "eu-west-2"
}
resource "aws_instance" "TF_Demo_CP_HC_PIT_PSandA" {
  instance_type="t2.micro"
  ami="ami-1a7f6d7e"
  tags {
    random="stuff"
  }
}
output "TF_Demo_CP_HC_PIT_PSandA-IP-Address" {
  value = "${aws_instance.TF_Demo_CP_HC_PIT_PSandA.public_ip}"
}