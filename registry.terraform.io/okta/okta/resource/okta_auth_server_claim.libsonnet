{
  local block = self,
  new(auth_server_id, claim_type, name, value):: (
    {}
    + block.with_auth_server_id(auth_server_id)
    + block.with_claim_type(claim_type)
    + block.with_name(name)
    + block.with_value(value)
  ),
  '#with_always_include_in_token':: 'Specifies whether to include claims in token, by default it is set to `true`.',
  with_always_include_in_token(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"always_include_in_token" expected to be of type "bool"';
    {
      always_include_in_token: converted,
    }
  ),
  '#with_auth_server_id':: 'ID of the authorization server.',
  with_auth_server_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"auth_server_id" expected to be of type "string"';
    {
      auth_server_id: converted,
    }
  ),
  '#with_claim_type':: 'Specifies whether the claim is for an access token `RESOURCE` or ID token `IDENTITY`.',
  with_claim_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"claim_type" expected to be of type "string"';
    {
      claim_type: converted,
    }
  ),
  '#with_group_filter_type':: 'Specifies the type of group filter if `value_type` is `GROUPS`. Can be set to one of the following `STARTS_WITH`, `EQUALS`, `CONTAINS`, `REGEX`.',
  with_group_filter_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"group_filter_type" expected to be of type "string"';
    {
      group_filter_type: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_name':: 'The name of the claim.',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  '#with_scopes':: 'The list of scopes the auth server claim is tied to.',
  with_scopes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"scopes" expected to be of type "set"';
    {
      scopes: converted,
    }
  ),
  '#with_scopes_mixin':: 'The list of scopes the auth server claim is tied to.',
  with_scopes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"scopes" expected to be of type "set"';
    {
      scopes+: converted,
    }
  ),
  '#with_status':: 'Default to `ACTIVE`',
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  '#with_value':: 'The value of the claim.',
  with_value(value):: (
    local converted = value;
    assert std.isString(converted) : '"value" expected to be of type "string"';
    {
      value: converted,
    }
  ),
  '#with_value_type':: 'The type of value of the claim. It can be set to `EXPRESSION` or `GROUPS`. It defaults to `EXPRESSION`.',
  with_value_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"value_type" expected to be of type "string"';
    {
      value_type: converted,
    }
  ),
}
