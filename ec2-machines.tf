resource "aws_instance" "my-test-instance" {
  ami             = "${lookup(var.AmiLinux, var.region)}"
  instance_type   = "t2.micro"
  iam_instance_profile = "${aws_iam_instance_profile.test_profile.name}"

  tags {
    Name = "test-instance"
  }
}