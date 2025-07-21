{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_catalog_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"catalog_id" expected to be of type "string"';
    {
      catalog_id: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_location_uri(value):: (
    local converted = value;
    assert std.isString(converted) : '"location_uri" expected to be of type "string"';
    {
      location_uri: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_parameters(value):: (
    local converted = value;
    assert std.isObject(converted) : '"parameters" expected to be of type "map"';
    {
      parameters: converted,
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
  create_table_default_permission:: {
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
    principal:: {
      local block = self,
      new():: (
        {}
      ),
      with_data_lake_principal_identifier(value):: (
        local converted = value;
        assert std.isString(converted) : '"data_lake_principal_identifier" expected to be of type "string"';
        {
          data_lake_principal_identifier: converted,
        }
      ),
    },
    with_principal(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        principal: value,
      }
    ),
    with_principal_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        principal+: converted,
      }
    ),
  },
  federated_database:: {
    local block = self,
    new():: (
      {}
    ),
    with_connection_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"connection_name" expected to be of type "string"';
      {
        connection_name: converted,
      }
    ),
    with_identifier(value):: (
      local converted = value;
      assert std.isString(converted) : '"identifier" expected to be of type "string"';
      {
        identifier: converted,
      }
    ),
  },
  target_database:: {
    local block = self,
    new(catalog_id, database_name):: (
      {}
      + block.with_catalog_id(catalog_id)
      + block.with_database_name(database_name)
    ),
    with_catalog_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"catalog_id" expected to be of type "string"';
      {
        catalog_id: converted,
      }
    ),
    with_database_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"database_name" expected to be of type "string"';
      {
        database_name: converted,
      }
    ),
    with_region(value):: (
      local converted = value;
      assert std.isString(converted) : '"region" expected to be of type "string"';
      {
        region: converted,
      }
    ),
  },
  with_create_table_default_permission(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      create_table_default_permission: value,
    }
  ),
  with_federated_database(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      federated_database: value,
    }
  ),
  with_target_database(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_database: value,
    }
  ),
  with_create_table_default_permission_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      create_table_default_permission+: converted,
    }
  ),
  with_federated_database_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      federated_database+: converted,
    }
  ),
  with_target_database_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_database+: converted,
    }
  ),
}
