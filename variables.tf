variable "actions_hosted_runners" {
  description = <<EOT
Map of actions_hosted_runners, attributes below
Required:
    - name
    - runner_group_id
    - size
    - image (block):
        - id (required)
        - source (optional)
Optional:
    - image_gen
    - image_version
    - maximum_runners
    - public_ip_enabled
EOT

  type = map(object({
    name              = string
    runner_group_id   = number
    size              = string
    image_gen         = optional(bool)
    image_version     = optional(string)
    maximum_runners   = optional(number)
    public_ip_enabled = optional(bool)
    image = object({
      id     = string
      source = optional(string)
    })
  }))
  validation {
    condition = alltrue([
      for k, v in var.actions_hosted_runners : (
        (length(v.name) >= 1 && length(v.name) <= 64) && (can(regex("^[a-zA-Z0-9._-]+$", v.name)))
      )
    ])
    error_message = "all of: must be between 1 and 64 characters; name may only contain alphanumeric characters, '.', '-', and '_'"
  }
  validation {
    condition = alltrue([
      for k, v in var.actions_hosted_runners : (
        v.image.source == null || (contains(["github", "partner", "custom"], v.image.source))
      )
    ])
    error_message = "must be one of: github, partner, custom"
  }
  validation {
    condition = alltrue([
      for k, v in var.actions_hosted_runners : (
        v.maximum_runners == null || (v.maximum_runners >= 1)
      )
    ])
    error_message = "must be at least 1"
  }
}

