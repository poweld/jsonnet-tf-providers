{
  local block = self,
  new(catalog_id, database_name, table_name, type):: (
    {}
    + block.with_catalog_id(catalog_id)
    + block.with_database_name(database_name)
    + block.with_table_name(table_name)
    + block.with_type(type)
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
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  configuration:: {
    local block = self,
    new(enabled, role_arn):: (
      {}
      + block.with_enabled(enabled)
      + block.with_role_arn(role_arn)
    ),
    with_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    orphan_file_deletion_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      iceberg_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        with_location(value):: (
          local converted = value;
          assert std.isString(converted) : '"location" expected to be of type "string"';
          {
            location: converted,
          }
        ),
        with_orphan_file_retention_period_in_days(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"orphan_file_retention_period_in_days" expected to be of type "number"';
          {
            orphan_file_retention_period_in_days: converted,
          }
        ),
      },
      with_iceberg_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          iceberg_configuration: value,
        }
      ),
      with_iceberg_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          iceberg_configuration+: converted,
        }
      ),
    },
    retention_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      iceberg_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        with_clean_expired_files(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"clean_expired_files" expected to be of type "bool"';
          {
            clean_expired_files: converted,
          }
        ),
        with_number_of_snapshots_to_retain(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"number_of_snapshots_to_retain" expected to be of type "number"';
          {
            number_of_snapshots_to_retain: converted,
          }
        ),
        with_snapshot_retention_period_in_days(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"snapshot_retention_period_in_days" expected to be of type "number"';
          {
            snapshot_retention_period_in_days: converted,
          }
        ),
      },
      with_iceberg_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          iceberg_configuration: value,
        }
      ),
      with_iceberg_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          iceberg_configuration+: converted,
        }
      ),
    },
    with_orphan_file_deletion_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        orphan_file_deletion_configuration: value,
      }
    ),
    with_retention_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        retention_configuration: value,
      }
    ),
    with_orphan_file_deletion_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        orphan_file_deletion_configuration+: converted,
      }
    ),
    with_retention_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        retention_configuration+: converted,
      }
    ),
  },
  with_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration: value,
    }
  ),
  with_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration+: converted,
    }
  ),
}
