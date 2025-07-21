{
  local block = self,
  new(database_name, table_name):: (
    {}
    + block.with_database_name(database_name)
    + block.with_table_name(table_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_database_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"database_name" expected to be of type "string"';
    {
      database_name: converted,
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
  with_table_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"table_name" expected to be of type "string"';
    {
      table_name: converted,
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
  magnetic_store_write_properties:: {
    local block = self,
    new():: (
      {}
    ),
    with_enable_magnetic_store_writes(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_magnetic_store_writes" expected to be of type "bool"';
      {
        enable_magnetic_store_writes: converted,
      }
    ),
    magnetic_store_rejected_data_location:: {
      local block = self,
      new():: (
        {}
      ),
      s3_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        with_bucket_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
          {
            bucket_name: converted,
          }
        ),
        with_encryption_option(value):: (
          local converted = value;
          assert std.isString(converted) : '"encryption_option" expected to be of type "string"';
          {
            encryption_option: converted,
          }
        ),
        with_kms_key_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
          {
            kms_key_id: converted,
          }
        ),
        with_object_key_prefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"object_key_prefix" expected to be of type "string"';
          {
            object_key_prefix: converted,
          }
        ),
      },
      with_s3_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_configuration: value,
        }
      ),
      with_s3_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_configuration+: converted,
        }
      ),
    },
    with_magnetic_store_rejected_data_location(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        magnetic_store_rejected_data_location: value,
      }
    ),
    with_magnetic_store_rejected_data_location_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        magnetic_store_rejected_data_location+: converted,
      }
    ),
  },
  retention_properties:: {
    local block = self,
    new(magnetic_store_retention_period_in_days, memory_store_retention_period_in_hours):: (
      {}
      + block.with_magnetic_store_retention_period_in_days(magnetic_store_retention_period_in_days)
      + block.with_memory_store_retention_period_in_hours(memory_store_retention_period_in_hours)
    ),
    with_magnetic_store_retention_period_in_days(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"magnetic_store_retention_period_in_days" expected to be of type "number"';
      {
        magnetic_store_retention_period_in_days: converted,
      }
    ),
    with_memory_store_retention_period_in_hours(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"memory_store_retention_period_in_hours" expected to be of type "number"';
      {
        memory_store_retention_period_in_hours: converted,
      }
    ),
  },
  schema:: {
    local block = self,
    new():: (
      {}
    ),
    composite_partition_key:: {
      local block = self,
      new(type):: (
        {}
        + block.with_type(type)
      ),
      with_enforcement_in_record(value):: (
        local converted = value;
        assert std.isString(converted) : '"enforcement_in_record" expected to be of type "string"';
        {
          enforcement_in_record: converted,
        }
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    with_composite_partition_key(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        composite_partition_key: value,
      }
    ),
    with_composite_partition_key_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        composite_partition_key+: converted,
      }
    ),
  },
  with_magnetic_store_write_properties(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      magnetic_store_write_properties: value,
    }
  ),
  with_retention_properties(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      retention_properties: value,
    }
  ),
  with_schema(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schema: value,
    }
  ),
  with_magnetic_store_write_properties_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      magnetic_store_write_properties+: converted,
    }
  ),
  with_retention_properties_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      retention_properties+: converted,
    }
  ),
  with_schema_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schema+: converted,
    }
  ),
}
