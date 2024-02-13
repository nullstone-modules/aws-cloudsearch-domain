variable "instance_type" {
  type    = string
  default = "search.small"
  description = <<EOF
The instance type to use for the domain. Valid values are search.small, search.medium, search.large, search.xlarge, and search.2xlarge.
See the docs for more details: https://docs.aws.amazon.com/cloudsearch/latest/developerguide/API_ScalingParameters.html
EOF
}

variable "instance_count" {
  type    = number
  default = 1
  description = "The number of instances to use for the domain"
}

variable "partition_count" {
  type    = number
  default = 1
  description = "The number of partitions to use for the domain"
}
