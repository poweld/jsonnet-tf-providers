{
  local block = self,
  new(auth_server_id):: (
    {
      terraformObject:: "okta_auth_server_claim",
      terraformType:: "data",
    }
    + block.withAuthServerId(auth_server_id)
  ),
  "#withAlwaysIncludeInToken":: "Specifies whether to include Claims in the token.",
  withAlwaysIncludeInToken(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"always_include_in_token" expected to be of type "bool"';
    {
      always_include_in_token: converted,
    }
  ),
  "#withAuthServerId":: "Auth server ID",
  withAuthServerId(value):: (
    local converted = value;
    assert std.isString(converted) : '"auth_server_id" expected to be of type "string"';
    {
      auth_server_id: converted,
    }
  ),
  "#withClaimType":: "Specifies whether the Claim is for an access token (`RESOURCE`) or ID token (`IDENTITY`).",
  withClaimType(value):: (
    local converted = value;
    assert std.isString(converted) : '"claim_type" expected to be of type "string"';
    {
      claim_type: converted,
    }
  ),
  "#withId":: "Name of the claim. Conflicts with `name`.",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withName":: "Name of the claim. Conflicts with `id`.",
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
  "#withStatus":: "Status of the claim.",
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  "#withValue":: "Value of the claim.",
  withValue(value):: (
    local converted = value;
    assert std.isString(converted) : '"value" expected to be of type "string"';
    {
      value: converted,
    }
  ),
  "#withValueType":: "Specifies whether the Claim is an Okta EL expression (`EXPRESSION`), a set of groups (`GROUPS`), or a system claim (`SYSTEM`)",
  withValueType(value):: (
    local converted = value;
    assert std.isString(converted) : '"value_type" expected to be of type "string"';
    {
      value_type: converted,
    }
  ),
}
