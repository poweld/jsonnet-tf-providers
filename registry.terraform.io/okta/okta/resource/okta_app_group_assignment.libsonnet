{
  local block = self,
  new(app_id, group_id):: (
    {}
    + block.with_app_id(app_id)
    + block.with_group_id(group_id)
  ),
  '#with_app_id':: 'App to associate group with',
  with_app_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_id" expected to be of type "string"';
    {
      app_id: converted,
    }
  ),
  '#with_group_id':: 'Group associated with the application',
  with_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"group_id" expected to be of type "string"';
    {
      group_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_priority':: 'Priority of group assignment.',
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
  '#with_retain_assignment':: 'Retain the group assignment on destroy. If set to true, the resource will be removed from state but not from the Okta app.',
  with_retain_assignment(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"retain_assignment" expected to be of type "bool"';
    {
      retain_assignment: converted,
    }
  ),
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
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
