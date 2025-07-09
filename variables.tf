variable "log_analytics_workspace_name" {
  description = "The name of the Log Analytics Workspace."
  type        = string
  default     = "your-log-analytics-workspace-name" # Replace with your actual Log Analytics Workspace name
}

variable "resource_group_name" {
  description = "The name of the Resource Group."
  type        = string
  default     = "your-resource-group-name" # Replace with your actual resource group name
}

variable "management_group_id" {
  description = "The ID of the Management Group."
  type        = string
  default     = "your-management-group-id" # Replace with your actual management group ID  
}

variable "diagnosticSettings_name" {
  description = "The name of the Diagnostic Settings."
  type        = string
  default     = "your-diagnostic-settings-name" # Replace with your actual diagnostic settings name
  # Note: This should be unique within the scope of the resource it is associated with.  
}

variable "azapi_version" {
  description = "The version of the azapi provider to use."
  type        = string
  default     = "2021-05-01-preview" # Replace with your actual azapi provider version
  # Note: Ensure this version is compatible with the azapi provider version you are using.  
}

variable "log_analytics_subscription_id" {
  description = "The subscription ID for the Log Analytics Workspace."
  type        = string
  default     = "your-log-analytics-subscription-id" # Replace with your actual subscription ID
  # Note: This should be the subscription ID where the Log Analytics Workspace is located.
  # Ensure you have the necessary permissions to access this subscription.    
}
