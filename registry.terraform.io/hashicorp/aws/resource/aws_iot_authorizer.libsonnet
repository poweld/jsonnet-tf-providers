{
  local block = self,
  new(authorizer_function_arn, name):: (
    {}
    + block.with_authorizer_function_arn(authorizer_function_arn)
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_authorizer_function_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"authorizer_function_arn" expected to be of type "string"';
    {
      authorizer_function_arn: converted,
    }
  ),
  with_enable_caching_for_http(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_caching_for_http" expected to be of type "bool"';
    {
      enable_caching_for_http: converted,
    }
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
  with_signing_disabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"signing_disabled" expected to be of type "bool"';
    {
      signing_disabled: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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
  with_token_key_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"token_key_name" expected to be of type "string"';
    {
      token_key_name: converted,
    }
  ),
  with_token_signing_public_keys(value):: (
    local converted = value;
    assert std.isObject(converted) : '"token_signing_public_keys" expected to be of type "map"';
    {
      token_signing_public_keys: converted,
    }
  ),
}
