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
  s3_destination:: {
    local block = self,
    new(bucket_name, region):: (
      {}
      + block.with_bucket_name(bucket_name)
      + block.with_region(region)
    ),
    with_bucket_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
      {
        bucket_name: converted,
      }
    ),
    with_kms_key_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
      {
        kms_key_arn: converted,
      }
    ),
    with_prefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"prefix" expected to be of type "string"';
      {
        prefix: converted,
      }
    ),
    with_region(value):: (
      local converted = value;
      assert std.isString(converted) : '"region" expected to be of type "string"';
      {
        region: converted,
      }
    ),
    with_sync_format(value):: (
      local converted = value;
      assert std.isString(converted) : '"sync_format" expected to be of type "string"';
      {
        sync_format: converted,
      }
    ),
  },
  with_s3_destination(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3_destination: value,
    }
  ),
  with_s3_destination_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3_destination+: converted,
    }
  ),
}
