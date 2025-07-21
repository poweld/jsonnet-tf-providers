{
  local block = self,
  new(name, resource_id, scalable_dimension, schedule, service_namespace):: (
    {}
    + block.with_name(name)
    + block.with_resource_id(resource_id)
    + block.with_scalable_dimension(scalable_dimension)
    + block.with_schedule(schedule)
    + block.with_service_namespace(service_namespace)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_end_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"end_time" expected to be of type "string"';
    {
      end_time: converted,
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
  with_resource_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_id" expected to be of type "string"';
    {
      resource_id: converted,
    }
  ),
  with_scalable_dimension(value):: (
    local converted = value;
    assert std.isString(converted) : '"scalable_dimension" expected to be of type "string"';
    {
      scalable_dimension: converted,
    }
  ),
  with_schedule(value):: (
    local converted = value;
    assert std.isString(converted) : '"schedule" expected to be of type "string"';
    {
      schedule: converted,
    }
  ),
  with_service_namespace(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_namespace" expected to be of type "string"';
    {
      service_namespace: converted,
    }
  ),
  with_start_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"start_time" expected to be of type "string"';
    {
      start_time: converted,
    }
  ),
  with_timezone(value):: (
    local converted = value;
    assert std.isString(converted) : '"timezone" expected to be of type "string"';
    {
      timezone: converted,
    }
  ),
  scalable_target_action:: {
    local block = self,
    new():: (
      {}
    ),
    with_max_capacity(value):: (
      local converted = value;
      assert std.isString(converted) : '"max_capacity" expected to be of type "string"';
      {
        max_capacity: converted,
      }
    ),
    with_min_capacity(value):: (
      local converted = value;
      assert std.isString(converted) : '"min_capacity" expected to be of type "string"';
      {
        min_capacity: converted,
      }
    ),
  },
  with_scalable_target_action(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scalable_target_action: value,
    }
  ),
  with_scalable_target_action_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scalable_target_action+: converted,
    }
  ),
}
