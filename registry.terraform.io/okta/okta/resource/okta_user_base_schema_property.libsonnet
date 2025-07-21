{
  local block = self,
  new(index, title, type):: (
    {}
    + block.with_index(index)
    + block.with_title(title)
    + block.with_type(type)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_index':: 'Subschema unique string identifier',
  with_index(value):: (
    local converted = value;
    assert std.isString(converted) : '"index" expected to be of type "string"';
    {
      index: converted,
    }
  ),
  '#with_master':: 'Master priority for the user schema property. It can be set to `PROFILE_MASTER` or `OKTA`. Default: `PROFILE_MASTER`',
  with_master(value):: (
    local converted = value;
    assert std.isString(converted) : '"master" expected to be of type "string"';
    {
      master: converted,
    }
  ),
  '#with_pattern':: "The validation pattern to use for the subschema. Must be in form of '.+', or '[<pattern>]+' if present.'",
  with_pattern(value):: (
    local converted = value;
    assert std.isString(converted) : '"pattern" expected to be of type "string"';
    {
      pattern: converted,
    }
  ),
  '#with_permissions':: 'Access control permissions for the property. It can be set to `READ_WRITE`, `READ_ONLY`, `HIDE`. Default: `READ_ONLY`',
  with_permissions(value):: (
    local converted = value;
    assert std.isString(converted) : '"permissions" expected to be of type "string"';
    {
      permissions: converted,
    }
  ),
  '#with_required':: 'Whether the subschema is required',
  with_required(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"required" expected to be of type "bool"';
    {
      required: converted,
    }
  ),
  '#with_title':: 'Subschema title (display name)',
  with_title(value):: (
    local converted = value;
    assert std.isString(converted) : '"title" expected to be of type "string"';
    {
      title: converted,
    }
  ),
  '#with_type':: 'The type of the schema property. It can be `string`, `boolean`, `number`, `integer`, `array`, or `object`',
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  '#with_user_type':: 'User type ID. By default, it is `default`',
  with_user_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_type" expected to be of type "string"';
    {
      user_type: converted,
    }
  ),
}
