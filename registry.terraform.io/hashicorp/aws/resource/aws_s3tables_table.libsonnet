{
  local block = self,
  new(format, name, namespace, table_bucket_arn):: (
    {}
    + block.with_format(format)
    + block.with_name(name)
    + block.with_namespace(namespace)
    + block.with_table_bucket_arn(table_bucket_arn)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_created_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_at" expected to be of type "string"';
    {
      created_at: converted,
    }
  ),
  with_created_by(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_by" expected to be of type "string"';
    {
      created_by: converted,
    }
  ),
  with_encryption_configuration(value):: (
    local converted = value;
    assert std.isObject(converted) : '"encryption_configuration" expected to be of type "object"';
    {
      encryption_configuration: converted,
    }
  ),
  with_format(value):: (
    local converted = value;
    assert std.isString(converted) : '"format" expected to be of type "string"';
    {
      format: converted,
    }
  ),
  with_maintenance_configuration(value):: (
    local converted = value;
    assert std.isObject(converted) : '"maintenance_configuration" expected to be of type "object"';
    {
      maintenance_configuration: converted,
    }
  ),
  with_metadata_location(value):: (
    local converted = value;
    assert std.isString(converted) : '"metadata_location" expected to be of type "string"';
    {
      metadata_location: converted,
    }
  ),
  with_modified_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"modified_at" expected to be of type "string"';
    {
      modified_at: converted,
    }
  ),
  with_modified_by(value):: (
    local converted = value;
    assert std.isString(converted) : '"modified_by" expected to be of type "string"';
    {
      modified_by: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_namespace(value):: (
    local converted = value;
    assert std.isString(converted) : '"namespace" expected to be of type "string"';
    {
      namespace: converted,
    }
  ),
  with_owner_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_account_id" expected to be of type "string"';
    {
      owner_account_id: converted,
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
  with_table_bucket_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"table_bucket_arn" expected to be of type "string"';
    {
      table_bucket_arn: converted,
    }
  ),
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  with_version_token(value):: (
    local converted = value;
    assert std.isString(converted) : '"version_token" expected to be of type "string"';
    {
      version_token: converted,
    }
  ),
  with_warehouse_location(value):: (
    local converted = value;
    assert std.isString(converted) : '"warehouse_location" expected to be of type "string"';
    {
      warehouse_location: converted,
    }
  ),
  metadata:: {
    local block = self,
    new():: (
      {}
    ),
    iceberg:: {
      local block = self,
      new():: (
        {}
      ),
      schema:: {
        local block = self,
        new():: (
          {}
        ),
        field:: {
          local block = self,
          new(name, type):: (
            {}
            + block.with_name(name)
            + block.with_type(type)
          ),
          '#with_name':: 'The name of the field.',
          with_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"name" expected to be of type "string"';
            {
              name: converted,
            }
          ),
          '#with_required':: 'A Boolean value that specifies whether values are required for each row in this field. Default: false.',
          with_required(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"required" expected to be of type "bool"';
            {
              required: converted,
            }
          ),
          '#with_type':: 'The field type. S3 Tables supports all Apache Iceberg primitive types.',
          with_type(value):: (
            local converted = value;
            assert std.isString(converted) : '"type" expected to be of type "string"';
            {
              type: converted,
            }
          ),
        },
        with_field(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            field: value,
          }
        ),
        with_field_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            field+: converted,
          }
        ),
      },
      with_schema(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          schema: value,
        }
      ),
      with_schema_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          schema+: converted,
        }
      ),
    },
    with_iceberg(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        iceberg: value,
      }
    ),
    with_iceberg_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        iceberg+: converted,
      }
    ),
  },
  with_metadata(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      metadata: value,
    }
  ),
  with_metadata_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      metadata+: converted,
    }
  ),
}
