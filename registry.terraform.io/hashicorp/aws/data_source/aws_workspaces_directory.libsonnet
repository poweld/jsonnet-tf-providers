{
  local block = self,
  new(directory_id):: (
    {}
    + block.with_directory_id(directory_id)
  ),
  with_active_directory_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"active_directory_config" expected to be of type "set"';
    {
      active_directory_config: converted,
    }
  ),
  with_active_directory_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"active_directory_config" expected to be of type "set"';
    {
      active_directory_config+: converted,
    }
  ),
  with_alias(value):: (
    local converted = value;
    assert std.isString(converted) : '"alias" expected to be of type "string"';
    {
      alias: converted,
    }
  ),
  with_certificate_based_auth_properties(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"certificate_based_auth_properties" expected to be of type "list"';
    {
      certificate_based_auth_properties: converted,
    }
  ),
  with_certificate_based_auth_properties_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"certificate_based_auth_properties" expected to be of type "list"';
    {
      certificate_based_auth_properties+: converted,
    }
  ),
  with_customer_user_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_user_name" expected to be of type "string"';
    {
      customer_user_name: converted,
    }
  ),
  with_directory_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"directory_id" expected to be of type "string"';
    {
      directory_id: converted,
    }
  ),
  with_directory_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"directory_name" expected to be of type "string"';
    {
      directory_name: converted,
    }
  ),
  with_directory_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"directory_type" expected to be of type "string"';
    {
      directory_type: converted,
    }
  ),
  with_dns_ip_addresses(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"dns_ip_addresses" expected to be of type "set"';
    {
      dns_ip_addresses: converted,
    }
  ),
  with_dns_ip_addresses_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"dns_ip_addresses" expected to be of type "set"';
    {
      dns_ip_addresses+: converted,
    }
  ),
  with_iam_role_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_role_id" expected to be of type "string"';
    {
      iam_role_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_ip_group_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ip_group_ids" expected to be of type "set"';
    {
      ip_group_ids: converted,
    }
  ),
  with_ip_group_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ip_group_ids" expected to be of type "set"';
    {
      ip_group_ids+: converted,
    }
  ),
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_registration_code(value):: (
    local converted = value;
    assert std.isString(converted) : '"registration_code" expected to be of type "string"';
    {
      registration_code: converted,
    }
  ),
  with_saml_properties(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"saml_properties" expected to be of type "list"';
    {
      saml_properties: converted,
    }
  ),
  with_saml_properties_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"saml_properties" expected to be of type "list"';
    {
      saml_properties+: converted,
    }
  ),
  with_self_service_permissions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"self_service_permissions" expected to be of type "list"';
    {
      self_service_permissions: converted,
    }
  ),
  with_self_service_permissions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"self_service_permissions" expected to be of type "list"';
    {
      self_service_permissions+: converted,
    }
  ),
  with_subnet_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
    {
      subnet_ids: converted,
    }
  ),
  with_subnet_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
    {
      subnet_ids+: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_user_identity_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_identity_type" expected to be of type "string"';
    {
      user_identity_type: converted,
    }
  ),
  with_workspace_access_properties(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"workspace_access_properties" expected to be of type "list"';
    {
      workspace_access_properties: converted,
    }
  ),
  with_workspace_access_properties_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"workspace_access_properties" expected to be of type "list"';
    {
      workspace_access_properties+: converted,
    }
  ),
  with_workspace_creation_properties(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"workspace_creation_properties" expected to be of type "list"';
    {
      workspace_creation_properties: converted,
    }
  ),
  with_workspace_creation_properties_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"workspace_creation_properties" expected to be of type "list"';
    {
      workspace_creation_properties+: converted,
    }
  ),
  with_workspace_directory_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"workspace_directory_description" expected to be of type "string"';
    {
      workspace_directory_description: converted,
    }
  ),
  with_workspace_directory_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"workspace_directory_name" expected to be of type "string"';
    {
      workspace_directory_name: converted,
    }
  ),
  with_workspace_security_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"workspace_security_group_id" expected to be of type "string"';
    {
      workspace_security_group_id: converted,
    }
  ),
  with_workspace_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"workspace_type" expected to be of type "string"';
    {
      workspace_type: converted,
    }
  ),
}
