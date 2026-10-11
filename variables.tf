variable "iap_app_engine_service_iam_policies" {
  description = <<EOT
Map of iap_app_engine_service_iam_policies, attributes below
Required:
    - app_id
    - policy_data
    - service
Optional:
    - project
EOT

  type = map(object({
    app_id      = string
    policy_data = string
    service     = string
    project     = optional(string)
  }))
}

