{
  local block = self,
  new(bucket, included_object_versions, name):: (
    {}
    + block.with_bucket(bucket)
    + block.with_included_object_versions(included_object_versions)
    + block.with_name(name)
  ),
  with_bucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket" expected to be of type "string"';
    {
      bucket: converted,
    }
  ),
  with_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_included_object_versions(value):: (
    local converted = value;
    assert std.isString(converted) : '"included_object_versions" expected to be of type "string"';
    {
      included_object_versions: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_optional_fields(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"optional_fields" expected to be of type "set"';
    {
      optional_fields: converted,
    }
  ),
  with_optional_fields_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"optional_fields" expected to be of type "set"';
    {
      optional_fields+: converted,
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
  destination:: {
    local block = self,
    new():: (
      {}
    ),
    bucket:: {
      local block = self,
      new(bucket_arn, format):: (
        {}
        + block.with_bucket_arn(bucket_arn)
        + block.with_format(format)
      ),
      with_account_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"account_id" expected to be of type "string"';
        {
          account_id: converted,
        }
      ),
      with_bucket_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_arn" expected to be of type "string"';
        {
          bucket_arn: converted,
        }
      ),
      with_format(value):: (
        local converted = value;
        assert std.isString(converted) : '"format" expected to be of type "string"';
        {
          format: converted,
        }
      ),
      with_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"prefix" expected to be of type "string"';
        {
          prefix: converted,
        }
      ),
      encryption:: {
        local block = self,
        new():: (
          {}
        ),
        sse_kms:: {
          local block = self,
          new(key_id):: (
            {}
            + block.with_key_id(key_id)
          ),
          with_key_id(value):: (
            local converted = value;
            assert std.isString(converted) : '"key_id" expected to be of type "string"';
            {
              key_id: converted,
            }
          ),
        },
        sse_s3:: {
          local block = self,
          new():: (
            {}
          ),
        },
        with_sse_kms(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            sse_kms: value,
          }
        ),
        with_sse_s3(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            sse_s3: value,
          }
        ),
        with_sse_kms_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            sse_kms+: converted,
          }
        ),
        with_sse_s3_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            sse_s3+: converted,
          }
        ),
      },
      with_encryption(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          encryption: value,
        }
      ),
      with_encryption_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          encryption+: converted,
        }
      ),
    },
    with_bucket(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        bucket: value,
      }
    ),
    with_bucket_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        bucket+: converted,
      }
    ),
  },
  filter:: {
    local block = self,
    new():: (
      {}
    ),
    with_prefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"prefix" expected to be of type "string"';
      {
        prefix: converted,
      }
    ),
  },
  schedule:: {
    local block = self,
    new(frequency):: (
      {}
      + block.with_frequency(frequency)
    ),
    with_frequency(value):: (
      local converted = value;
      assert std.isString(converted) : '"frequency" expected to be of type "string"';
      {
        frequency: converted,
      }
    ),
  },
  with_destination(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination: value,
    }
  ),
  with_filter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter: value,
    }
  ),
  with_schedule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schedule: value,
    }
  ),
  with_destination_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination+: converted,
    }
  ),
  with_filter_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter+: converted,
    }
  ),
  with_schedule_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schedule+: converted,
    }
  ),
}
