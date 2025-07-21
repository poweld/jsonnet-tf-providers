{
  local block = self,
  new(multiplex_id, program_name):: (
    {}
    + block.with_multiplex_id(multiplex_id)
    + block.with_program_name(program_name)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_multiplex_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"multiplex_id" expected to be of type "string"';
    {
      multiplex_id: converted,
    }
  ),
  with_program_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"program_name" expected to be of type "string"';
    {
      program_name: converted,
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
  multiplex_program_settings:: {
    local block = self,
    new(preferred_channel_pipeline, program_number):: (
      {}
      + block.with_preferred_channel_pipeline(preferred_channel_pipeline)
      + block.with_program_number(program_number)
    ),
    with_preferred_channel_pipeline(value):: (
      local converted = value;
      assert std.isString(converted) : '"preferred_channel_pipeline" expected to be of type "string"';
      {
        preferred_channel_pipeline: converted,
      }
    ),
    with_program_number(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"program_number" expected to be of type "number"';
      {
        program_number: converted,
      }
    ),
    service_descriptor:: {
      local block = self,
      new(provider_name, service_name):: (
        {}
        + block.with_provider_name(provider_name)
        + block.with_service_name(service_name)
      ),
      with_provider_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"provider_name" expected to be of type "string"';
        {
          provider_name: converted,
        }
      ),
      with_service_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"service_name" expected to be of type "string"';
        {
          service_name: converted,
        }
      ),
    },
    video_settings:: {
      local block = self,
      new():: (
        {}
      ),
      with_constant_bitrate(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"constant_bitrate" expected to be of type "number"';
        {
          constant_bitrate: converted,
        }
      ),
      statmux_settings:: {
        local block = self,
        new():: (
          {}
        ),
        with_maximum_bitrate(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"maximum_bitrate" expected to be of type "number"';
          {
            maximum_bitrate: converted,
          }
        ),
        with_minimum_bitrate(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"minimum_bitrate" expected to be of type "number"';
          {
            minimum_bitrate: converted,
          }
        ),
        with_priority(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"priority" expected to be of type "number"';
          {
            priority: converted,
          }
        ),
      },
      with_statmux_settings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          statmux_settings: value,
        }
      ),
      with_statmux_settings_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          statmux_settings+: converted,
        }
      ),
    },
    with_service_descriptor(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        service_descriptor: value,
      }
    ),
    with_video_settings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        video_settings: value,
      }
    ),
    with_service_descriptor_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        service_descriptor+: converted,
      }
    ),
    with_video_settings_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        video_settings+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_create':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
  },
  with_multiplex_program_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      multiplex_program_settings: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_multiplex_program_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      multiplex_program_settings+: converted,
    }
  ),
}
