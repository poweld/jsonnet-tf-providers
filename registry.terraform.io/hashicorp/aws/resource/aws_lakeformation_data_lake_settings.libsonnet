{
  local block = self,
  new():: (
    {}
  ),
  with_admins(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"admins" expected to be of type "set"';
    {
      admins: converted,
    }
  ),
  with_admins_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"admins" expected to be of type "set"';
    {
      admins+: converted,
    }
  ),
  with_allow_external_data_filtering(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"allow_external_data_filtering" expected to be of type "bool"';
    {
      allow_external_data_filtering: converted,
    }
  ),
  with_allow_full_table_external_data_access(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"allow_full_table_external_data_access" expected to be of type "bool"';
    {
      allow_full_table_external_data_access: converted,
    }
  ),
  with_authorized_session_tag_value_list(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"authorized_session_tag_value_list" expected to be of type "list"';
    {
      authorized_session_tag_value_list: converted,
    }
  ),
  with_authorized_session_tag_value_list_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"authorized_session_tag_value_list" expected to be of type "list"';
    {
      authorized_session_tag_value_list+: converted,
    }
  ),
  with_catalog_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"catalog_id" expected to be of type "string"';
    {
      catalog_id: converted,
    }
  ),
  with_external_data_filtering_allow_list(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"external_data_filtering_allow_list" expected to be of type "set"';
    {
      external_data_filtering_allow_list: converted,
    }
  ),
  with_external_data_filtering_allow_list_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"external_data_filtering_allow_list" expected to be of type "set"';
    {
      external_data_filtering_allow_list+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_parameters(value):: (
    local converted = value;
    assert std.isObject(converted) : '"parameters" expected to be of type "map"';
    {
      parameters: converted,
    }
  ),
  with_read_only_admins(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"read_only_admins" expected to be of type "set"';
    {
      read_only_admins: converted,
    }
  ),
  with_read_only_admins_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"read_only_admins" expected to be of type "set"';
    {
      read_only_admins+: converted,
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
  with_trusted_resource_owners(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"trusted_resource_owners" expected to be of type "list"';
    {
      trusted_resource_owners: converted,
    }
  ),
  with_trusted_resource_owners_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"trusted_resource_owners" expected to be of type "list"';
    {
      trusted_resource_owners+: converted,
    }
  ),
  create_database_default_permissions:: {
    local block = self,
    new():: (
      {}
    ),
    with_permissions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"permissions" expected to be of type "set"';
      {
        permissions: converted,
      }
    ),
    with_permissions_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"permissions" expected to be of type "set"';
      {
        permissions+: converted,
      }
    ),
    with_principal(value):: (
      local converted = value;
      assert std.isString(converted) : '"principal" expected to be of type "string"';
      {
        principal: converted,
      }
    ),
  },
  create_table_default_permissions:: {
    local block = self,
    new():: (
      {}
    ),
    with_permissions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"permissions" expected to be of type "set"';
      {
        permissions: converted,
      }
    ),
    with_permissions_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"permissions" expected to be of type "set"';
      {
        permissions+: converted,
      }
    ),
    with_principal(value):: (
      local converted = value;
      assert std.isString(converted) : '"principal" expected to be of type "string"';
      {
        principal: converted,
      }
    ),
  },
  with_create_database_default_permissions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      create_database_default_permissions: value,
    }
  ),
  with_create_table_default_permissions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      create_table_default_permissions: value,
    }
  ),
  with_create_database_default_permissions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      create_database_default_permissions+: converted,
    }
  ),
  with_create_table_default_permissions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      create_table_default_permissions+: converted,
    }
  ),
}
