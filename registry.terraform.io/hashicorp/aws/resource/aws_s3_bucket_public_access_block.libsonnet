{
  local block = self,
  new(bucket):: (
    {}
    + block.with_bucket(bucket)
  ),
  with_block_public_acls(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"block_public_acls" expected to be of type "bool"';
    {
      block_public_acls: converted,
    }
  ),
  with_block_public_policy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"block_public_policy" expected to be of type "bool"';
    {
      block_public_policy: converted,
    }
  ),
  with_bucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket" expected to be of type "string"';
    {
      bucket: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_ignore_public_acls(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"ignore_public_acls" expected to be of type "bool"';
    {
      ignore_public_acls: converted,
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
  with_restrict_public_buckets(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"restrict_public_buckets" expected to be of type "bool"';
    {
      restrict_public_buckets: converted,
    }
  ),
}
