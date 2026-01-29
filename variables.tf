#----------------------
# Application Insights
#----------------------
variable "name" {
  description = "(Required) Specifies the name of the Application Insights component. Changing this forces a new resource to be created."
  type        = string
}

variable "location" {
  description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string
}

variable "resource_group_name" {
  description = "(Required) The name of the resource group in which to create the Application Insights component. Changing this forces a new resource to be created."
  type        = string
}

variable "application_type" {
  description = "(Required) Specifies the type of Application Insights to create. Valid values are ios for iOS, java for Java web, MobileCenter for App Center, Node.JS for Node.js, other for General, phone for Windows Phone, store for Windows Store and web for ASP.NET. Please note these values are case sensitive; unmatched values are treated as ASP.NET by Azure. Changing this forces a new resource to be created."
  type        = string
}

variable "daily_data_cap_in_gb" {
  description = "(Optional) Specifies the Application Insights component daily data volume cap in GB. Defaults to 100."
  type        = number
  default     = 100
}

variable "daily_data_cap_notifications_disabled" {
  description = "(Optional) Specifies if a notification email will be sent when the daily data volume cap is met. Defaults to false."
  type        = bool
  default     = false
}

variable "retention_in_days" {
  description = "(Optional) Specifies the retention period in days. Possible values are 30, 60, 90, 120, 180, 270, 365, 550 or 730. Defaults to 90."
  type        = number
  default     = 90
}

variable "sampling_percentage" {
  description = "(Optional) Specifies the percentage of the data produced by the monitored application that is sampled for Application Insights telemetry. Defaults to 100."
  type        = number
  default     = 100
}

variable "disable_ip_masking" {
  description = "(Optional) By default the real client IP is masked as 0.0.0.0 in the logs. Use this argument to disable masking and log the real client IP. Defaults to false."
  type        = bool
  default     = false
}

variable "workspace_id" {
  description = "(Optional) Specifies the id of a log analytics workspace resource."
  type        = string
  default     = null
}

variable "local_authentication_disabled" {
  description = "(Optional) Disable Non-Azure AD based Auth. Defaults to false."
  type        = bool
  default     = false
}

variable "internet_ingestion_enabled" {
  description = "(Optional) Should the Application Insights component support ingestion over the Public Internet? Defaults to true."
  type        = bool
  default     = true
}

variable "internet_query_enabled" {
  description = "(Optional) Should the Application Insights component support querying over the Public Internet? Defaults to true."
  type        = bool
  default     = true
}

variable "force_customer_storage_for_profiler" {
  description = "(Optional) Should the Application Insights component force users to create their own storage account for profiling? Defaults to false."
  type        = bool
  default     = false
}

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the resource."
  type        = map(any)
  default     = {}
}