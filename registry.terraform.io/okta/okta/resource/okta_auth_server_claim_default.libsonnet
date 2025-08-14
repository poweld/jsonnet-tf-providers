{
  local block = self,
  new(auth_server_id, name):: (
    {}
    + block.withAuthServerId(auth_server_id)
    + block.withName(name)
  ),
  "#withAlwaysIncludeInToken":: "Specifies whether to include claims in token.",
  withAlwaysIncludeInToken(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"always_include_in_token" expected to be of type "bool"';
    {
      always_include_in_token: converted,
    }
  ),
  "#withAuthServerId":: "ID of the authorization server.",
  withAuthServerId(value):: (
    local converted = value;
    assert std.isString(converted) : '"auth_server_id" expected to be of type "string"';
    {
      auth_server_id: converted,
    }
  ),
  "#withClaimType":: "Specifies whether the claim is for an access token `RESOURCE` or ID token `IDENTITY`.",
  withClaimType(value):: (
    local converted = value;
    assert std.isString(converted) : '"claim_type" expected to be of type "string"';
    {
      claim_type: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withName":: "The name of the claim. Can be set to `sub`, `address`, `birthdate`, `email`,`email_verified`, `family_name`, `gender`, `given_name`, `locale`, `middle_name`, `name`, `nickname`,`phone_number`, `picture`, `preferred_username`, `profile`, `updated_at`, `website`, `zoneinfo`",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withScopes":: "Auth server claim list of scopes",
  withScopes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"scopes" expected to be of type "set"';
    {
      scopes: converted,
    }
  ),
  "#withScopesMixin":: "Auth server claim list of scopes",
  withScopesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"scopes" expected to be of type "set"';
    {
      scopes+: converted,
    }
  ),
  "#withStatus":: "The status of the application.",
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  "#withValue":: "The value of the claim. Only required for `sub` claim.",
  withValue(value):: (
    local converted = value;
    assert std.isString(converted) : '"value" expected to be of type "string"';
    {
      value: converted,
    }
  ),
  "#withValueType":: "The type of value of the claim.",
  withValueType(value):: (
    local converted = value;
    assert std.isString(converted) : '"value_type" expected to be of type "string"';
    {
      value_type: converted,
    }
  ),
}
