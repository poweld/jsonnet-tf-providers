{
  local block = self,
  new(domain, user_pool_id):: (
    {}
    + block.with_domain(domain)
    + block.with_user_pool_id(user_pool_id)
  ),
  with_aws_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_account_id" expected to be of type "string"';
    {
      aws_account_id: converted,
    }
  ),
  with_certificate_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_arn" expected to be of type "string"';
    {
      certificate_arn: converted,
    }
  ),
  with_cloudfront_distribution(value):: (
    local converted = value;
    assert std.isString(converted) : '"cloudfront_distribution" expected to be of type "string"';
    {
      cloudfront_distribution: converted,
    }
  ),
  with_cloudfront_distribution_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"cloudfront_distribution_arn" expected to be of type "string"';
    {
      cloudfront_distribution_arn: converted,
    }
  ),
  with_cloudfront_distribution_zone_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"cloudfront_distribution_zone_id" expected to be of type "string"';
    {
      cloudfront_distribution_zone_id: converted,
    }
  ),
  with_domain(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain" expected to be of type "string"';
    {
      domain: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_managed_login_version(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"managed_login_version" expected to be of type "number"';
    {
      managed_login_version: converted,
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
  with_s3_bucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_bucket" expected to be of type "string"';
    {
      s3_bucket: converted,
    }
  ),
  with_user_pool_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_pool_id" expected to be of type "string"';
    {
      user_pool_id: converted,
    }
  ),
  with_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
}
