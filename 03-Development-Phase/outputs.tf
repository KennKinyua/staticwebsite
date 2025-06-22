output "website_url" {
  value = "http://${aws_s3_bucket.website.bucket}.s3-website.${var.region}.amazonaws.com"
}
output "cloudfront_url" {
  value = "https://${aws_cloudfront_distribution.cdn.domain_name}"
}
