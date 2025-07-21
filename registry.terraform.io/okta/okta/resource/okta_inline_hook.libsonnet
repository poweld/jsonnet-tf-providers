{
  local block = self,
  new(name, type, version):: (
    {}
    + block.with_name(name)
    + block.with_type(type)
    + block.with_version(version)
  ),
  with_auth(value):: (
    local converted = value;
    assert std.isObject(converted) : '"auth" expected to be of type "map"';
    {
      auth: converted,
    }
  ),
  with_channel(value):: (
    local converted = value;
    assert std.isObject(converted) : '"channel" expected to be of type "map"';
    {
      channel: converted,
    }
  ),
  '#with_channel_json':: 'true channel object for the inline hook API contract',
  with_channel_json(value):: (
    local converted = value;
    assert std.isString(converted) : '"channel_json" expected to be of type "string"';
    {
      channel_json: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_name':: 'The inline hook display name.',
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
  '#with_type':: 'The type of hook to create. [See here for supported types](https://developer.okta.com/docs/reference/api/inline-hooks/#supported-inline-hook-types).',
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  '#with_version':: 'The version of the hook. The currently-supported version is `1.0.0`.',
  with_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
  headers:: {
    local block = self,
    new():: (
      {}
    ),
    with_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
      }
    ),
    with_value(value):: (
      local converted = value;
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
  },
  with_headers(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      headers: value,
    }
  ),
  with_headers_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      headers+: converted,
    }
  ),
}
