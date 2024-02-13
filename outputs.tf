output "domain_id" {
  value       = aws_cloudsearch_domain.this.id
  description = "string ||| The unique identifier for the domain"
}

output "document_endpoint" {
  value       = aws_cloudsearch_domain.this.document_service_endpoint
  description = "string ||| Document endpoint for the domain"
}

output "search_endpoint" {
  value       = aws_cloudsearch_domain.this.search_service_endpoint
  description = "string ||| Search endpoint for the domain"
}
