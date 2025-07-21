{
  local block = self,
  new(log_group_name, name, pattern):: (
    {}
    + block.with_log_group_name(log_group_name)
    + block.with_name(name)
    + block.with_pattern(pattern)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_log_group_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
    {
      log_group_name: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_pattern(value):: (
    local converted = value;
    assert std.isString(converted) : '"pattern" expected to be of type "string"';
    {
      pattern: converted,
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
  metric_transformation:: {
    local block = self,
    new(name, namespace, value):: (
      {}
      + block.with_name(name)
      + block.with_namespace(namespace)
      + block.with_value(value)
    ),
    with_default_value(value):: (
      local converted = value;
      assert std.isString(converted) : '"default_value" expected to be of type "string"';
      {
        default_value: converted,
      }
    ),
    with_dimensions(value):: (
      local converted = value;
      assert std.isObject(converted) : '"dimensions" expected to be of type "map"';
      {
        dimensions: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_namespace(value):: (
      local converted = value;
      assert std.isString(converted) : '"namespace" expected to be of type "string"';
      {
        namespace: converted,
      }
    ),
    with_unit(value):: (
      local converted = value;
      assert std.isString(converted) : '"unit" expected to be of type "string"';
      {
        unit: converted,
      }
    ),
    with_value(value):: (
      local converted = value;
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
  },
  with_metric_transformation(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      metric_transformation: value,
    }
  ),
  with_metric_transformation_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      metric_transformation+: converted,
    }
  ),
}
