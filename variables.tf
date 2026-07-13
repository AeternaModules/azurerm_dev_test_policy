variable "dev_test_policies" {
  description = <<EOT
Map of dev_test_policies, attributes below
Required:
    - evaluator_type
    - lab_name
    - name
    - policy_set_name
    - resource_group_name
    - threshold
Optional:
    - description
    - fact_data
    - tags
EOT

  type = map(object({
    evaluator_type      = string
    lab_name            = string
    name                = string
    policy_set_name     = string
    resource_group_name = string
    threshold           = string
    description         = optional(string)
    fact_data           = optional(string)
    tags                = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.dev_test_policies : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.dev_test_policies : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.dev_test_policies : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.dev_test_policies : (
        length(v.threshold) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.dev_test_policies : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

