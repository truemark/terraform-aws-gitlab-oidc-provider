variable "create_provider" {
  description = "Whether to create the provider"
  type        = bool
  default     = true
}

variable "url" {
  description = "The full issuer URL of the identity provider (e.g., https://gitlab.com)"
  type        = string
  default     = "https://gitlab.com"
}

variable "tags" {
  description = "A map of tags to add to the resources created"
  type        = map(any)
  default     = {}
}