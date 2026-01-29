#----------------------
# Application Insights
#----------------------
resource "azurerm_application_insights" "application_insights" {
  name                                  = var.name
  location                              = var.location
  resource_group_name                   = var.resource_group_name
  application_type                      = var.application_type
  daily_data_cap_in_gb                  = try(var.daily_data_cap_in_gb, 100)
  daily_data_cap_notifications_disabled = try(var.daily_data_cap_notifications_disabled, false)
  retention_in_days                     = try(var.retention_in_days, 90)
  sampling_percentage                   = try(var.sampling_percentage, 100)
  disable_ip_masking                    = try(var.disable_ip_masking, false)
  workspace_id                          = try(var.workspace_id, null)
  local_authentication_disabled         = try(var.local_authentication_disabled, false)
  internet_ingestion_enabled            = try(var.internet_ingestion_enabled, true)
  internet_query_enabled                = try(var.internet_query_enabled, true)
  force_customer_storage_for_profiler   = try(var.force_customer_storage_for_profiler, false)

  tags = var.tags
  lifecycle {
    ignore_changes = [
      tags["creation_timestamp"],
    ]
  }
}