output "dev_test_policies" {
  description = "All dev_test_policy resources"
  value       = azurerm_dev_test_policy.dev_test_policies
}
output "dev_test_policies_description" {
  description = "List of description values across all dev_test_policies"
  value       = [for k, v in azurerm_dev_test_policy.dev_test_policies : v.description]
}
output "dev_test_policies_evaluator_type" {
  description = "List of evaluator_type values across all dev_test_policies"
  value       = [for k, v in azurerm_dev_test_policy.dev_test_policies : v.evaluator_type]
}
output "dev_test_policies_fact_data" {
  description = "List of fact_data values across all dev_test_policies"
  value       = [for k, v in azurerm_dev_test_policy.dev_test_policies : v.fact_data]
}
output "dev_test_policies_lab_name" {
  description = "List of lab_name values across all dev_test_policies"
  value       = [for k, v in azurerm_dev_test_policy.dev_test_policies : v.lab_name]
}
output "dev_test_policies_name" {
  description = "List of name values across all dev_test_policies"
  value       = [for k, v in azurerm_dev_test_policy.dev_test_policies : v.name]
}
output "dev_test_policies_policy_set_name" {
  description = "List of policy_set_name values across all dev_test_policies"
  value       = [for k, v in azurerm_dev_test_policy.dev_test_policies : v.policy_set_name]
}
output "dev_test_policies_resource_group_name" {
  description = "List of resource_group_name values across all dev_test_policies"
  value       = [for k, v in azurerm_dev_test_policy.dev_test_policies : v.resource_group_name]
}
output "dev_test_policies_tags" {
  description = "List of tags values across all dev_test_policies"
  value       = [for k, v in azurerm_dev_test_policy.dev_test_policies : v.tags]
}
output "dev_test_policies_threshold" {
  description = "List of threshold values across all dev_test_policies"
  value       = [for k, v in azurerm_dev_test_policy.dev_test_policies : v.threshold]
}

