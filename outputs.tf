output "dev_test_policies_id" {
  description = "Map of id values across all dev_test_policies, keyed the same as var.dev_test_policies"
  value       = { for k, v in azurerm_dev_test_policy.dev_test_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dev_test_policies_description" {
  description = "Map of description values across all dev_test_policies, keyed the same as var.dev_test_policies"
  value       = { for k, v in azurerm_dev_test_policy.dev_test_policies : k => v.description if v.description != null && length(v.description) > 0 }
}
output "dev_test_policies_evaluator_type" {
  description = "Map of evaluator_type values across all dev_test_policies, keyed the same as var.dev_test_policies"
  value       = { for k, v in azurerm_dev_test_policy.dev_test_policies : k => v.evaluator_type if v.evaluator_type != null && length(v.evaluator_type) > 0 }
}
output "dev_test_policies_fact_data" {
  description = "Map of fact_data values across all dev_test_policies, keyed the same as var.dev_test_policies"
  value       = { for k, v in azurerm_dev_test_policy.dev_test_policies : k => v.fact_data if v.fact_data != null && length(v.fact_data) > 0 }
}
output "dev_test_policies_lab_name" {
  description = "Map of lab_name values across all dev_test_policies, keyed the same as var.dev_test_policies"
  value       = { for k, v in azurerm_dev_test_policy.dev_test_policies : k => v.lab_name if v.lab_name != null && length(v.lab_name) > 0 }
}
output "dev_test_policies_name" {
  description = "Map of name values across all dev_test_policies, keyed the same as var.dev_test_policies"
  value       = { for k, v in azurerm_dev_test_policy.dev_test_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "dev_test_policies_policy_set_name" {
  description = "Map of policy_set_name values across all dev_test_policies, keyed the same as var.dev_test_policies"
  value       = { for k, v in azurerm_dev_test_policy.dev_test_policies : k => v.policy_set_name if v.policy_set_name != null && length(v.policy_set_name) > 0 }
}
output "dev_test_policies_resource_group_name" {
  description = "Map of resource_group_name values across all dev_test_policies, keyed the same as var.dev_test_policies"
  value       = { for k, v in azurerm_dev_test_policy.dev_test_policies : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "dev_test_policies_tags" {
  description = "Map of tags values across all dev_test_policies, keyed the same as var.dev_test_policies"
  value       = { for k, v in azurerm_dev_test_policy.dev_test_policies : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "dev_test_policies_threshold" {
  description = "Map of threshold values across all dev_test_policies, keyed the same as var.dev_test_policies"
  value       = { for k, v in azurerm_dev_test_policy.dev_test_policies : k => v.threshold if v.threshold != null && length(v.threshold) > 0 }
}

