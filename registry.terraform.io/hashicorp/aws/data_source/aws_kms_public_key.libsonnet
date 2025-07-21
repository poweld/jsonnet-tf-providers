{
  local block = self,
  new(key_id):: (
    {}
    + block.with_key_id(key_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_customer_master_key_spec(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_master_key_spec" expected to be of type "string"';
    {
      customer_master_key_spec: converted,
    }
  ),
  with_encryption_algorithms(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"encryption_algorithms" expected to be of type "list"';
    {
      encryption_algorithms: converted,
    }
  ),
  with_encryption_algorithms_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"encryption_algorithms" expected to be of type "list"';
    {
      encryption_algorithms+: converted,
    }
  ),
  with_grant_tokens(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"grant_tokens" expected to be of type "list"';
    {
      grant_tokens: converted,
    }
  ),
  with_grant_tokens_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"grant_tokens" expected to be of type "list"';
    {
      grant_tokens+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_id" expected to be of type "string"';
    {
      key_id: converted,
    }
  ),
  with_key_usage(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_usage" expected to be of type "string"';
    {
      key_usage: converted,
    }
  ),
  with_public_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"public_key" expected to be of type "string"';
    {
      public_key: converted,
    }
  ),
  with_public_key_pem(value):: (
    local converted = value;
    assert std.isString(converted) : '"public_key_pem" expected to be of type "string"';
    {
      public_key_pem: converted,
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
  with_signing_algorithms(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"signing_algorithms" expected to be of type "list"';
    {
      signing_algorithms: converted,
    }
  ),
  with_signing_algorithms_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"signing_algorithms" expected to be of type "list"';
    {
      signing_algorithms+: converted,
    }
  ),
}
