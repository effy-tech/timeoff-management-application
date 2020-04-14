output "project_id" {
  value = "${data.terraform_remote_state.project.project_id}"
}

output "env" {
    value = "${data.terraform_remote_state.project.env}"
}

output "compute_zone" {
  value = "${data.terraform_remote_state.project.compute_zone}"
}

output "cluster_name" {
  value = "${data.terraform_remote_state.project.cluster_name}"
}

output "private_key" {
    value = "${data.terraform_remote_state.project.private_key}"
}
