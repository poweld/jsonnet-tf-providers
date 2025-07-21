{
  local block = self,
  new(role, server_id, user_name):: (
    {}
    + block.with_role(role)
    + block.with_server_id(server_id)
    + block.with_user_name(user_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_home_directory(value):: (
    local converted = value;
    assert std.isString(converted) : '"home_directory" expected to be of type "string"';
    {
      home_directory: converted,
    }
  ),
  with_home_directory_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"home_directory_type" expected to be of type "string"';
    {
      home_directory_type: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy" expected to be of type "string"';
    {
      policy: converted,
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
  with_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"role" expected to be of type "string"';
    {
      role: converted,
    }
  ),
  with_server_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"server_id" expected to be of type "string"';
    {
      server_id: converted,
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
  with_user_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name" expected to be of type "string"';
    {
      user_name: converted,
    }
  ),
  home_directory_mappings:: {
    local block = self,
    new(entry, target):: (
      {}
      + block.with_entry(entry)
      + block.with_target(target)
    ),
    with_entry(value):: (
      local converted = value;
      assert std.isString(converted) : '"entry" expected to be of type "string"';
      {
        entry: converted,
      }
    ),
    with_target(value):: (
      local converted = value;
      assert std.isString(converted) : '"target" expected to be of type "string"';
      {
        target: converted,
      }
    ),
  },
  posix_profile:: {
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
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
  },
  with_home_directory_mappings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      home_directory_mappings: value,
    }
  ),
  with_posix_profile(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      posix_profile: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_home_directory_mappings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      home_directory_mappings+: converted,
    }
  ),
  with_posix_profile_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      posix_profile+: converted,
    }
  ),
}
