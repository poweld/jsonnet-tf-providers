{
  local block = self,
  new(name, type):: (
    {}
    + block.with_name(name)
    + block.with_type(type)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_attached_channels(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"attached_channels" expected to be of type "list"';
    {
      attached_channels: converted,
    }
  ),
  with_attached_channels_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"attached_channels" expected to be of type "list"';
    {
      attached_channels+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_input_class(value):: (
    local converted = value;
    assert std.isString(converted) : '"input_class" expected to be of type "string"';
    {
      input_class: converted,
    }
  ),
  with_input_partner_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"input_partner_ids" expected to be of type "list"';
    {
      input_partner_ids: converted,
    }
  ),
  with_input_partner_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"input_partner_ids" expected to be of type "list"';
    {
      input_partner_ids+: converted,
    }
  ),
  with_input_security_groups(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"input_security_groups" expected to be of type "list"';
    {
      input_security_groups: converted,
    }
  ),
  with_input_security_groups_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"input_security_groups" expected to be of type "list"';
    {
      input_security_groups+: converted,
    }
  ),
  with_input_source_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"input_source_type" expected to be of type "string"';
    {
      input_source_type: converted,
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
  with_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
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
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  destinations:: {
    local block = self,
    new(stream_name):: (
      {}
      + block.with_stream_name(stream_name)
    ),
    with_stream_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"stream_name" expected to be of type "string"';
      {
        stream_name: converted,
      }
    ),
  },
  input_devices:: {
    local block = self,
    new(id):: (
      {}
      + block.with_id(id)
    ),
    with_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
  },
  media_connect_flows:: {
    local block = self,
    new(flow_arn):: (
      {}
      + block.with_flow_arn(flow_arn)
    ),
    with_flow_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"flow_arn" expected to be of type "string"';
      {
        flow_arn: converted,
      }
    ),
  },
  sources:: {
    local block = self,
    new(password_param, url, username):: (
      {}
      + block.with_password_param(password_param)
      + block.with_url(url)
      + block.with_username(username)
    ),
    with_password_param(value):: (
      local converted = value;
      assert std.isString(converted) : '"password_param" expected to be of type "string"';
      {
        password_param: converted,
      }
    ),
    with_url(value):: (
      local converted = value;
      assert std.isString(converted) : '"url" expected to be of type "string"';
      {
        url: converted,
      }
    ),
    with_username(value):: (
      local converted = value;
      assert std.isString(converted) : '"username" expected to be of type "string"';
      {
        username: converted,
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
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  vpc:: {
    local block = self,
    new(subnet_ids):: (
      {}
      + block.with_subnet_ids(subnet_ids)
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
  with_destinations(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destinations: value,
    }
  ),
  with_input_devices(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_devices: value,
    }
  ),
  with_media_connect_flows(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      media_connect_flows: value,
    }
  ),
  with_sources(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sources: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_vpc(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc: value,
    }
  ),
  with_destinations_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destinations+: converted,
    }
  ),
  with_input_devices_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_devices+: converted,
    }
  ),
  with_media_connect_flows_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      media_connect_flows+: converted,
    }
  ),
  with_sources_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sources+: converted,
    }
  ),
  with_vpc_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc+: converted,
    }
  ),
}
