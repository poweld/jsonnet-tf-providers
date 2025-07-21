{
  local block = self,
  new():: (
    {}
  ),
  with_alias(value):: (
    local converted = value;
    assert std.isString(converted) : '"alias" expected to be of type "string"';
    {
      alias: converted,
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
  with_tags_all(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  with_user_identity_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_identity_type" expected to be of type "string"';
    {
      user_identity_type: converted,
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
  active_directory_config:: {
    local block = self,
    new(domain_name, service_account_secret_arn):: (
      {}
      + block.with_domain_name(domain_name)
      + block.with_service_account_secret_arn(service_account_secret_arn)
    ),
    with_domain_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"domain_name" expected to be of type "string"';
      {
        domain_name: converted,
      }
    ),
    with_service_account_secret_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"service_account_secret_arn" expected to be of type "string"';
      {
        service_account_secret_arn: converted,
      }
    ),
  },
  certificate_based_auth_properties:: {
    local block = self,
    new():: (
      {}
    ),
    with_certificate_authority_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"certificate_authority_arn" expected to be of type "string"';
      {
        certificate_authority_arn: converted,
      }
    ),
    with_status(value):: (
      local converted = value;
      assert std.isString(converted) : '"status" expected to be of type "string"';
      {
        status: converted,
      }
    ),
  },
  saml_properties:: {
    local block = self,
    new():: (
      {}
    ),
    with_relay_state_parameter_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"relay_state_parameter_name" expected to be of type "string"';
      {
        relay_state_parameter_name: converted,
      }
    ),
    with_status(value):: (
      local converted = value;
      assert std.isString(converted) : '"status" expected to be of type "string"';
      {
        status: converted,
      }
    ),
    with_user_access_url(value):: (
      local converted = value;
      assert std.isString(converted) : '"user_access_url" expected to be of type "string"';
      {
        user_access_url: converted,
      }
    ),
  },
  self_service_permissions:: {
    local block = self,
    new():: (
      {}
    ),
    with_change_compute_type(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"change_compute_type" expected to be of type "bool"';
      {
        change_compute_type: converted,
      }
    ),
    with_increase_volume_size(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"increase_volume_size" expected to be of type "bool"';
      {
        increase_volume_size: converted,
      }
    ),
    with_rebuild_workspace(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"rebuild_workspace" expected to be of type "bool"';
      {
        rebuild_workspace: converted,
      }
    ),
    with_restart_workspace(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"restart_workspace" expected to be of type "bool"';
      {
        restart_workspace: converted,
      }
    ),
    with_switch_running_mode(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"switch_running_mode" expected to be of type "bool"';
      {
        switch_running_mode: converted,
      }
    ),
  },
  workspace_access_properties:: {
    local block = self,
    new():: (
      {}
    ),
    with_device_type_android(value):: (
      local converted = value;
      assert std.isString(converted) : '"device_type_android" expected to be of type "string"';
      {
        device_type_android: converted,
      }
    ),
    with_device_type_chromeos(value):: (
      local converted = value;
      assert std.isString(converted) : '"device_type_chromeos" expected to be of type "string"';
      {
        device_type_chromeos: converted,
      }
    ),
    with_device_type_ios(value):: (
      local converted = value;
      assert std.isString(converted) : '"device_type_ios" expected to be of type "string"';
      {
        device_type_ios: converted,
      }
    ),
    with_device_type_linux(value):: (
      local converted = value;
      assert std.isString(converted) : '"device_type_linux" expected to be of type "string"';
      {
        device_type_linux: converted,
      }
    ),
    with_device_type_osx(value):: (
      local converted = value;
      assert std.isString(converted) : '"device_type_osx" expected to be of type "string"';
      {
        device_type_osx: converted,
      }
    ),
    with_device_type_web(value):: (
      local converted = value;
      assert std.isString(converted) : '"device_type_web" expected to be of type "string"';
      {
        device_type_web: converted,
      }
    ),
    with_device_type_windows(value):: (
      local converted = value;
      assert std.isString(converted) : '"device_type_windows" expected to be of type "string"';
      {
        device_type_windows: converted,
      }
    ),
    with_device_type_zeroclient(value):: (
      local converted = value;
      assert std.isString(converted) : '"device_type_zeroclient" expected to be of type "string"';
      {
        device_type_zeroclient: converted,
      }
    ),
  },
  workspace_creation_properties:: {
    local block = self,
    new():: (
      {}
    ),
    with_custom_security_group_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"custom_security_group_id" expected to be of type "string"';
      {
        custom_security_group_id: converted,
      }
    ),
    with_default_ou(value):: (
      local converted = value;
      assert std.isString(converted) : '"default_ou" expected to be of type "string"';
      {
        default_ou: converted,
      }
    ),
    with_enable_internet_access(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_internet_access" expected to be of type "bool"';
      {
        enable_internet_access: converted,
      }
    ),
    with_enable_maintenance_mode(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_maintenance_mode" expected to be of type "bool"';
      {
        enable_maintenance_mode: converted,
      }
    ),
    with_user_enabled_as_local_administrator(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"user_enabled_as_local_administrator" expected to be of type "bool"';
      {
        user_enabled_as_local_administrator: converted,
      }
    ),
  },
  with_active_directory_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      active_directory_config: value,
    }
  ),
  with_certificate_based_auth_properties(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      certificate_based_auth_properties: value,
    }
  ),
  with_saml_properties(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      saml_properties: value,
    }
  ),
  with_self_service_permissions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      self_service_permissions: value,
    }
  ),
  with_workspace_access_properties(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      workspace_access_properties: value,
    }
  ),
  with_workspace_creation_properties(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      workspace_creation_properties: value,
    }
  ),
  with_active_directory_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      active_directory_config+: converted,
    }
  ),
  with_certificate_based_auth_properties_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      certificate_based_auth_properties+: converted,
    }
  ),
  with_saml_properties_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      saml_properties+: converted,
    }
  ),
  with_self_service_permissions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      self_service_permissions+: converted,
    }
  ),
  with_workspace_access_properties_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      workspace_access_properties+: converted,
    }
  ),
  with_workspace_creation_properties_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      workspace_creation_properties+: converted,
    }
  ),
}
