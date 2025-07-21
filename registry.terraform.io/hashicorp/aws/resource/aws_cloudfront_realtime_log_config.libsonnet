{
  local block = self,
  new(fields, name, sampling_rate):: (
    {}
    + block.with_fields(fields)
    + block.with_name(name)
    + block.with_sampling_rate(sampling_rate)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_fields(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"fields" expected to be of type "set"';
    {
      fields: converted,
    }
  ),
  with_fields_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"fields" expected to be of type "set"';
    {
      fields+: converted,
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
  with_sampling_rate(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"sampling_rate" expected to be of type "number"';
    {
      sampling_rate: converted,
    }
  ),
  endpoint:: {
    local block = self,
    new(stream_type):: (
      {}
      + block.with_stream_type(stream_type)
    ),
    with_stream_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"stream_type" expected to be of type "string"';
      {
        stream_type: converted,
      }
    ),
    kinesis_stream_config:: {
      local block = self,
      new(role_arn, stream_arn):: (
        {}
        + block.with_role_arn(role_arn)
        + block.with_stream_arn(stream_arn)
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      with_stream_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"stream_arn" expected to be of type "string"';
        {
          stream_arn: converted,
        }
      ),
    },
    with_kinesis_stream_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_stream_config: value,
      }
    ),
    with_kinesis_stream_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_stream_config+: converted,
      }
    ),
  },
  with_endpoint(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      endpoint: value,
    }
  ),
  with_endpoint_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      endpoint+: converted,
    }
  ),
}
