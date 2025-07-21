{
  local block = self,
  new(name, tier):: (
    {}
    + block.with_name(name)
    + block.with_tier(tier)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  '#with_data_location_constraint':: 'Specifies a high-level geographical location constraint for where resilience policy data can be stored.',
  with_data_location_constraint(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_location_constraint" expected to be of type "string"';
    {
      data_location_constraint: converted,
    }
  ),
  '#with_description':: 'The description for the policy.',
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  '#with_estimated_cost_tier':: 'Specifies the estimated cost tier of the resiliency policy.',
  with_estimated_cost_tier(value):: (
    local converted = value;
    assert std.isString(converted) : '"estimated_cost_tier" expected to be of type "string"';
    {
      estimated_cost_tier: converted,
    }
  ),
  '#with_name':: 'The name of the policy.',
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
  '#with_tier':: 'The tier for the resiliency policy, ranging from the highest severity (MissionCritical) to lowest (NonCritical).',
  with_tier(value):: (
    local converted = value;
    assert std.isString(converted) : '"tier" expected to be of type "string"';
    {
      tier: converted,
    }
  ),
  policy:: {
    local block = self,
    new():: (
      {}
    ),
    az:: {
      local block = self,
      new(rpo, rto):: (
        {}
        + block.with_rpo(rpo)
        + block.with_rto(rto)
      ),
      '#with_rpo':: 'Recovery Point Objective (RPO) as a Go duration.',
      with_rpo(value):: (
        local converted = value;
        assert std.isString(converted) : '"rpo" expected to be of type "string"';
        {
          rpo: converted,
        }
      ),
      '#with_rto':: 'Recovery Time Objective (RTO) as a Go duration.',
      with_rto(value):: (
        local converted = value;
        assert std.isString(converted) : '"rto" expected to be of type "string"';
        {
          rto: converted,
        }
      ),
    },
    hardware:: {
      local block = self,
      new(rpo, rto):: (
        {}
        + block.with_rpo(rpo)
        + block.with_rto(rto)
      ),
      '#with_rpo':: 'Recovery Point Objective (RPO) as a Go duration.',
      with_rpo(value):: (
        local converted = value;
        assert std.isString(converted) : '"rpo" expected to be of type "string"';
        {
          rpo: converted,
        }
      ),
      '#with_rto':: 'Recovery Time Objective (RTO) as a Go duration.',
      with_rto(value):: (
        local converted = value;
        assert std.isString(converted) : '"rto" expected to be of type "string"';
        {
          rto: converted,
        }
      ),
    },
    region:: {
      local block = self,
      new():: (
        {}
      ),
      '#with_rpo':: 'Recovery Point Objective (RPO) as a Go duration.',
      with_rpo(value):: (
        local converted = value;
        assert std.isString(converted) : '"rpo" expected to be of type "string"';
        {
          rpo: converted,
        }
      ),
      '#with_rto':: 'Recovery Time Objective (RTO) as a Go duration.',
      with_rto(value):: (
        local converted = value;
        assert std.isString(converted) : '"rto" expected to be of type "string"';
        {
          rto: converted,
        }
      ),
    },
    software:: {
      local block = self,
      new(rpo, rto):: (
        {}
        + block.with_rpo(rpo)
        + block.with_rto(rto)
      ),
      '#with_rpo':: 'Recovery Point Objective (RPO) as a Go duration.',
      with_rpo(value):: (
        local converted = value;
        assert std.isString(converted) : '"rpo" expected to be of type "string"';
        {
          rpo: converted,
        }
      ),
      '#with_rto':: 'Recovery Time Objective (RTO) as a Go duration.',
      with_rto(value):: (
        local converted = value;
        assert std.isString(converted) : '"rto" expected to be of type "string"';
        {
          rto: converted,
        }
      ),
    },
    with_az(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        az: value,
      }
    ),
    with_hardware(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        hardware: value,
      }
    ),
    with_region(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        region: value,
      }
    ),
    with_software(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        software: value,
      }
    ),
    with_az_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        az+: converted,
      }
    ),
    with_hardware_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        hardware+: converted,
      }
    ),
    with_region_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        region+: converted,
      }
    ),
    with_software_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        software+: converted,
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
    '#with_delete':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    '#with_update':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_policy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      policy: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_policy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      policy+: converted,
    }
  ),
}
