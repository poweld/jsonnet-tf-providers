{
  local block = self,
  new(folder_id):: (
    {}
    + block.with_folder_id(folder_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_aws_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_account_id" expected to be of type "string"';
    {
      aws_account_id: converted,
    }
  ),
  with_created_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_time" expected to be of type "string"';
    {
      created_time: converted,
    }
  ),
  with_folder_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"folder_id" expected to be of type "string"';
    {
      folder_id: converted,
    }
  ),
  with_folder_path(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"folder_path" expected to be of type "list"';
    {
      folder_path: converted,
    }
  ),
  with_folder_path_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"folder_path" expected to be of type "list"';
    {
      folder_path+: converted,
    }
  ),
  with_folder_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"folder_type" expected to be of type "string"';
    {
      folder_type: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_last_updated_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_updated_time" expected to be of type "string"';
    {
      last_updated_time: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_parent_folder_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"parent_folder_arn" expected to be of type "string"';
    {
      parent_folder_arn: converted,
    }
  ),
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
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
  permissions:: {
    local block = self,
    new(actions, principal):: (
      {}
      + block.with_actions(actions)
      + block.with_principal(principal)
    ),
    with_actions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"actions" expected to be of type "set"';
      {
        actions: converted,
      }
    ),
    with_actions_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"actions" expected to be of type "set"';
      {
        actions+: converted,
      }
    ),
    with_principal(value):: (
      local converted = value;
      assert std.isString(converted) : '"principal" expected to be of type "string"';
      {
        principal: converted,
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
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
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
  with_permissions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      permissions: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_permissions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      permissions+: converted,
    }
  ),
}
