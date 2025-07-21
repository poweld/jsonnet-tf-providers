{
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
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  table_data:: {
    local block = self,
    new(database_name, name, table_catalog_id, table_name):: (
      {}
      + block.with_database_name(database_name)
      + block.with_name(name)
      + block.with_table_catalog_id(table_catalog_id)
      + block.with_table_name(table_name)
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
    with_version_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"version_id" expected to be of type "string"';
      {
        version_id: converted,
      }
    ),
    column_wildcard:: {
      local block = self,
      new():: (
        {}
      ),
      with_excluded_column_names(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"excluded_column_names" expected to be of type "list"';
        {
          excluded_column_names: converted,
        }
      ),
      with_excluded_column_names_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"excluded_column_names" expected to be of type "list"';
        {
          excluded_column_names+: converted,
        }
      ),
    },
    row_filter:: {
      local block = self,
      new():: (
        {}
      ),
      with_filter_expression(value):: (
        local converted = value;
        assert std.isString(converted) : '"filter_expression" expected to be of type "string"';
        {
          filter_expression: converted,
        }
      ),
      all_rows_wildcard:: {
        local block = self,
        new():: (
          {}
        ),
      },
      with_all_rows_wildcard(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          all_rows_wildcard: value,
        }
      ),
      with_all_rows_wildcard_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          all_rows_wildcard+: converted,
        }
      ),
    },
    with_column_wildcard(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        column_wildcard: value,
      }
    ),
    with_row_filter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        row_filter: value,
      }
    ),
    with_column_wildcard_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        column_wildcard+: converted,
      }
    ),
    with_row_filter_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        row_filter+: converted,
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
  },
  with_table_data(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      table_data: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_table_data_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      table_data+: converted,
    }
  ),
}
