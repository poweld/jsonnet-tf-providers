{
  local block = self,
  new(instance_type, name):: (
    {}
    + block.with_instance_type(instance_type)
    + block.with_name(name)
  ),
  with_appstream_agent_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"appstream_agent_version" expected to be of type "string"';
    {
      appstream_agent_version: converted,
    }
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
  access_endpoint:: {
    local block = self,
    new(endpoint_type):: (
      {}
      + block.with_endpoint_type(endpoint_type)
    ),
    with_endpoint_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"endpoint_type" expected to be of type "string"';
      {
        endpoint_type: converted,
      }
    ),
    with_vpce_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"vpce_id" expected to be of type "string"';
      {
        vpce_id: converted,
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
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
      {
        security_group_ids: converted,
      }
    ),
    with_security_group_ids_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
      {
        security_group_ids+: converted,
      }
    ),
    with_subnet_ids(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
      {
        subnet_ids: converted,
      }
    ),
    with_subnet_ids_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
      {
        subnet_ids+: converted,
      }
    ),
  },
  with_access_endpoint(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_endpoint: value,
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
  with_access_endpoint_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_endpoint+: converted,
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
