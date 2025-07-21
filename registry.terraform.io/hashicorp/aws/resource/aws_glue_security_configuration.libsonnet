{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  encryption_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    cloudwatch_encryption:: {
      local block = self,
      new():: (
        {}
      ),
      with_cloudwatch_encryption_mode(value):: (
        local converted = value;
        assert std.isString(converted) : '"cloudwatch_encryption_mode" expected to be of type "string"';
        {
          cloudwatch_encryption_mode: converted,
        }
      ),
      with_kms_key_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
        {
          kms_key_arn: converted,
        }
      ),
    },
    job_bookmarks_encryption:: {
      local block = self,
      new():: (
        {}
      ),
      with_job_bookmarks_encryption_mode(value):: (
        local converted = value;
        assert std.isString(converted) : '"job_bookmarks_encryption_mode" expected to be of type "string"';
        {
          job_bookmarks_encryption_mode: converted,
        }
      ),
      with_kms_key_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
        {
          kms_key_arn: converted,
        }
      ),
    },
    s3_encryption:: {
      local block = self,
      new():: (
        {}
      ),
      with_kms_key_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
        {
          kms_key_arn: converted,
        }
      ),
      with_s3_encryption_mode(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_encryption_mode" expected to be of type "string"';
        {
          s3_encryption_mode: converted,
        }
      ),
    },
    with_cloudwatch_encryption(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_encryption: value,
      }
    ),
    with_job_bookmarks_encryption(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        job_bookmarks_encryption: value,
      }
    ),
    with_s3_encryption(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_encryption: value,
      }
    ),
    with_cloudwatch_encryption_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_encryption+: converted,
      }
    ),
    with_job_bookmarks_encryption_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        job_bookmarks_encryption+: converted,
      }
    ),
    with_s3_encryption_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_encryption+: converted,
      }
    ),
  },
  with_encryption_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_configuration: value,
    }
  ),
  with_encryption_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_configuration+: converted,
    }
  ),
}
