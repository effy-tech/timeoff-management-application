output "project_id" {
  value = data.terraform_remote_state.project.outputs.project_id
}

output "env" {
    value = data.terraform_remote_state.project.outputs.env
}

output "compute_zone" {
  value = data.terraform_remote_state.project.outputs.compute_zone
}

output "cluster_name" {
  value = data.terraform_remote_state.project.outputs.cluster_name
}

output "private_key" {
  value = data.terraform_remote_state.project.outputs.private_key
}
