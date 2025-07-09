data "azurerm_client_config" "current" {}

data "azurerm_log_analytics_workspace" "target_law" {
  name                = var.log_analytics_workspace_name
  resource_group_name = var.resource_group_name
}

resource "azapi_resource" "management_group_diagnostic_settings" {
  type      = "Microsoft.Insights/diagnosticSettings@${var.azapi_version}"
  name      = var.diagnosticSettings_name
  parent_id = "/providers/Microsoft.Management/managementGroups/${var.management_group_id}"

  body = {
    properties = {
      workspaceId = data.azurerm_log_analytics_workspace.target_law.id
      logs = [
        {
          category = "Administrative"
          enabled  = true
        },
        {
          category = "Policy"
          enabled  = true
        }
      ]
    }
  }
}
