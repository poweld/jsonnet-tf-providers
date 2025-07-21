{
  local block = self,
  new(revocations_s3_bucket, revocations_s3_key, trust_store_arn):: (
    {}
    + block.with_revocations_s3_bucket(revocations_s3_bucket)
    + block.with_revocations_s3_key(revocations_s3_key)
    + block.with_trust_store_arn(trust_store_arn)
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
  with_revocation_id(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"revocation_id" expected to be of type "number"';
    {
      revocation_id: converted,
    }
  ),
  with_revocations_s3_bucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"revocations_s3_bucket" expected to be of type "string"';
    {
      revocations_s3_bucket: converted,
    }
  ),
  with_revocations_s3_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"revocations_s3_key" expected to be of type "string"';
    {
      revocations_s3_key: converted,
    }
  ),
  with_revocations_s3_object_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"revocations_s3_object_version" expected to be of type "string"';
    {
      revocations_s3_object_version: converted,
    }
  ),
  with_trust_store_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"trust_store_arn" expected to be of type "string"';
    {
      trust_store_arn: converted,
    }
  ),
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
  },
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
