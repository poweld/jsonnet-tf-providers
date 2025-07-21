{
  local block = self,
  new(role_arn):: (
    {}
    + block.with_role_arn(role_arn)
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
  with_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
    }
  ),
  recording_group:: {
    local block = self,
    new():: (
      {}
    ),
    with_all_supported(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"all_supported" expected to be of type "bool"';
      {
        all_supported: converted,
      }
    ),
    with_include_global_resource_types(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_global_resource_types" expected to be of type "bool"';
      {
        include_global_resource_types: converted,
      }
    ),
    with_resource_types(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_types" expected to be of type "set"';
      {
        resource_types: converted,
      }
    ),
    with_resource_types_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_types" expected to be of type "set"';
      {
        resource_types+: converted,
      }
    ),
    exclusion_by_resource_types:: {
      local block = self,
      new():: (
        {}
      ),
      with_resource_types(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_types" expected to be of type "set"';
        {
          resource_types: converted,
        }
      ),
      with_resource_types_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_types" expected to be of type "set"';
        {
          resource_types+: converted,
        }
      ),
    },
    recording_strategy:: {
      local block = self,
      new():: (
        {}
      ),
      with_use_only(value):: (
        local converted = value;
        assert std.isString(converted) : '"use_only" expected to be of type "string"';
        {
          use_only: converted,
        }
      ),
    },
    with_exclusion_by_resource_types(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        exclusion_by_resource_types: value,
      }
    ),
    with_recording_strategy(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        recording_strategy: value,
      }
    ),
    with_exclusion_by_resource_types_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        exclusion_by_resource_types+: converted,
      }
    ),
    with_recording_strategy_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        recording_strategy+: converted,
      }
    ),
  },
  recording_mode:: {
    local block = self,
    new():: (
      {}
    ),
    with_recording_frequency(value):: (
      local converted = value;
      assert std.isString(converted) : '"recording_frequency" expected to be of type "string"';
      {
        recording_frequency: converted,
      }
    ),
    recording_mode_override:: {
      local block = self,
      new(recording_frequency, resource_types):: (
        {}
        + block.with_recording_frequency(recording_frequency)
        + block.with_resource_types(resource_types)
      ),
      with_description(value):: (
        local converted = value;
        assert std.isString(converted) : '"description" expected to be of type "string"';
        {
          description: converted,
        }
      ),
      with_recording_frequency(value):: (
        local converted = value;
        assert std.isString(converted) : '"recording_frequency" expected to be of type "string"';
        {
          recording_frequency: converted,
        }
      ),
      with_resource_types(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_types" expected to be of type "set"';
        {
          resource_types: converted,
        }
      ),
      with_resource_types_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_types" expected to be of type "set"';
        {
          resource_types+: converted,
        }
      ),
    },
    with_recording_mode_override(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        recording_mode_override: value,
      }
    ),
    with_recording_mode_override_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        recording_mode_override+: converted,
      }
    ),
  },
  with_recording_group(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      recording_group: value,
    }
  ),
  with_recording_mode(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      recording_mode: value,
    }
  ),
  with_recording_group_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      recording_group+: converted,
    }
  ),
  with_recording_mode_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      recording_mode+: converted,
    }
  ),
}
