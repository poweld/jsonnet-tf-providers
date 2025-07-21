{
  local block = self,
  new(instance_id, name, routing_profile_id, security_profile_ids):: (
    {}
    + block.with_instance_id(instance_id)
    + block.with_name(name)
    + block.with_routing_profile_id(routing_profile_id)
    + block.with_security_profile_ids(security_profile_ids)
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
  with_password(value):: (
    local converted = value;
    assert std.isString(converted) : '"password" expected to be of type "string"';
    {
      password: converted,
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
  with_tags_all(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  with_user_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_id" expected to be of type "string"';
    {
      user_id: converted,
    }
  ),
  identity_info:: {
    local block = self,
    new():: (
      {}
    ),
    with_email(value):: (
      local converted = value;
      assert std.isString(converted) : '"email" expected to be of type "string"';
      {
        email: converted,
      }
    ),
    with_first_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"first_name" expected to be of type "string"';
      {
        first_name: converted,
      }
    ),
    with_last_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"last_name" expected to be of type "string"';
      {
        last_name: converted,
      }
    ),
    with_secondary_email(value):: (
      local converted = value;
      assert std.isString(converted) : '"secondary_email" expected to be of type "string"';
      {
        secondary_email: converted,
      }
    ),
  },
  phone_config:: {
    local block = self,
    new(phone_type):: (
      {}
      + block.with_phone_type(phone_type)
    ),
    with_after_contact_work_time_limit(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"after_contact_work_time_limit" expected to be of type "number"';
      {
        after_contact_work_time_limit: converted,
      }
    ),
    with_auto_accept(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"auto_accept" expected to be of type "bool"';
      {
        auto_accept: converted,
      }
    ),
    with_desk_phone_number(value):: (
      local converted = value;
      assert std.isString(converted) : '"desk_phone_number" expected to be of type "string"';
      {
        desk_phone_number: converted,
      }
    ),
    with_phone_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"phone_type" expected to be of type "string"';
      {
        phone_type: converted,
      }
    ),
  },
  with_identity_info(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      identity_info: value,
    }
  ),
  with_phone_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      phone_config: value,
    }
  ),
  with_identity_info_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      identity_info+: converted,
    }
  ),
  with_phone_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      phone_config+: converted,
    }
  ),
}
