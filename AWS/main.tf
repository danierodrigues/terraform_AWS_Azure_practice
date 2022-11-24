terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_budgets_budget" "main_budget" {
  name              = "monthly-budget"
  budget_type       = "COST"
  limit_amount      = "3.00"
  limit_unit        = "USD"
  time_unit         = "MONTHLY"
  time_period_start = "2022-11-22_00:01"
}

