{
  local block = self,
  new(max_capacity, min_capacity, resource_id, scalable_dimension, service_namespace):: (
    {}
    + block.with_max_capacity(max_capacity)
    + block.with_min_capacity(min_capacity)
    + block.with_resource_id(resource_id)
    + block.with_scalable_dimension(scalable_dimension)
    + block.with_service_namespace(service_namespace)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_max_capacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_capacity" expected to be of type "number"';
    {
      max_capacity: converted,
    }
  ),
  with_min_capacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"min_capacity" expected to be of type "number"';
    {
      min_capacity: converted,
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
  with_resource_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_id" expected to be of type "string"';
    {
      resource_id: converted,
    }
  ),
  with_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
    }
  ),
  with_scalable_dimension(value):: (
    local converted = value;
    assert std.isString(converted) : '"scalable_dimension" expected to be of type "string"';
    {
      scalable_dimension: converted,
    }
  ),
  with_service_namespace(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_namespace" expected to be of type "string"';
    {
      service_namespace: converted,
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
  suspended_state:: {
    local block = self,
    new():: (
      {}
    ),
    with_dynamic_scaling_in_suspended(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"dynamic_scaling_in_suspended" expected to be of type "bool"';
      {
        dynamic_scaling_in_suspended: converted,
      }
    ),
    with_dynamic_scaling_out_suspended(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"dynamic_scaling_out_suspended" expected to be of type "bool"';
      {
        dynamic_scaling_out_suspended: converted,
      }
    ),
    with_scheduled_scaling_suspended(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"scheduled_scaling_suspended" expected to be of type "bool"';
      {
        scheduled_scaling_suspended: converted,
      }
    ),
  },
  with_suspended_state(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      suspended_state: value,
    }
  ),
  with_suspended_state_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      suspended_state+: converted,
    }
  ),
}
