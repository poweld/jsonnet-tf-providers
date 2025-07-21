{
  local block = self,
  new(domain_name):: (
    {}
    + block.with_domain_name(domain_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_certificate_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_arn" expected to be of type "string"';
    {
      certificate_arn: converted,
    }
  ),
  with_certificate_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_name" expected to be of type "string"';
    {
      certificate_name: converted,
    }
  ),
  with_certificate_upload_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_upload_date" expected to be of type "string"';
    {
      certificate_upload_date: converted,
    }
  ),
  with_cloudfront_domain_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"cloudfront_domain_name" expected to be of type "string"';
    {
      cloudfront_domain_name: converted,
    }
  ),
  with_cloudfront_zone_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"cloudfront_zone_id" expected to be of type "string"';
    {
      cloudfront_zone_id: converted,
    }
  ),
  with_domain_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
    }
  ),
  with_domain_name_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name_id" expected to be of type "string"';
    {
      domain_name_id: converted,
    }
  ),
  with_endpoint_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"endpoint_configuration" expected to be of type "list"';
    {
      endpoint_configuration: converted,
    }
  ),
  with_endpoint_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"endpoint_configuration" expected to be of type "list"';
    {
      endpoint_configuration+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy" expected to be of type "string"';
    {
      policy: converted,
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
  with_regional_certificate_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"regional_certificate_arn" expected to be of type "string"';
    {
      regional_certificate_arn: converted,
    }
  ),
  with_regional_certificate_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"regional_certificate_name" expected to be of type "string"';
    {
      regional_certificate_name: converted,
    }
  ),
  with_regional_domain_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"regional_domain_name" expected to be of type "string"';
    {
      regional_domain_name: converted,
    }
  ),
  with_regional_zone_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"regional_zone_id" expected to be of type "string"';
    {
      regional_zone_id: converted,
    }
  ),
  with_security_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"security_policy" expected to be of type "string"';
    {
      security_policy: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
}
