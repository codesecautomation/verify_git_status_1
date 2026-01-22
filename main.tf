provider "aws" {
  region = "us-west-2"
}

# Define a large number for the count to force many module instantiations
variable "num_buckets" {
  default = 10000 # A high number of iterations causes the slowdown
}

module "s3_buckets" {
  source = "./modules/simple_resource"
  count  = var.num_buckets

  bucket_name = "my-unique-bucket-name-${count.index}"
}
