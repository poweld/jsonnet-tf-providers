{
  local block = self,
  new(bucket):: (
    {}
    + block.with_bucket(bucket)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_bucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket" expected to be of type "string"';
    {
      bucket: converted,
    }
  ),
  with_bucket_domain_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket_domain_name" expected to be of type "string"';
    {
      bucket_domain_name: converted,
    }
  ),
  with_bucket_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket_region" expected to be of type "string"';
    {
      bucket_region: converted,
    }
  ),
  with_bucket_regional_domain_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket_regional_domain_name" expected to be of type "string"';
    {
      bucket_regional_domain_name: converted,
    }
  ),
  with_hosted_zone_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"hosted_zone_id" expected to be of type "string"';
    {
      hosted_zone_id: converted,
    }
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
  with_website_domain(value):: (
    local converted = value;
    assert std.isString(converted) : '"website_domain" expected to be of type "string"';
    {
      website_domain: converted,
    }
  ),
  with_website_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"website_endpoint" expected to be of type "string"';
    {
      website_endpoint: converted,
    }
  ),
}
