{
  local block = self,
  new(auth_server_id, name):: (
    {}
    + block.with_auth_server_id(auth_server_id)
    + block.with_name(name)
  ),
  '#with_auth_server_id':: 'Auth server ID',
  with_auth_server_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"auth_server_id" expected to be of type "string"';
    {
      auth_server_id: converted,
    }
  ),
  '#with_consent':: 'Indicates whether a consent dialog is needed for the scope. It can be set to `REQUIRED` or `IMPLICIT`. Default: `IMPLICIT`',
  with_consent(value):: (
    local converted = value;
    assert std.isString(converted) : '"consent" expected to be of type "string"';
    {
      consent: converted,
    }
  ),
  '#with_default':: 'A default scope will be returned in an access token when the client omits the scope parameter in a token request, provided this scope is allowed as part of the access policy rule.',
  with_default(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"default" expected to be of type "bool"';
    {
      default: converted,
    }
  ),
  '#with_description':: 'Description of the Auth Server Scope.',
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  '#with_display_name':: 'Name of the end user displayed in a consent dialog box',
  with_display_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"display_name" expected to be of type "string"';
    {
      display_name: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_metadata_publish':: 'Whether to publish metadata or not. It can be set to `ALL_CLIENTS` or `NO_CLIENTS`. Default: `ALL_CLIENTS`',
  with_metadata_publish(value):: (
    local converted = value;
    assert std.isString(converted) : '"metadata_publish" expected to be of type "string"';
    {
      metadata_publish: converted,
    }
  ),
  '#with_name':: 'Auth server scope name',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  '#with_optional':: 'Whether the scope optional',
  with_optional(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"optional" expected to be of type "bool"';
    {
      optional: converted,
    }
  ),
  '#with_system':: 'Whether Okta created the Scope',
  with_system(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"system" expected to be of type "bool"';
    {
      system: converted,
    }
  ),
}
