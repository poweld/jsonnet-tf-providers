{
  local block = self,
  new():: (
    {
      terraformObject:: "okta_auth_server_default",
      terraformType:: "resource",
    }
  ),
  "#withAudiences":: "The recipients that the tokens are intended for. This becomes the `aud` claim in an access token. Currently Okta only supports a single value here.",
  withAudiences(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"audiences" expected to be of type "set"';
    {
      audiences: converted,
    }
  ),
  "#withAudiencesMixin":: "The recipients that the tokens are intended for. This becomes the `aud` claim in an access token. Currently Okta only supports a single value here.",
  withAudiencesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"audiences" expected to be of type "set"';
    {
      audiences+: converted,
    }
  ),
  "#withCredentialsLastRotated":: "The timestamp when the authorization server started to use the `kid` for signing tokens.",
  withCredentialsLastRotated(value):: (
    local converted = value;
    assert std.isString(converted) : '"credentials_last_rotated" expected to be of type "string"';
    {
      credentials_last_rotated: converted,
    }
  ),
  "#withCredentialsNextRotation":: "The timestamp when the authorization server changes the key for signing tokens. Only returned when `credentials_rotation_mode` is `AUTO`.",
  withCredentialsNextRotation(value):: (
    local converted = value;
    assert std.isString(converted) : '"credentials_next_rotation" expected to be of type "string"';
    {
      credentials_next_rotation: converted,
    }
  ),
  "#withCredentialsRotationMode":: "The key rotation mode for the authorization server. Can be `AUTO` or `MANUAL`. Default: `MANUAL`.Credential rotation mode, in many cases you cannot set this to MANUAL, the API will ignore the value and you will get a perpetual diff. This should rarely be used.",
  withCredentialsRotationMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"credentials_rotation_mode" expected to be of type "string"';
    {
      credentials_rotation_mode: converted,
    }
  ),
  "#withDescription":: "The description of the authorization server.",
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
  "#withIssuer":: "The complete URL for a Custom Authorization Server. This becomes the `iss` claim in an access token.",
  withIssuer(value):: (
    local converted = value;
    assert std.isString(converted) : '"issuer" expected to be of type "string"';
    {
      issuer: converted,
    }
  ),
  "#withIssuerMode":: "*Early Access Property*. Allows you to use a custom issuer URL. It can be set to `CUSTOM_URL`, `ORG_URL`, or `DYNAMIC`. Default: `ORG_URL`",
  withIssuerMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"issuer_mode" expected to be of type "string"';
    {
      issuer_mode: converted,
    }
  ),
  "#withKid":: "The ID of the JSON Web Key used for signing tokens issued by the authorization server.",
  withKid(value):: (
    local converted = value;
    assert std.isString(converted) : '"kid" expected to be of type "string"';
    {
      kid: converted,
    }
  ),
  "#withName":: "The name of the authorization server. Not necessary but left for backwards capacity with legacy implementation.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withStatus":: "Default to `ACTIVE`",
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
}
