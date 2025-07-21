{
  local block = self,
  new():: (
    {}
  ),
  '#with_audiences':: 'The recipients that the tokens are intended for. This becomes the `aud` claim in an access token. Currently Okta only supports a single value here.',
  with_audiences(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"audiences" expected to be of type "set"';
    {
      audiences: converted,
    }
  ),
  '#with_audiences_mixin':: 'The recipients that the tokens are intended for. This becomes the `aud` claim in an access token. Currently Okta only supports a single value here.',
  with_audiences_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"audiences" expected to be of type "set"';
    {
      audiences+: converted,
    }
  ),
  '#with_credentials_last_rotated':: 'The timestamp when the authorization server started to use the `kid` for signing tokens.',
  with_credentials_last_rotated(value):: (
    local converted = value;
    assert std.isString(converted) : '"credentials_last_rotated" expected to be of type "string"';
    {
      credentials_last_rotated: converted,
    }
  ),
  '#with_credentials_next_rotation':: 'The timestamp when the authorization server changes the key for signing tokens. Only returned when `credentials_rotation_mode` is `AUTO`.',
  with_credentials_next_rotation(value):: (
    local converted = value;
    assert std.isString(converted) : '"credentials_next_rotation" expected to be of type "string"';
    {
      credentials_next_rotation: converted,
    }
  ),
  '#with_credentials_rotation_mode':: 'The key rotation mode for the authorization server. Can be `AUTO` or `MANUAL`. Default: `MANUAL`.Credential rotation mode, in many cases you cannot set this to MANUAL, the API will ignore the value and you will get a perpetual diff. This should rarely be used.',
  with_credentials_rotation_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"credentials_rotation_mode" expected to be of type "string"';
    {
      credentials_rotation_mode: converted,
    }
  ),
  '#with_description':: 'The description of the authorization server.',
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_issuer':: 'The complete URL for a Custom Authorization Server. This becomes the `iss` claim in an access token.',
  with_issuer(value):: (
    local converted = value;
    assert std.isString(converted) : '"issuer" expected to be of type "string"';
    {
      issuer: converted,
    }
  ),
  '#with_issuer_mode':: '*Early Access Property*. Allows you to use a custom issuer URL. It can be set to `CUSTOM_URL`, `ORG_URL`, or `DYNAMIC`. Default: `ORG_URL`',
  with_issuer_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"issuer_mode" expected to be of type "string"';
    {
      issuer_mode: converted,
    }
  ),
  '#with_kid':: 'The ID of the JSON Web Key used for signing tokens issued by the authorization server.',
  with_kid(value):: (
    local converted = value;
    assert std.isString(converted) : '"kid" expected to be of type "string"';
    {
      kid: converted,
    }
  ),
  '#with_name':: 'The name of the authorization server. Not necessary but left for backwards capacity with legacy implementation.',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
}
