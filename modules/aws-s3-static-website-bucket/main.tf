# Terraform configuration

resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name

  acl    = "public-read"
  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "PublicReadGetObject",
            "Effect": "Allow",
            "Principal": "*",
            "Action": [
                "s3:GetObject"
            ],
            "Resource": [
                "arn:aws:s3:::${var.bucket_name}/*"
            ]
        }
    ]
}
EOF

  website {
    index_document = "index.html"
    error_document = "error.html"
  }

  tags = var.tags
}


resource "aws_s3_bucket_object" "index" {
  bucket = var.bucket_name
  key    = "index.html"
  source = "${path.module}/www/index.html"
  content_type = "text/html"
  depends_on = [aws_s3_bucket.s3_bucket]
}

resource "aws_s3_bucket_object" "error" {
  bucket = var.bucket_name
  key    = "error.html"
  source = "${path.module}/www/error.html"
  content_type = "text/html"
  depends_on = [aws_s3_bucket.s3_bucket]


}