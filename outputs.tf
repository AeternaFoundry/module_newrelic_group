output "groups_id" {
  description = "Map of id values across all groups, keyed the same as var.groups"
  value       = { for k, v in newrelic_group.groups : k => v.id }
}
output "groups_authentication_domain_id" {
  description = "Map of authentication_domain_id values across all groups, keyed the same as var.groups"
  value       = { for k, v in newrelic_group.groups : k => v.authentication_domain_id }
}
output "groups_name" {
  description = "Map of name values across all groups, keyed the same as var.groups"
  value       = { for k, v in newrelic_group.groups : k => v.name }
}
output "groups_user_ids" {
  description = "Map of user_ids values across all groups, keyed the same as var.groups"
  value       = { for k, v in newrelic_group.groups : k => v.user_ids }
}

