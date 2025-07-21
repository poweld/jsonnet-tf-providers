{
  local block = self,
  new(file_system_id):: (
    {}
    + block.with_file_system_id(file_system_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_file_system_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"file_system_arn" expected to be of type "string"';
    {
      file_system_arn: converted,
    }
  ),
  with_file_system_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"file_system_id" expected to be of type "string"';
    {
      file_system_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_owner_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_id" expected to be of type "string"';
    {
      owner_id: converted,
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
  posix_user:: {
    local block = self,
    new(gid, uid):: (
      {}
      + block.with_gid(gid)
      + block.with_uid(uid)
    ),
    with_gid(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"gid" expected to be of type "number"';
      {
        gid: converted,
      }
    ),
    with_secondary_gids(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"secondary_gids" expected to be of type "set"';
      {
        secondary_gids: converted,
      }
    ),
    with_secondary_gids_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"secondary_gids" expected to be of type "set"';
      {
        secondary_gids+: converted,
      }
    ),
    with_uid(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"uid" expected to be of type "number"';
      {
        uid: converted,
      }
    ),
  },
  root_directory:: {
    local block = self,
    new():: (
      {}
    ),
    with_path(value):: (
      local converted = value;
      assert std.isString(converted) : '"path" expected to be of type "string"';
      {
        path: converted,
      }
    ),
    creation_info:: {
      local block = self,
      new(owner_gid, owner_uid, permissions):: (
        {}
        + block.with_owner_gid(owner_gid)
        + block.with_owner_uid(owner_uid)
        + block.with_permissions(permissions)
      ),
      with_owner_gid(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"owner_gid" expected to be of type "number"';
        {
          owner_gid: converted,
        }
      ),
      with_owner_uid(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"owner_uid" expected to be of type "number"';
        {
          owner_uid: converted,
        }
      ),
      with_permissions(value):: (
        local converted = value;
        assert std.isString(converted) : '"permissions" expected to be of type "string"';
        {
          permissions: converted,
        }
      ),
    },
    with_creation_info(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        creation_info: value,
      }
    ),
    with_creation_info_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        creation_info+: converted,
      }
    ),
  },
  with_posix_user(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      posix_user: value,
    }
  ),
  with_root_directory(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      root_directory: value,
    }
  ),
  with_posix_user_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      posix_user+: converted,
    }
  ),
  with_root_directory_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      root_directory+: converted,
    }
  ),
}
