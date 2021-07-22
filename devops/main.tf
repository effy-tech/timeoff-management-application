data "terraform_remote_state" "project" {
  backend   = "gcs"
  workspace = "common"

  config = {
    bucket = var.bucket_name
  }
}
