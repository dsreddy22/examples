variable "resource_group" {
  type = "string"
  description = "The name of the resource group in which to create the app service and web apps."
  default = "testwebapp83"
}
variable "webapps" {
  type = "list"
  default = ["webapp1","webapp2","webapp3"]
}
variable "location" {
  type = "string"
  description = "The location/region where the web apps to be created."
  default = "centralus"
}
variable "app_service_plan_id" {
  type = "string"
  description = "The id will come from the appservice plan"
  default = ""
}
variable "scm_type" {
  type = "string"
  description = "The type of Source Control enabled for this App Service"
  default = "ExternalGit"
}
variable "repourl" {
  type = "string"
  description = "URL of the Git repository for this App Service"
  default = "https://github.com/dsreddy22/webapp.git"
}
variable "branch" {
  type = "string"
  description = "Branch name of the Git repository for this App Service"
  default = "master"
}
variable "siteuser" {
  type = "string"
  description = "The username which can be used to publish to this App Service"
  default = ""
}
variable "sitesecret" {
  type = "string"
  description = "The password associated with the username, which can be used to publish to this App Service"
  default = ""
}
variable "dotnet_framework_version" {
  type = "string"
  description = "The version of .net frame work for site_config"
  default = "v4.0"
}
variable "connect_string_name" {
  type = "string"
  description = "The name of the connection string"
  default = "Database"
}
variable "connect_string_type" {
  type = "string"
  description = "The type of the Connection String. Possible values are APIHub, Custom, DocDb, EventHub, MySQL, NotificationHub, PostgreSQL, RedisCache, ServiceBus, SQLAzure and SQLServer"
  default = "SQLServer"
}
variable "connect_string_value" {
  type = "string"
  description = "The value for the Connection String"
  default = ""
}
variable "connect_string_user" {
  type = "string"
  description = "The username for the Connection String"
  default = ""
}
variable "connect_string_secret" {
  type = "string"
  description = "The password for the Connection String"
  default = ""
}
