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
  voice_connector:: {
    local block = self,
    new():: (
      {}
    ),
    with_cdr_bucket(value):: (
      local converted = value;
      assert std.isString(converted) : '"cdr_bucket" expected to be of type "string"';
      {
        cdr_bucket: converted,
      }
    ),
  },
  with_voice_connector(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      voice_connector: value,
    }
  ),
  with_voice_connector_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      voice_connector+: converted,
    }
  ),
}
