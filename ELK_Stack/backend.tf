terraform {
  backend "s3" {
    bucket         = "talent-academy-monika1-lab-tfstates"
    key            = "talent-academy/ELK_Stack/terraform.tfstates"
    dynamodb_table = "terraform-lock"
    region = "eu-west-1"
  }
}