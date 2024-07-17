provider "azurerm" {
  features {}
}

module "resource_group" {
  source      = "git::https://github.com/yadavprakash/terraform-azure-resource-group.git?ref=v1.0.0"
  name        = "app"
  environment = "tested"
  location    = "North Europe"
}

module "log-analytics" {
  source                           = "git::https://github.com/yadavprakash/terraform-azure-log-analytics.git?ref=v1.0.0"
  name                             = "app"
  environment                      = "test"
  resource_group_name              = module.resource_group.resource_group_name
  log_analytics_workspace_location = module.resource_group.resource_group_location

  #### diagnostic setting
  log_analytics_workspace_id = module.log-analytics.workspace_id
}

module "sentinel" {
  source                     = "./.."
  name                       = "app"
  environment                = "test"
  log_analytics_workspace_id = module.log-analytics.workspace_id
}


