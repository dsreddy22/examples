output "web_app_name" {
  value = "${azurerm_app_service.webapp.*.name}"
}
