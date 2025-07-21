{
  local block = self,
  new():: (
    {}
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_plaintext(value):: (
    local converted = value;
    assert std.isObject(converted) : '"plaintext" expected to be of type "map"';
    {
      plaintext: converted,
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
  secret:: {
    local block = self,
    new(name, payload):: (
      {}
      + block.with_name(name)
      + block.with_payload(payload)
    ),
    with_context(value):: (
      local converted = value;
      assert std.isObject(converted) : '"context" expected to be of type "map"';
      {
        context: converted,
      }
    ),
    with_encryption_algorithm(value):: (
      local converted = value;
      assert std.isString(converted) : '"encryption_algorithm" expected to be of type "string"';
      {
        encryption_algorithm: converted,
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
    with_key_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"key_id" expected to be of type "string"';
      {
        key_id: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_payload(value):: (
      local converted = value;
      assert std.isString(converted) : '"payload" expected to be of type "string"';
      {
        payload: converted,
      }
    ),
  },
  with_secret(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      secret: value,
    }
  ),
  with_secret_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      secret+: converted,
    }
  ),
}
