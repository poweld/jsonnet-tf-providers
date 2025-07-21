{
  local block = self,
  new(app_bundle_arn, ingestion_arn):: (
    {}
    + block.with_app_bundle_arn(app_bundle_arn)
    + block.with_ingestion_arn(ingestion_arn)
  ),
  with_app_bundle_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_bundle_arn" expected to be of type "string"';
    {
      app_bundle_arn: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_ingestion_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"ingestion_arn" expected to be of type "string"';
    {
      ingestion_arn: converted,
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
  destination_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    audit_log:: {
      local block = self,
      new():: (
        {}
      ),
      destination:: {
        local block = self,
        new():: (
          {}
        ),
        firehose_stream:: {
          local block = self,
          new(stream_name):: (
            {}
            + block.with_stream_name(stream_name)
          ),
          with_stream_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"stream_name" expected to be of type "string"';
            {
              stream_name: converted,
            }
          ),
        },
        s3_bucket:: {
          local block = self,
          new(bucket_name):: (
            {}
            + block.with_bucket_name(bucket_name)
          ),
          with_bucket_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
            {
              bucket_name: converted,
            }
          ),
          with_prefix(value):: (
            local converted = value;
            assert std.isString(converted) : '"prefix" expected to be of type "string"';
            {
              prefix: converted,
            }
          ),
        },
        with_firehose_stream(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            firehose_stream: value,
          }
        ),
        with_s3_bucket(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_bucket: value,
          }
        ),
        with_firehose_stream_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            firehose_stream+: converted,
          }
        ),
        with_s3_bucket_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_bucket+: converted,
          }
        ),
      },
      with_destination(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          destination: value,
        }
      ),
      with_destination_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          destination+: converted,
        }
      ),
    },
    with_audit_log(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        audit_log: value,
      }
    ),
    with_audit_log_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        audit_log+: converted,
      }
    ),
  },
  processing_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    audit_log:: {
      local block = self,
      new(format, schema):: (
        {}
        + block.with_format(format)
        + block.with_schema(schema)
      ),
      with_format(value):: (
        local converted = value;
        assert std.isString(converted) : '"format" expected to be of type "string"';
        {
          format: converted,
        }
      ),
      with_schema(value):: (
        local converted = value;
        assert std.isString(converted) : '"schema" expected to be of type "string"';
        {
          schema: converted,
        }
      ),
    },
    with_audit_log(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        audit_log: value,
      }
    ),
    with_audit_log_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        audit_log+: converted,
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
    '#with_update':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_destination_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination_configuration: value,
    }
  ),
  with_processing_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      processing_configuration: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_destination_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination_configuration+: converted,
    }
  ),
  with_processing_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      processing_configuration+: converted,
    }
  ),
}
