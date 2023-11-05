terraform {
backend "s3"{
    bucket         = "type the name of your bucket"
    key            = "terraform.tfstate"
    encrypt        = true
    region         = "${var.region}"
  }
}