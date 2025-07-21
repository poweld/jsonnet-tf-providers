{
  local block = self,
  new(availability_zones, name):: (
    {}
    + block.with_availability_zones(availability_zones)
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_availability_zones(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"availability_zones" expected to be of type "list"';
    {
      availability_zones: converted,
    }
  ),
  with_availability_zones_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"availability_zones" expected to be of type "list"';
    {
      availability_zones+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  with_start_multiplex(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"start_multiplex" expected to be of type "bool"';
    {
      start_multiplex: converted,
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
  multiplex_settings:: {
    local block = self,
    new(transport_stream_bitrate, transport_stream_id):: (
      {}
      + block.with_transport_stream_bitrate(transport_stream_bitrate)
      + block.with_transport_stream_id(transport_stream_id)
    ),
    with_maximum_video_buffer_delay_milliseconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"maximum_video_buffer_delay_milliseconds" expected to be of type "number"';
      {
        maximum_video_buffer_delay_milliseconds: converted,
      }
    ),
    with_transport_stream_bitrate(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"transport_stream_bitrate" expected to be of type "number"';
      {
        transport_stream_bitrate: converted,
      }
    ),
    with_transport_stream_id(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"transport_stream_id" expected to be of type "number"';
      {
        transport_stream_id: converted,
      }
    ),
    with_transport_stream_reserved_bitrate(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"transport_stream_reserved_bitrate" expected to be of type "number"';
      {
        transport_stream_reserved_bitrate: converted,
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
  with_multiplex_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      multiplex_settings: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_multiplex_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      multiplex_settings+: converted,
    }
  ),
}
