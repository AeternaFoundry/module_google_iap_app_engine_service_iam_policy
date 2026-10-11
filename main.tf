resource "google_iap_app_engine_service_iam_policy" "iap_app_engine_service_iam_policies" {
  for_each = var.iap_app_engine_service_iam_policies

  app_id      = each.value.app_id
  policy_data = each.value.policy_data
  service     = each.value.service
  project     = each.value.project
}

