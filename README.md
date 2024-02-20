# terraform-azure-sentinel
# Terraform Azure Infrastructure

This Terraform configuration defines an Azure infrastructure using the Azure provider.

## Table of Contents

- [Introduction](#introduction)
- [Usage](#usage)
- [Module Inputs](#module-inputs)
- [Module Outputs](#module-outputs)
- [Examples](#examples)
- [License](#license)

## Introduction
This repository contains Terraform code to deploy resources on Microsoft Azure, including a resource group and a virtual network.

## Usage
You can use this module in your Terraform configuration like this:

The "vnet" module creates an Azure Virtual Network. It references the resource group created by the "resource_group" module.

# Examples

```hcl
module "sentinel" {
  source                     = "git::https://github.com/opsstation/terraform-azure-sentinel.git?ref=v1.0.0"
  name                       = "app"
  environment                = "test"
  log_analytics_workspace_id = module.log-analytics.workspace_id
}
```
Please ensure you specify the correct 'source' path for the module.

## Module Inputs
The following input variables can be configured:

- 'name': The name for the resource group and virtual network.
- 'environment': The environment or purpose of the resources.
- 'location': The Azure region where the resources will be created.
- 'address_space': The address space for the virtual network.

## Module Outputs
This module provides the following outputs:

- 'resource_group_name': The name of the created Azure resource group.
- 'resource_group_location': The location of the created Azure resource group.

# Examples
For detailed examples on how to use this module, please refer to the '[example](https://github.com/opsstation/terraform-azure-sentinel/blob/master/_example)' directory within this repository.

# License
This Terraform module is provided under the '[License Name]' License. Please see the [LICENSE](https://github.com/opsstation/terraform-azure-sentinel/blob/master/LICENSE) file for more details.

# Author
Your Name
Replace '[License Name]' and '[Your Name]' with the appropriate license and your information. Feel free to expand this README with additional details or usage instructions as needed for your specific use case.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=2.90.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >=2.90.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_labels"></a> [labels](#module\_labels) | git::https://github.com/opsstation/terraform-azure-labels.git | v1.0.0 |

## Resources

| Name | Type |
|------|------|
| [azurerm_sentinel_alert_rule_ms_security_incident.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/sentinel_alert_rule_ms_security_incident) | resource |
| [azurerm_sentinel_data_connector_azure_active_directory.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/sentinel_data_connector_azure_active_directory) | resource |
| [azurerm_sentinel_data_connector_azure_advanced_threat_protection.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/sentinel_data_connector_azure_advanced_threat_protection) | resource |
| [azurerm_sentinel_data_connector_azure_security_center.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/sentinel_data_connector_azure_security_center) | resource |
| [azurerm_sentinel_data_connector_iot.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/sentinel_data_connector_iot) | resource |
| [azurerm_sentinel_data_connector_microsoft_cloud_app_security.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/sentinel_data_connector_microsoft_cloud_app_security) | resource |
| [azurerm_sentinel_data_connector_microsoft_defender_advanced_threat_protection.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/sentinel_data_connector_microsoft_defender_advanced_threat_protection) | resource |
| [azurerm_sentinel_data_connector_microsoft_threat_protection.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/sentinel_data_connector_microsoft_threat_protection) | resource |
| [azurerm_sentinel_data_connector_threat_intelligence.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/sentinel_data_connector_threat_intelligence) | resource |
| [azurerm_sentinel_log_analytics_workspace_onboarding.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/sentinel_log_analytics_workspace_onboarding) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alerts_enabled"></a> [alerts\_enabled](#input\_alerts\_enabled) | Should the alerts be enabled? Defaults to true. | `bool` | `true` | no |
| <a name="input_discovery_logs_enabled"></a> [discovery\_logs\_enabled](#input\_discovery\_logs\_enabled) | Should the Discovery Logs be enabled? Defaults to true. | `bool` | `true` | no |
| <a name="input_display_name"></a> [display\_name](#input\_display\_name) | The friendly name of this Sentinel MS Security Incident Alert Rule. | `list(string)` | <pre>[<br>  "Create incidents based on Microsoft Defender for Cloud"<br>]</pre> | no |
| <a name="input_dtc_ad_enabled"></a> [dtc\_ad\_enabled](#input\_dtc\_ad\_enabled) | Set to false to prevent the module from creating any resources. | `bool` | `false` | no |
| <a name="input_dtc_advanced_threat_protection_enabled"></a> [dtc\_advanced\_threat\_protection\_enabled](#input\_dtc\_advanced\_threat\_protection\_enabled) | Set to false to prevent the module from creating any resources. | `bool` | `false` | no |
| <a name="input_dtc_iot_enabled"></a> [dtc\_iot\_enabled](#input\_dtc\_iot\_enabled) | Set to false to prevent the module from creating any resources. | `bool` | `false` | no |
| <a name="input_dtc_ms_cloud_app_security_enabled"></a> [dtc\_ms\_cloud\_app\_security\_enabled](#input\_dtc\_ms\_cloud\_app\_security\_enabled) | Set to false to prevent the module from creating any resources. | `bool` | `false` | no |
| <a name="input_dtc_ms_defender_advanced_threat_protection_enabled"></a> [dtc\_ms\_defender\_advanced\_threat\_protection\_enabled](#input\_dtc\_ms\_defender\_advanced\_threat\_protection\_enabled) | Set to false to prevent the module from creating any resources. | `bool` | `false` | no |
| <a name="input_dtc_ms_threat_protection_enabled"></a> [dtc\_ms\_threat\_protection\_enabled](#input\_dtc\_ms\_threat\_protection\_enabled) | Set to false to prevent the module from creating any resources. | `bool` | `false` | no |
| <a name="input_dtc_security_center_enabled"></a> [dtc\_security\_center\_enabled](#input\_dtc\_security\_center\_enabled) | Set to false to prevent the module from creating any resources. | `bool` | `false` | no |
| <a name="input_dtc_threat-intelligence_enabled"></a> [dtc\_threat-intelligence\_enabled](#input\_dtc\_threat-intelligence\_enabled) | Set to false to prevent the module from creating any resources. | `bool` | `false` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Set to false to prevent the module from creating any resources. | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment (e.g. `prod`, `dev`, `staging`). | `string` | `""` | no |
| <a name="input_label_order"></a> [label\_order](#input\_label\_order) | Label order, e.g. sequence of application name and environment `name`,`environment`,'attribute' [`webserver`,`qa`,`devops`,`public`,] . | `list(any)` | <pre>[<br>  "name",<br>  "environment"<br>]</pre> | no |
| <a name="input_log_analytics_workspace_id"></a> [log\_analytics\_workspace\_id](#input\_log\_analytics\_workspace\_id) | The ID of the Log Analytics Workspace this Sentinel MS Security Incident Alert Rule belongs to. Changing this forces a new Sentinel MS Security Incident Alert Rule to be created. | `string` | `""` | no |
| <a name="input_managedby"></a> [managedby](#input\_managedby) | ManagedBy, eg 'opsstation'. | `string` | `""` | no |
| <a name="input_ms_security_enabled"></a> [ms\_security\_enabled](#input\_ms\_security\_enabled) | Should this Sentinel MS Security Incident Alert Rule be enabled? Defaults to true. | `bool` | `true` | no |
| <a name="input_ms_security_incident_enabled"></a> [ms\_security\_incident\_enabled](#input\_ms\_security\_incident\_enabled) | Should this Sentinel MS Security Incident Alert Rule be enabled? Defaults to true. | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | Name  (e.g. `app` or `cluster`). | `string` | `""` | no |
| <a name="input_product_filter"></a> [product\_filter](#input\_product\_filter) | The Microsoft Security Service from where the alert will be generated. Possible values are Azure Active Directory Identity Protection, Azure Advanced Threat Protection, Azure Security Center, Azure Security Center for IoT, Microsoft Cloud App Security, Microsoft Defender Advanced Threat Protection and Office 365 Advanced Threat Protection. | `list(string)` | <pre>[<br>  "Microsoft Cloud App Security"<br>]</pre> | no |
| <a name="input_repository"></a> [repository](#input\_repository) | Terraform current module repo | `string` | `""` | no |
| <a name="input_sentinel_enabled"></a> [sentinel\_enabled](#input\_sentinel\_enabled) | Flag to control the module creation. | `bool` | `true` | no |
| <a name="input_severity_filter"></a> [severity\_filter](#input\_severity\_filter) | Only create incidents from alerts when alert severity level is contained in this list. Possible values are High, Medium, Low and Informational. | `list(string)` | <pre>[<br>  "High"<br>]</pre> | no |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | The ID of the subscription that this Iot Data Connector connects to. Changing this forces a new Iot Data Connector to be created. | `string` | `null` | no |
| <a name="input_tenant_id"></a> [tenant\_id](#input\_tenant\_id) | The ID of the tenant that this Azure Active Directory Data Connector connects to. Changing this forces a new Azure Active Directory Data Connector to be created. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dtc_ad_id"></a> [dtc\_ad\_id](#output\_dtc\_ad\_id) | The ID of the Azure Active Directory Data Connector. |
| <a name="output_dtc_ms_cloud_app_security_id"></a> [dtc\_ms\_cloud\_app\_security\_id](#output\_dtc\_ms\_cloud\_app\_security\_id) | The ID of the Microsoft Cloud App Security Data Connector. |
| <a name="output_dtc_threat_protection_id"></a> [dtc\_threat\_protection\_id](#output\_dtc\_threat\_protection\_id) | The ID of the Azure Advanced Threat Protection Data Connector. |
| <a name="output_iot_id"></a> [iot\_id](#output\_iot\_id) | The ID of the Iot Data Connector. |
| <a name="output_security_center_id"></a> [security\_center\_id](#output\_security\_center\_id) | The ID of the Azure Security Center Data Connector. |
| <a name="output_sentinel_id"></a> [sentinel\_id](#output\_sentinel\_id) | The ID of the Security Insights Sentinel Onboarding States. |
<!-- END_TF_DOCS -->