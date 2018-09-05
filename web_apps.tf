resource "azurerm_app_service" "webapp" {
  source = "git::https://github.com/dsreddy22/modules.git"
  count 	      = "${length(var.webapps)}"
  name                = "${var.webapps[count.index]}-${module.web_app.name}"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group}"
  app_service_plan_id = "${module.web_app.app_service_plan_id}"

  site_config {
    dotnet_framework_version = "${module.web_app.site_config.dotnet_framework_version}"
}  
}
/*

connection_string {
name  = "${var.connect_string_name}"
type  = "${var.connect_string_type}"
value = "${var.connect_string_value}"
username = "${var.connect_string_user}"
password = "${var.connect_string_secret}"
}*/