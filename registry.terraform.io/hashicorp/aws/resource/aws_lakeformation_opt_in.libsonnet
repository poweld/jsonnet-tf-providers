{
  local block = self,
  new():: (
    {}
  ),
  with_last_modified(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_modified" expected to be of type "string"';
    {
      last_modified: converted,
    }
  ),
  with_last_updated_by(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_updated_by" expected to be of type "string"';
    {
      last_updated_by: converted,
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
  condition:: {
    local block = self,
    new():: (
      {}
    ),
    with_expression(value):: (
      local converted = value;
      assert std.isString(converted) : '"expression" expected to be of type "string"';
      {
        expression: converted,
      }
    ),
  },
  principal:: {
    local block = self,
    new(data_lake_principal_identifier):: (
      {}
      + block.with_data_lake_principal_identifier(data_lake_principal_identifier)
    ),
    with_data_lake_principal_identifier(value):: (
      local converted = value;
      assert std.isString(converted) : '"data_lake_principal_identifier" expected to be of type "string"';
      {
        data_lake_principal_identifier: converted,
      }
    ),
  },
  resource_data:: {
    local block = self,
    new():: (
      {}
    ),
    catalog:: {
      local block = self,
      new():: (
        {}
      ),
      with_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"id" expected to be of type "string"';
        {
          id: converted,
        }
      ),
    },
    data_cells_filter:: {
      local block = self,
      new():: (
        {}
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
      new(resource_arn):: (
        {}
        + block.with_resource_arn(resource_arn)
      ),
      with_catalog_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"catalog_id" expected to be of type "string"';
        {
          catalog_id: converted,
        }
      ),
      with_resource_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
        {
          resource_arn: converted,
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
      new(key, value):: (
        {}
        + block.with_key(key)
        + block.with_value(value)
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
      with_value(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    lf_tag_expression:: {
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
      with_expression(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"expression" expected to be of type "list"';
        {
          expression: converted,
        }
      ),
      with_expression_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"expression" expected to be of type "list"';
        {
          expression+: converted,
        }
      ),
      with_expression_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"expression_name" expected to be of type "string"';
        {
          expression_name: converted,
        }
      ),
      with_resource_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"resource_type" expected to be of type "string"';
        {
          resource_type: converted,
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
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      column_wildcard:: {
        local block = self,
        new():: (
          {}
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
      },
      with_column_wildcard(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          column_wildcard: value,
        }
      ),
      with_column_wildcard_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          column_wildcard+: converted,
        }
      ),
    },
    with_catalog(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        catalog: value,
      }
    ),
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
    with_lf_tag_expression(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lf_tag_expression: value,
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
    with_catalog_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        catalog+: converted,
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
    with_lf_tag_expression_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lf_tag_expression+: converted,
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
  },
  with_condition(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      condition: value,
    }
  ),
  with_principal(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      principal: value,
    }
  ),
  with_resource_data(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource_data: value,
    }
  ),
  with_condition_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      condition+: converted,
    }
  ),
  with_principal_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      principal+: converted,
    }
  ),
  with_resource_data_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource_data+: converted,
    }
  ),
}
