{
  local block = self,
  new(app_id):: (
    {}
    + block.with_app_id(app_id)
  ),
  '#with_app_id':: 'The ID of the application to assign a group to.',
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
  group:: {
    local block = self,
    new(id):: (
      {}
      + block.with_id(id)
    ),
    '#with_id':: 'A group to associate with the application',
    with_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    '#with_priority':: 'Priority of group assignment',
    with_priority(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"priority" expected to be of type "number"';
      {
        priority: converted,
      }
    ),
    '#with_profile':: 'JSON document containing [application profile](https://developer.okta.com/docs/reference/api/apps/#profile-object)',
    with_profile(value):: (
      local converted = value;
      assert std.isString(converted) : '"profile" expected to be of type "string"';
      {
        profile: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    with_read(value):: (
      local converted = value;
      assert std.isString(converted) : '"read" expected to be of type "string"';
      {
        read: converted,
      }
    ),
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_group(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      group: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_group_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      group+: converted,
    }
  ),
}
