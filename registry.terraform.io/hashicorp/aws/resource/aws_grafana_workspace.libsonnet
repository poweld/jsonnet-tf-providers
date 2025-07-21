{
  local block = self,
  new(account_access_type, authentication_providers, permission_type):: (
    {}
    + block.with_account_access_type(account_access_type)
    + block.with_authentication_providers(authentication_providers)
    + block.with_permission_type(permission_type)
  ),
  with_account_access_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_access_type" expected to be of type "string"';
    {
      account_access_type: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_authentication_providers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"authentication_providers" expected to be of type "list"';
    {
      authentication_providers: converted,
    }
  ),
  with_authentication_providers_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"authentication_providers" expected to be of type "list"';
    {
      authentication_providers+: converted,
    }
  ),
  with_configuration(value):: (
    local converted = value;
    assert std.isString(converted) : '"configuration" expected to be of type "string"';
    {
      configuration: converted,
    }
  ),
  with_data_sources(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"data_sources" expected to be of type "list"';
    {
      data_sources: converted,
    }
  ),
  with_data_sources_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"data_sources" expected to be of type "list"';
    {
      data_sources+: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint" expected to be of type "string"';
    {
      endpoint: converted,
    }
  ),
  with_grafana_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"grafana_version" expected to be of type "string"';
    {
      grafana_version: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_notification_destinations(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"notification_destinations" expected to be of type "list"';
    {
      notification_destinations: converted,
    }
  ),
  with_notification_destinations_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"notification_destinations" expected to be of type "list"';
    {
      notification_destinations+: converted,
    }
  ),
  with_organization_role_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"organization_role_name" expected to be of type "string"';
    {
      organization_role_name: converted,
    }
  ),
  with_organizational_units(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"organizational_units" expected to be of type "list"';
    {
      organizational_units: converted,
    }
  ),
  with_organizational_units_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"organizational_units" expected to be of type "list"';
    {
      organizational_units+: converted,
    }
  ),
  with_permission_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"permission_type" expected to be of type "string"';
    {
      permission_type: converted,
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
  with_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
    }
  ),
  with_saml_configuration_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"saml_configuration_status" expected to be of type "string"';
    {
      saml_configuration_status: converted,
    }
  ),
  with_stack_set_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"stack_set_name" expected to be of type "string"';
    {
      stack_set_name: converted,
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
  network_access_control:: {
    local block = self,
    new(prefix_list_ids, vpce_ids):: (
      {}
      + block.with_prefix_list_ids(prefix_list_ids)
      + block.with_vpce_ids(vpce_ids)
    ),
    with_prefix_list_ids(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"prefix_list_ids" expected to be of type "set"';
      {
        prefix_list_ids: converted,
      }
    ),
    with_prefix_list_ids_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"prefix_list_ids" expected to be of type "set"';
      {
        prefix_list_ids+: converted,
      }
    ),
    with_vpce_ids(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpce_ids" expected to be of type "set"';
      {
        vpce_ids: converted,
      }
    ),
    with_vpce_ids_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpce_ids" expected to be of type "set"';
      {
        vpce_ids+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  vpc_configuration:: {
    local block = self,
    new(security_group_ids, subnet_ids):: (
      {}
      + block.with_security_group_ids(security_group_ids)
      + block.with_subnet_ids(subnet_ids)
    ),
    with_security_group_ids(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
      {
        security_group_ids: converted,
      }
    ),
    with_security_group_ids_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
      {
        security_group_ids+: converted,
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
  },
  with_network_access_control(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_access_control: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_vpc_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_configuration: value,
    }
  ),
  with_network_access_control_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_access_control+: converted,
    }
  ),
  with_vpc_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_configuration+: converted,
    }
  ),
}
