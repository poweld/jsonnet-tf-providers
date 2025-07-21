{
  local block = self,
  new(cluster_id):: (
    {}
    + block.with_cluster_id(cluster_id)
  ),
  with_cluster_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_id" expected to be of type "string"';
    {
      cluster_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  compute_limits:: {
    local block = self,
    new(maximum_capacity_units, minimum_capacity_units, unit_type):: (
      {}
      + block.with_maximum_capacity_units(maximum_capacity_units)
      + block.with_minimum_capacity_units(minimum_capacity_units)
      + block.with_unit_type(unit_type)
    ),
    with_maximum_capacity_units(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"maximum_capacity_units" expected to be of type "number"';
      {
        maximum_capacity_units: converted,
      }
    ),
    with_maximum_core_capacity_units(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"maximum_core_capacity_units" expected to be of type "number"';
      {
        maximum_core_capacity_units: converted,
      }
    ),
    with_maximum_ondemand_capacity_units(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"maximum_ondemand_capacity_units" expected to be of type "number"';
      {
        maximum_ondemand_capacity_units: converted,
      }
    ),
    with_minimum_capacity_units(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"minimum_capacity_units" expected to be of type "number"';
      {
        minimum_capacity_units: converted,
      }
    ),
    with_unit_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"unit_type" expected to be of type "string"';
      {
        unit_type: converted,
      }
    ),
  },
  with_compute_limits(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      compute_limits: value,
    }
  ),
  with_compute_limits_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      compute_limits+: converted,
    }
  ),
}
