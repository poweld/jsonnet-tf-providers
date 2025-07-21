{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  '#with_audiences':: 'Description of Authorization server.',
  with_audiences(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"audiences" expected to be of type "set"';
    {
      audiences: converted,
    }
  ),
  '#with_audiences_mixin':: 'Description of Authorization server.',
  with_audiences_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"audiences" expected to be of type "set"';
    {
      audiences+: converted,
    }
  ),
  '#with_credentials_last_rotated':: 'Last time credentials were rotated.',
  with_credentials_last_rotated(value):: (
    local converted = value;
    assert std.isString(converted) : '"credentials_last_rotated" expected to be of type "string"';
    {
      credentials_last_rotated: converted,
    }
  ),
  '#with_credentials_next_rotation':: 'Next time credentials will be rotated',
  with_credentials_next_rotation(value):: (
    local converted = value;
    assert std.isString(converted) : '"credentials_next_rotation" expected to be of type "string"';
    {
      credentials_next_rotation: converted,
    }
  ),
  '#with_credentials_rotation_mode':: 'Mode of credential rotation, auto or manual.',
  with_credentials_rotation_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"credentials_rotation_mode" expected to be of type "string"';
    {
      credentials_rotation_mode: converted,
    }
  ),
  '#with_description':: 'Description of Authorization server.',
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
  '#with_issuer':: 'The complete URL of the authorization server. This becomes the `iss` claim in an access token.',
  with_issuer(value):: (
    local converted = value;
    assert std.isString(converted) : '"issuer" expected to be of type "string"';
    {
      issuer: converted,
    }
  ),
  '#with_issuer_mode':: 'Can be set to `CUSTOM_URL` or `ORG_URL`',
  with_issuer_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"issuer_mode" expected to be of type "string"';
    {
      issuer_mode: converted,
    }
  ),
  '#with_kid':: 'Auth server key id.',
  with_kid(value):: (
    local converted = value;
    assert std.isString(converted) : '"kid" expected to be of type "string"';
    {
      kid: converted,
    }
  ),
  '#with_name':: 'The name of the auth server to retrieve.',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  '#with_status':: 'The activation status of the authorization server.',
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
}
