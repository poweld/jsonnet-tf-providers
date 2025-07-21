{
  local block = self,
  new(instance_id, resource_type):: (
    {}
    + block.with_instance_id(instance_id)
    + block.with_resource_type(resource_type)
  ),
  with_association_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"association_id" expected to be of type "string"';
    {
      association_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_instance_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_id" expected to be of type "string"';
    {
      instance_id: converted,
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
  with_resource_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_type" expected to be of type "string"';
    {
      resource_type: converted,
    }
  ),
  storage_config:: {
    local block = self,
    new(storage_type):: (
      {}
      + block.with_storage_type(storage_type)
    ),
    with_storage_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"storage_type" expected to be of type "string"';
      {
        storage_type: converted,
      }
    ),
    kinesis_firehose_config:: {
      local block = self,
      new(firehose_arn):: (
        {}
        + block.with_firehose_arn(firehose_arn)
      ),
      with_firehose_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"firehose_arn" expected to be of type "string"';
        {
          firehose_arn: converted,
        }
      ),
    },
    kinesis_stream_config:: {
      local block = self,
      new(stream_arn):: (
        {}
        + block.with_stream_arn(stream_arn)
      ),
      with_stream_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"stream_arn" expected to be of type "string"';
        {
          stream_arn: converted,
        }
      ),
    },
    kinesis_video_stream_config:: {
      local block = self,
      new(prefix, retention_period_hours):: (
        {}
        + block.with_prefix(prefix)
        + block.with_retention_period_hours(retention_period_hours)
      ),
      with_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"prefix" expected to be of type "string"';
        {
          prefix: converted,
        }
      ),
      with_retention_period_hours(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"retention_period_hours" expected to be of type "number"';
        {
          retention_period_hours: converted,
        }
      ),
      encryption_config:: {
        local block = self,
        new(encryption_type, key_id):: (
          {}
          + block.with_encryption_type(encryption_type)
          + block.with_key_id(key_id)
        ),
        with_encryption_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"encryption_type" expected to be of type "string"';
          {
            encryption_type: converted,
          }
        ),
        with_key_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"key_id" expected to be of type "string"';
          {
            key_id: converted,
          }
        ),
      },
      with_encryption_config(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          encryption_config: value,
        }
      ),
      with_encryption_config_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          encryption_config+: converted,
        }
      ),
    },
    s3_config:: {
      local block = self,
      new(bucket_name, bucket_prefix):: (
        {}
        + block.with_bucket_name(bucket_name)
        + block.with_bucket_prefix(bucket_prefix)
      ),
      with_bucket_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
        {
          bucket_name: converted,
        }
      ),
      with_bucket_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
        {
          bucket_prefix: converted,
        }
      ),
      encryption_config:: {
        local block = self,
        new(encryption_type, key_id):: (
          {}
          + block.with_encryption_type(encryption_type)
          + block.with_key_id(key_id)
        ),
        with_encryption_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"encryption_type" expected to be of type "string"';
          {
            encryption_type: converted,
          }
        ),
        with_key_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"key_id" expected to be of type "string"';
          {
            key_id: converted,
          }
        ),
      },
      with_encryption_config(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          encryption_config: value,
        }
      ),
      with_encryption_config_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          encryption_config+: converted,
        }
      ),
    },
    with_kinesis_firehose_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_firehose_config: value,
      }
    ),
    with_kinesis_stream_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_stream_config: value,
      }
    ),
    with_kinesis_video_stream_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_video_stream_config: value,
      }
    ),
    with_s3_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_config: value,
      }
    ),
    with_kinesis_firehose_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_firehose_config+: converted,
      }
    ),
    with_kinesis_stream_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_stream_config+: converted,
      }
    ),
    with_kinesis_video_stream_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_video_stream_config+: converted,
      }
    ),
    with_s3_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_config+: converted,
      }
    ),
  },
  with_storage_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_config: value,
    }
  ),
  with_storage_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_config+: converted,
    }
  ),
}
