{
  local block = self,
  new(app_id, settings):: (
    {}
    + block.with_app_id(app_id)
    + block.with_settings(settings)
  ),
  '#with_app_id':: 'ID of the application.',
  with_app_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_id" expected to be of type "string"';
    {
      app_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_settings':: 'Application settings in JSON format',
  with_settings(value):: (
    local converted = value;
    assert std.isString(converted) : '"settings" expected to be of type "string"';
    {
      settings: converted,
    }
  ),
}
