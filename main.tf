resource "github_actions_hosted_runner" "actions_hosted_runners" {
  for_each = var.actions_hosted_runners

  name              = each.value.name
  runner_group_id   = each.value.runner_group_id
  size              = each.value.size
  image_gen         = each.value.image_gen
  image_version     = each.value.image_version
  maximum_runners   = each.value.maximum_runners
  public_ip_enabled = each.value.public_ip_enabled

  image {
    id     = each.value.image.id
    source = each.value.image.source
  }
}

