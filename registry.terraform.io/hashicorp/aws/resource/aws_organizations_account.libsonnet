{
  local block = self,
  new(email, name):: (
    {}
    + block.with_email(email)
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_close_on_deletion(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"close_on_deletion" expected to be of type "bool"';
    {
      close_on_deletion: converted,
    }
  ),
  with_create_govcloud(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"create_govcloud" expected to be of type "bool"';
    {
      create_govcloud: converted,
    }
  ),
  with_email(value):: (
    local converted = value;
    assert std.isString(converted) : '"email" expected to be of type "string"';
    {
      email: converted,
    }
  ),
  with_govcloud_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"govcloud_id" expected to be of type "string"';
    {
      govcloud_id: converted,
    }
  ),
  with_iam_user_access_to_billing(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_user_access_to_billing" expected to be of type "string"';
    {
      iam_user_access_to_billing: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_joined_method(value):: (
    local converted = value;
    assert std.isString(converted) : '"joined_method" expected to be of type "string"';
    {
      joined_method: converted,
    }
  ),
  with_joined_timestamp(value):: (
    local converted = value;
    assert std.isString(converted) : '"joined_timestamp" expected to be of type "string"';
    {
      joined_timestamp: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_parent_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"parent_id" expected to be of type "string"';
    {
      parent_id: converted,
    }
  ),
  with_role_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_name" expected to be of type "string"';
    {
      role_name: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_tags_all(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
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
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
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
