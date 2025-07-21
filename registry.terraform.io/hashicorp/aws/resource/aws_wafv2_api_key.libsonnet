{
  local block = self,
  new(scope, token_domains):: (
    {}
    + block.with_scope(scope)
    + block.with_token_domains(token_domains)
  ),
  '#with_api_key':: 'The API key value. This is sensitive and not included in responses.',
  with_api_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_key" expected to be of type "string"';
    {
      api_key: converted,
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
  '#with_scope':: 'Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are CLOUDFRONT or REGIONAL.',
  with_scope(value):: (
    local converted = value;
    assert std.isString(converted) : '"scope" expected to be of type "string"';
    {
      scope: converted,
    }
  ),
  '#with_token_domains':: 'The domains that you want to be able to use the API key with, for example example.com. Maximum of 5 domains.',
  with_token_domains(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"token_domains" expected to be of type "set"';
    {
      token_domains: converted,
    }
  ),
  '#with_token_domains_mixin':: 'The domains that you want to be able to use the API key with, for example example.com. Maximum of 5 domains.',
  with_token_domains_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"token_domains" expected to be of type "set"';
    {
      token_domains+: converted,
    }
  ),
}
