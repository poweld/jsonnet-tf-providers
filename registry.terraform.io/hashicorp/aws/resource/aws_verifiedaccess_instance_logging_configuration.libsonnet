{
  local block = self,
  new(verifiedaccess_instance_id):: (
    {}
    + block.with_verifiedaccess_instance_id(verifiedaccess_instance_id)
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
  with_verifiedaccess_instance_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"verifiedaccess_instance_id" expected to be of type "string"';
    {
      verifiedaccess_instance_id: converted,
    }
  ),
  access_logs:: {
    local block = self,
    new():: (
      {}
    ),
    with_include_trust_context(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_trust_context" expected to be of type "bool"';
      {
        include_trust_context: converted,
      }
    ),
    with_log_version(value):: (
      local converted = value;
      assert std.isString(converted) : '"log_version" expected to be of type "string"';
      {
        log_version: converted,
      }
    ),
    cloudwatch_logs:: {
      local block = self,
      new(enabled):: (
        {}
        + block.with_enabled(enabled)
      ),
      with_enabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      with_log_group(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_group" expected to be of type "string"';
        {
          log_group: converted,
        }
      ),
    },
    kinesis_data_firehose:: {
      local block = self,
      new(enabled):: (
        {}
        + block.with_enabled(enabled)
      ),
      with_delivery_stream(value):: (
        local converted = value;
        assert std.isString(converted) : '"delivery_stream" expected to be of type "string"';
        {
          delivery_stream: converted,
        }
      ),
      with_enabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
    },
    s3:: {
      local block = self,
      new(enabled):: (
        {}
        + block.with_enabled(enabled)
      ),
      with_bucket_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
        {
          bucket_name: converted,
        }
      ),
      with_bucket_owner(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_owner" expected to be of type "string"';
        {
          bucket_owner: converted,
        }
      ),
      with_enabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
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
    with_cloudwatch_logs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logs: value,
      }
    ),
    with_kinesis_data_firehose(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_data_firehose: value,
      }
    ),
    with_s3(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3: value,
      }
    ),
    with_cloudwatch_logs_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logs+: converted,
      }
    ),
    with_kinesis_data_firehose_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_data_firehose+: converted,
      }
    ),
    with_s3_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3+: converted,
      }
    ),
  },
  with_access_logs(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_logs: value,
    }
  ),
  with_access_logs_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_logs+: converted,
    }
  ),
}
