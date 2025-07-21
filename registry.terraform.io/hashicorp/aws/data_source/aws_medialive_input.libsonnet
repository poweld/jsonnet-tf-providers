{
  local block = self,
  new(id):: (
    {}
    + block.with_id(id)
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
  with_destinations(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"destinations" expected to be of type "list"';
    {
      destinations: converted,
    }
  ),
  with_destinations_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"destinations" expected to be of type "list"';
    {
      destinations+: converted,
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
  with_input_devices(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"input_devices" expected to be of type "list"';
    {
      input_devices: converted,
    }
  ),
  with_input_devices_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"input_devices" expected to be of type "list"';
    {
      input_devices+: converted,
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
  with_input_source_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"input_source_type" expected to be of type "string"';
    {
      input_source_type: converted,
    }
  ),
  with_media_connect_flows(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"media_connect_flows" expected to be of type "list"';
    {
      media_connect_flows: converted,
    }
  ),
  with_media_connect_flows_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"media_connect_flows" expected to be of type "list"';
    {
      media_connect_flows+: converted,
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
  with_security_groups(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"security_groups" expected to be of type "list"';
    {
      security_groups: converted,
    }
  ),
  with_security_groups_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"security_groups" expected to be of type "list"';
    {
      security_groups+: converted,
    }
  ),
  with_sources(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"sources" expected to be of type "list"';
    {
      sources: converted,
    }
  ),
  with_sources_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"sources" expected to be of type "list"';
    {
      sources+: converted,
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
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
}
