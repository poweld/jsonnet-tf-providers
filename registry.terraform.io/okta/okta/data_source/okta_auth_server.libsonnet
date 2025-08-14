{
  local block = self,
  new(name):: (
    {
      terraformObject:: "okta_auth_server",
    }
    + block.withName(name)
  ),
  "#withAudiences":: "Description of Authorization server.",
  withAudiences(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"audiences" expected to be of type "set"';
    {
      audiences: converted,
    }
  ),
  "#withAudiencesMixin":: "Description of Authorization server.",
  withAudiencesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"audiences" expected to be of type "set"';
    {
      audiences+: converted,
    }
  ),
  "#withCredentialsLastRotated":: "Last time credentials were rotated.",
  withCredentialsLastRotated(value):: (
    local converted = value;
    assert std.isString(converted) : '"credentials_last_rotated" expected to be of type "string"';
    {
      credentials_last_rotated: converted,
    }
  ),
  "#withCredentialsNextRotation":: "Next time credentials will be rotated",
  withCredentialsNextRotation(value):: (
    local converted = value;
    assert std.isString(converted) : '"credentials_next_rotation" expected to be of type "string"';
    {
      credentials_next_rotation: converted,
    }
  ),
  "#withCredentialsRotationMode":: "Mode of credential rotation, auto or manual.",
  withCredentialsRotationMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"credentials_rotation_mode" expected to be of type "string"';
    {
      credentials_rotation_mode: converted,
    }
  ),
  "#withDescription":: "Description of Authorization server.",
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withIssuer":: "The complete URL of the authorization server. This becomes the `iss` claim in an access token.",
  withIssuer(value):: (
    local converted = value;
    assert std.isString(converted) : '"issuer" expected to be of type "string"';
    {
      issuer: converted,
    }
  ),
  "#withIssuerMode":: "Can be set to `CUSTOM_URL` or `ORG_URL`",
  withIssuerMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"issuer_mode" expected to be of type "string"';
    {
      issuer_mode: converted,
    }
  ),
  "#withKid":: "Auth server key id.",
  withKid(value):: (
    local converted = value;
    assert std.isString(converted) : '"kid" expected to be of type "string"';
    {
      kid: converted,
    }
  ),
  "#withName":: "The name of the auth server to retrieve.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withStatus":: "The activation status of the authorization server.",
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
}
