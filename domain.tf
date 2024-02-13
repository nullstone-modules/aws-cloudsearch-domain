resource "aws_cloudsearch_domain" "this" {
  name = local.resource_name

  scaling_parameters {
    desired_instance_type = var.instance_type
    desired_instance_count = var.instance_count
    desired_partition_count = var.partition_count
  }
}
