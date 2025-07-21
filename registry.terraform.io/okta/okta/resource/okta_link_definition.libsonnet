{
  local block = self,
  new(associated_description, associated_name, associated_title, primary_description, primary_name, primary_title):: (
    {}
    + block.with_associated_description(associated_description)
    + block.with_associated_name(associated_name)
    + block.with_associated_title(associated_title)
    + block.with_primary_description(primary_description)
    + block.with_primary_name(primary_name)
    + block.with_primary_title(primary_title)
  ),
  '#with_associated_description':: 'Description of the associated relationship.',
  with_associated_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"associated_description" expected to be of type "string"';
    {
      associated_description: converted,
    }
  ),
  '#with_associated_name':: 'API name of the associated link.',
  with_associated_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"associated_name" expected to be of type "string"';
    {
      associated_name: converted,
    }
  ),
  '#with_associated_title':: 'Display name of the associated link.',
  with_associated_title(value):: (
    local converted = value;
    assert std.isString(converted) : '"associated_title" expected to be of type "string"';
    {
      associated_title: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_primary_description':: 'Description of the primary relationship.',
  with_primary_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"primary_description" expected to be of type "string"';
    {
      primary_description: converted,
    }
  ),
  '#with_primary_name':: 'API name of the primary link.',
  with_primary_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"primary_name" expected to be of type "string"';
    {
      primary_name: converted,
    }
  ),
  '#with_primary_title':: 'Display name of the primary link.',
  with_primary_title(value):: (
    local converted = value;
    assert std.isString(converted) : '"primary_title" expected to be of type "string"';
    {
      primary_title: converted,
    }
  ),
}
