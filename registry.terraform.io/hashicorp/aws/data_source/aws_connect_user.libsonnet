{
  local block = self,
  new(instance_id):: (
    {}
    + block.with_instance_id(instance_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_directory_user_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"directory_user_id" expected to be of type "string"';
    {
      directory_user_id: converted,
    }
  ),
  with_hierarchy_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"hierarchy_group_id" expected to be of type "string"';
    {
      hierarchy_group_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_identity_info(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"identity_info" expected to be of type "list"';
    {
      identity_info: converted,
    }
  ),
  with_identity_info_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"identity_info" expected to be of type "list"';
    {
      identity_info+: converted,
    }
  ),
  with_instance_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_id" expected to be of type "string"';
    {
      instance_id: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_phone_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"phone_config" expected to be of type "list"';
    {
      phone_config: converted,
    }
  ),
  with_phone_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"phone_config" expected to be of type "list"';
    {
      phone_config+: converted,
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
  with_routing_profile_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_profile_id" expected to be of type "string"';
    {
      routing_profile_id: converted,
    }
  ),
  with_security_profile_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_profile_ids" expected to be of type "set"';
    {
      security_profile_ids: converted,
    }
  ),
  with_security_profile_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_profile_ids" expected to be of type "set"';
    {
      security_profile_ids+: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_user_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_id" expected to be of type "string"';
    {
      user_id: converted,
    }
  ),
}
