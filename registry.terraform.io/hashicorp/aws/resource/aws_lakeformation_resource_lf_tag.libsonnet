{
  local block = self,
  new():: (
    {}
  ),
  with_catalog_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"catalog_id" expected to be of type "string"';
    {
      catalog_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_create':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    '#with_delete':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
  },
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
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
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
