locals {
  domain_name = "${var.domain_name}-${random_string.resource_suffix.result}"
}

resource "aws_cloudsearch_domain" "this" {
  name = local.domain_name

  scaling_parameters {
    desired_instance_type = var.instance_type
    desired_replication_count = var.instance_count
    desired_partition_count   = var.partition_count
  }
}

data "aws_iam_policy_document" "search_suggest" {
  statement {
    sid    = "SearchSuggest"
    effect = "Allow"

    principals {
      type        = "AWS"
      identifiers = ["*"]
    }

    actions = [
      "cloudsearch:suggest",
      "cloudsearch:search",
    ]
  }
}

resource "aws_cloudsearch_domain_service_access_policy" "this" {
  domain_name   = aws_cloudsearch_domain.this.id
  access_policy = data.aws_iam_policy_document.search_suggest.json

  timeouts {
    delete = "60m"
    update = "60m"
  }
}
