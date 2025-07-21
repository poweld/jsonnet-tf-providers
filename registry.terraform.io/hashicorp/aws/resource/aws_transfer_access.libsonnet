{
  local block = self,
  new(external_id, server_id):: (
    {}
    + block.with_external_id(external_id)
    + block.with_server_id(server_id)
  ),
  with_external_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"external_id" expected to be of type "string"';
    {
      external_id: converted,
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
