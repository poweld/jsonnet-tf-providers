{
  local block = self,
  new(domain):: (
    {}
    + block.with_domain(domain)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_asset_size_bytes(value):: (
    local converted = value;
    assert std.isString(converted) : '"asset_size_bytes" expected to be of type "string"';
    {
      asset_size_bytes: converted,
    }
  ),
  with_created_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_time" expected to be of type "string"';
    {
      created_time: converted,
    }
  ),
  with_domain(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain" expected to be of type "string"';
    {
      domain: converted,
    }
  ),
  with_encryption_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"encryption_key" expected to be of type "string"';
    {
      encryption_key: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_owner(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner" expected to be of type "string"';
    {
      owner: converted,
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
  with_repository_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"repository_count" expected to be of type "number"';
    {
      repository_count: converted,
    }
  ),
  with_s3_bucket_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_bucket_arn" expected to be of type "string"';
    {
      s3_bucket_arn: converted,
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
}
