{
  local block = self,
  new(principal):: (
    {}
    + block.with_principal(principal)
  ),
  with_catalog_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"catalog_id" expected to be of type "string"';
    {
      catalog_id: converted,
    }
  ),
  with_catalog_resource(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"catalog_resource" expected to be of type "bool"';
    {
      catalog_resource: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_permissions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"permissions" expected to be of type "list"';
    {
      permissions: converted,
    }
  ),
  with_permissions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"permissions" expected to be of type "list"';
    {
      permissions+: converted,
    }
  ),
  with_permissions_with_grant_option(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"permissions_with_grant_option" expected to be of type "list"';
    {
      permissions_with_grant_option: converted,
    }
  ),
  with_permissions_with_grant_option_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"permissions_with_grant_option" expected to be of type "list"';
    {
      permissions_with_grant_option+: converted,
    }
  ),
  with_principal(value):: (
    local converted = value;
    assert std.isString(converted) : '"principal" expected to be of type "string"';
    {
      principal: converted,
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
  data_cells_filter:: {
    local block = self,
    new(database_name, name, table_catalog_id, table_name):: (
      {}
      + block.with_database_name(database_name)
      + block.with_name(name)
      + block.with_table_catalog_id(table_catalog_id)
      + block.with_table_name(table_name)
    ),
    with_database_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"database_name" expected to be of type "string"';
      {
        database_name: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_table_catalog_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"table_catalog_id" expected to be of type "string"';
      {
        table_catalog_id: converted,
      }
    ),
    with_table_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"table_name" expected to be of type "string"';
      {
        table_name: converted,
      }
    ),
  },
  data_location:: {
    local block = self,
    new(arn):: (
      {}
      + block.with_arn(arn)
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
  },
  database:: {
    local block = self,
    new(name):: (
      {}
      + block.with_name(name)
    ),
    with_catalog_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"catalog_id" expected to be of type "string"';
      {
        catalog_id: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
  },
  lf_tag:: {
    local block = self,
    new(key, values):: (
      {}
      + block.with_key(key)
      + block.with_values(values)
    ),
    with_catalog_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"catalog_id" expected to be of type "string"';
      {
        catalog_id: converted,
      }
    ),
    with_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
      }
    ),
    with_values(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
      {
        values: converted,
      }
    ),
    with_values_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
      {
        values+: converted,
      }
    ),
  },
  lf_tag_policy:: {
    local block = self,
    new(resource_type):: (
      {}
      + block.with_resource_type(resource_type)
    ),
    with_catalog_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"catalog_id" expected to be of type "string"';
      {
        catalog_id: converted,
      }
    ),
    with_resource_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"resource_type" expected to be of type "string"';
      {
        resource_type: converted,
      }
    ),
    expression:: {
      local block = self,
      new(key, values):: (
        {}
        + block.with_key(key)
        + block.with_values(values)
      ),
      with_key(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
        }
      ),
      with_values(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values: converted,
        }
      ),
      with_values_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values+: converted,
        }
      ),
    },
    with_expression(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        expression: value,
      }
    ),
    with_expression_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        expression+: converted,
      }
    ),
  },
  table:: {
    local block = self,
    new(database_name):: (
      {}
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
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_wildcard(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"wildcard" expected to be of type "bool"';
      {
        wildcard: converted,
      }
    ),
  },
  table_with_columns:: {
    local block = self,
    new(database_name, name):: (
      {}
      + block.with_database_name(database_name)
      + block.with_name(name)
    ),
    with_catalog_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"catalog_id" expected to be of type "string"';
      {
        catalog_id: converted,
      }
    ),
    with_column_names(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"column_names" expected to be of type "set"';
      {
        column_names: converted,
      }
    ),
    with_column_names_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"column_names" expected to be of type "set"';
      {
        column_names+: converted,
      }
    ),
    with_database_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"database_name" expected to be of type "string"';
      {
        database_name: converted,
      }
    ),
    with_excluded_column_names(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"excluded_column_names" expected to be of type "set"';
      {
        excluded_column_names: converted,
      }
    ),
    with_excluded_column_names_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"excluded_column_names" expected to be of type "set"';
      {
        excluded_column_names+: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_wildcard(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"wildcard" expected to be of type "bool"';
      {
        wildcard: converted,
      }
    ),
  },
  with_data_cells_filter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_cells_filter: value,
    }
  ),
  with_data_location(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_location: value,
    }
  ),
  with_database(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      database: value,
    }
  ),
  with_lf_tag(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lf_tag: value,
    }
  ),
  with_lf_tag_policy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lf_tag_policy: value,
    }
  ),
  with_table(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      table: value,
    }
  ),
  with_table_with_columns(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      table_with_columns: value,
    }
  ),
  with_data_cells_filter_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_cells_filter+: converted,
    }
  ),
  with_data_location_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_location+: converted,
    }
  ),
  with_database_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      database+: converted,
    }
  ),
  with_lf_tag_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lf_tag+: converted,
    }
  ),
  with_lf_tag_policy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lf_tag_policy+: converted,
    }
  ),
  with_table_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      table+: converted,
    }
  ),
  with_table_with_columns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      table_with_columns+: converted,
    }
  ),
}
