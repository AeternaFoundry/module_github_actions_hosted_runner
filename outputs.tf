output "actions_hosted_runners_id" {
  description = "Map of id values across all actions_hosted_runners, keyed the same as var.actions_hosted_runners"
  value       = { for k, v in github_actions_hosted_runner.actions_hosted_runners : k => v.id }
}
output "actions_hosted_runners_image" {
  description = "Map of image values across all actions_hosted_runners, keyed the same as var.actions_hosted_runners"
  value       = { for k, v in github_actions_hosted_runner.actions_hosted_runners : k => one(v.image) }
}
output "actions_hosted_runners_image_gen" {
  description = "Map of image_gen values across all actions_hosted_runners, keyed the same as var.actions_hosted_runners"
  value       = { for k, v in github_actions_hosted_runner.actions_hosted_runners : k => v.image_gen }
}
output "actions_hosted_runners_image_version" {
  description = "Map of image_version values across all actions_hosted_runners, keyed the same as var.actions_hosted_runners"
  value       = { for k, v in github_actions_hosted_runner.actions_hosted_runners : k => v.image_version }
}
output "actions_hosted_runners_last_active_on" {
  description = "Map of last_active_on values across all actions_hosted_runners, keyed the same as var.actions_hosted_runners"
  value       = { for k, v in github_actions_hosted_runner.actions_hosted_runners : k => v.last_active_on }
}
output "actions_hosted_runners_machine_size_details" {
  description = "Map of machine_size_details values across all actions_hosted_runners, keyed the same as var.actions_hosted_runners"
  value       = { for k, v in github_actions_hosted_runner.actions_hosted_runners : k => v.machine_size_details }
}
output "actions_hosted_runners_maximum_runners" {
  description = "Map of maximum_runners values across all actions_hosted_runners, keyed the same as var.actions_hosted_runners"
  value       = { for k, v in github_actions_hosted_runner.actions_hosted_runners : k => v.maximum_runners }
}
output "actions_hosted_runners_name" {
  description = "Map of name values across all actions_hosted_runners, keyed the same as var.actions_hosted_runners"
  value       = { for k, v in github_actions_hosted_runner.actions_hosted_runners : k => v.name }
}
output "actions_hosted_runners_platform" {
  description = "Map of platform values across all actions_hosted_runners, keyed the same as var.actions_hosted_runners"
  value       = { for k, v in github_actions_hosted_runner.actions_hosted_runners : k => v.platform }
}
output "actions_hosted_runners_public_ip_enabled" {
  description = "Map of public_ip_enabled values across all actions_hosted_runners, keyed the same as var.actions_hosted_runners"
  value       = { for k, v in github_actions_hosted_runner.actions_hosted_runners : k => v.public_ip_enabled }
}
output "actions_hosted_runners_public_ips" {
  description = "Map of public_ips values across all actions_hosted_runners, keyed the same as var.actions_hosted_runners"
  value       = { for k, v in github_actions_hosted_runner.actions_hosted_runners : k => v.public_ips }
}
output "actions_hosted_runners_runner_group_id" {
  description = "Map of runner_group_id values across all actions_hosted_runners, keyed the same as var.actions_hosted_runners"
  value       = { for k, v in github_actions_hosted_runner.actions_hosted_runners : k => v.runner_group_id }
}
output "actions_hosted_runners_size" {
  description = "Map of size values across all actions_hosted_runners, keyed the same as var.actions_hosted_runners"
  value       = { for k, v in github_actions_hosted_runner.actions_hosted_runners : k => v.size }
}
output "actions_hosted_runners_status" {
  description = "Map of status values across all actions_hosted_runners, keyed the same as var.actions_hosted_runners"
  value       = { for k, v in github_actions_hosted_runner.actions_hosted_runners : k => v.status }
}

