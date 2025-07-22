
data "tls_certificate" "thumbprint" {
  count = var.create_provider ? 1 : 0

  url = var.url
}

resource "aws_iam_openid_connect_provider" "gitlab" {
  count = var.create_provider ? 1 : 0

  url             = var.url
  client_id_list  = [var.url]
  thumbprint_list = [for fingerprint in data.tls_certificate.thumbprint[0].certificates : fingerprint.sha1_fingerprint]

  tags = var.tags
}