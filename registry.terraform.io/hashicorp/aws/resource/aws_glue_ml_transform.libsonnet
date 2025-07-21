{
  local block = self,
  new(name, role_arn):: (
    {}
    + block.with_name(name)
    + block.with_role_arn(role_arn)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_glue_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"glue_version" expected to be of type "string"';
    {
      glue_version: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_label_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"label_count" expected to be of type "number"';
    {
      label_count: converted,
    }
  ),
  with_max_capacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_capacity" expected to be of type "number"';
    {
      max_capacity: converted,
    }
  ),
  with_max_retries(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_retries" expected to be of type "number"';
    {
      max_retries: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_number_of_workers(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"number_of_workers" expected to be of type "number"';
    {
      number_of_workers: converted,
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
  with_schema(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"schema" expected to be of type "list"';
    {
      schema: converted,
    }
  ),
  with_schema_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"schema" expected to be of type "list"';
    {
      schema+: converted,
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
  with_timeout(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"timeout" expected to be of type "number"';
    {
      timeout: converted,
    }
  ),
  with_worker_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"worker_type" expected to be of type "string"';
    {
      worker_type: converted,
    }
  ),
  input_record_tables:: {
    local block = self,
    new(database_name, table_name):: (
      {}
      + block.with_database_name(database_name)
      + block.with_table_name(table_name)
    ),
    with_catalog_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"catalog_id" expected to be of type "string"';
      {
        catalog_id: converted,
      }
    ),
    with_connection_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"connection_name" expected to be of type "string"';
      {
        connection_name: converted,
      }
    ),
    with_database_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"database_name" expected to be of type "string"';
      {
        database_name: converted,
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
  parameters:: {
    local block = self,
    new(transform_type):: (
      {}
      + block.with_transform_type(transform_type)
    ),
    with_transform_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"transform_type" expected to be of type "string"';
      {
        transform_type: converted,
      }
    ),
    find_matches_parameters:: {
      local block = self,
      new():: (
        {}
      ),
      with_accuracy_cost_trade_off(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"accuracy_cost_trade_off" expected to be of type "number"';
        {
          accuracy_cost_trade_off: converted,
        }
      ),
      with_enforce_provided_labels(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enforce_provided_labels" expected to be of type "bool"';
        {
          enforce_provided_labels: converted,
        }
      ),
      with_precision_recall_trade_off(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"precision_recall_trade_off" expected to be of type "number"';
        {
          precision_recall_trade_off: converted,
        }
      ),
      with_primary_key_column_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"primary_key_column_name" expected to be of type "string"';
        {
          primary_key_column_name: converted,
        }
      ),
    },
    with_find_matches_parameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        find_matches_parameters: value,
      }
    ),
    with_find_matches_parameters_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        find_matches_parameters+: converted,
      }
    ),
  },
  with_input_record_tables(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_record_tables: value,
    }
  ),
  with_parameters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parameters: value,
    }
  ),
  with_input_record_tables_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_record_tables+: converted,
    }
  ),
  with_parameters_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parameters+: converted,
    }
  ),
}
