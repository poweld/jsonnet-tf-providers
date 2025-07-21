{
  local block = self,
  new(instance_type, name):: (
    {}
    + block.with_instance_type(instance_type)
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_created_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_time" expected to be of type "string"';
    {
      created_time: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_disconnect_timeout_in_seconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"disconnect_timeout_in_seconds" expected to be of type "number"';
    {
      disconnect_timeout_in_seconds: converted,
    }
  ),
  with_display_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"display_name" expected to be of type "string"';
    {
      display_name: converted,
    }
  ),
  with_enable_default_internet_access(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_default_internet_access" expected to be of type "bool"';
    {
      enable_default_internet_access: converted,
    }
  ),
  with_fleet_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"fleet_type" expected to be of type "string"';
    {
      fleet_type: converted,
    }
  ),
  with_iam_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_role_arn" expected to be of type "string"';
    {
      iam_role_arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_idle_disconnect_timeout_in_seconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"idle_disconnect_timeout_in_seconds" expected to be of type "number"';
    {
      idle_disconnect_timeout_in_seconds: converted,
    }
  ),
  with_image_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_arn" expected to be of type "string"';
    {
      image_arn: converted,
    }
  ),
  with_image_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_name" expected to be of type "string"';
    {
      image_name: converted,
    }
  ),
  with_instance_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_type" expected to be of type "string"';
    {
      instance_type: converted,
    }
  ),
  with_max_sessions_per_instance(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_sessions_per_instance" expected to be of type "number"';
    {
      max_sessions_per_instance: converted,
    }
  ),
  with_max_user_duration_in_seconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_user_duration_in_seconds" expected to be of type "number"';
    {
      max_user_duration_in_seconds: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  with_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
    }
  ),
  with_stream_view(value):: (
    local converted = value;
    assert std.isString(converted) : '"stream_view" expected to be of type "string"';
    {
      stream_view: converted,
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
  compute_capacity:: {
    local block = self,
    new():: (
      {}
    ),
    with_available(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"available" expected to be of type "number"';
      {
        available: converted,
      }
    ),
    with_desired_instances(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"desired_instances" expected to be of type "number"';
      {
        desired_instances: converted,
      }
    ),
    with_desired_sessions(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"desired_sessions" expected to be of type "number"';
      {
        desired_sessions: converted,
      }
    ),
    with_in_use(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"in_use" expected to be of type "number"';
      {
        in_use: converted,
      }
    ),
    with_running(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"running" expected to be of type "number"';
      {
        running: converted,
      }
    ),
  },
  domain_join_info:: {
    local block = self,
    new():: (
      {}
    ),
    with_directory_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"directory_name" expected to be of type "string"';
      {
        directory_name: converted,
      }
    ),
    with_organizational_unit_distinguished_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"organizational_unit_distinguished_name" expected to be of type "string"';
      {
        organizational_unit_distinguished_name: converted,
      }
    ),
  },
  vpc_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_security_group_ids(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"security_group_ids" expected to be of type "list"';
      {
        security_group_ids: converted,
      }
    ),
    with_security_group_ids_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"security_group_ids" expected to be of type "list"';
      {
        security_group_ids+: converted,
      }
    ),
    with_subnet_ids(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"subnet_ids" expected to be of type "list"';
      {
        subnet_ids: converted,
      }
    ),
    with_subnet_ids_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"subnet_ids" expected to be of type "list"';
      {
        subnet_ids+: converted,
      }
    ),
  },
  with_compute_capacity(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      compute_capacity: value,
    }
  ),
  with_domain_join_info(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      domain_join_info: value,
    }
  ),
  with_vpc_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config: value,
    }
  ),
  with_compute_capacity_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      compute_capacity+: converted,
    }
  ),
  with_domain_join_info_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      domain_join_info+: converted,
    }
  ),
  with_vpc_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config+: converted,
    }
  ),
}
