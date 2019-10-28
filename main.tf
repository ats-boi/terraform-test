resource "repository-template_github" "example" {
  repository_owner = "ats-boi"
  repository_name  = "terraform-test"
  target_branch    = "master"
  working_branch   = "ci/template"

  files = {
    "CONTRIBUTING.md" = "Pull requests are welcome!"
    "content.txt"     = "${file("context.txt")}"
  }
}
