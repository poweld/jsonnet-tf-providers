{
  local block = self,
  new(s3_bucket_name):: (
    {}
    + block.with_s3_bucket_name(s3_bucket_name)
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
  with_s3_bucket_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_bucket_name" expected to be of type "string"';
    {
      s3_bucket_name: converted,
    }
  ),
  with_s3_key_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_key_prefix" expected to be of type "string"';
    {
      s3_key_prefix: converted,
    }
  ),
  with_s3_kms_key_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_kms_key_arn" expected to be of type "string"';
    {
      s3_kms_key_arn: converted,
    }
  ),
  with_sns_topic_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"sns_topic_arn" expected to be of type "string"';
    {
      sns_topic_arn: converted,
    }
  ),
  snapshot_delivery_properties:: {
    local block = self,
    new():: (
      {}
    ),
    with_delivery_frequency(value):: (
      local converted = value;
      assert std.isString(converted) : '"delivery_frequency" expected to be of type "string"';
      {
        delivery_frequency: converted,
      }
    ),
  },
  with_snapshot_delivery_properties(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      snapshot_delivery_properties: value,
    }
  ),
  with_snapshot_delivery_properties_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      snapshot_delivery_properties+: converted,
    }
  ),
}
