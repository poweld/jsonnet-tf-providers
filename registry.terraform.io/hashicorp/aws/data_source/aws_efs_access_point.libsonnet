{
  local block = self,
  new(access_point_id):: (
    {}
    + block.with_access_point_id(access_point_id)
  ),
  with_access_point_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_point_id" expected to be of type "string"';
    {
      access_point_id: converted,
    }
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
  with_posix_user(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"posix_user" expected to be of type "list"';
    {
      posix_user: converted,
    }
  ),
  with_posix_user_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"posix_user" expected to be of type "list"';
    {
      posix_user+: converted,
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
  with_root_directory(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"root_directory" expected to be of type "list"';
    {
      root_directory: converted,
    }
  ),
  with_root_directory_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"root_directory" expected to be of type "list"';
    {
      root_directory+: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
}
