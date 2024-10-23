/*terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
    token = "ACCESS_KEY"
}

resource "github_repository" "testrepo" {
  name = "example"
  description = "terraform example"

  visibility = "public"
}
*/
