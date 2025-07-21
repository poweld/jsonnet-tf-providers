{
  local block = self,
  new(metric_name, name, rate_key, rate_limit):: (
    {}
    + block.with_metric_name(metric_name)
    + block.with_name(name)
    + block.with_rate_key(rate_key)
    + block.with_rate_limit(rate_limit)
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
  with_metric_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"metric_name" expected to be of type "string"';
    {
      metric_name: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_rate_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"rate_key" expected to be of type "string"';
    {
      rate_key: converted,
    }
  ),
  with_rate_limit(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"rate_limit" expected to be of type "number"';
    {
      rate_limit: converted,
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
  predicate:: {
    local block = self,
    new(data_id, negated, type):: (
      {}
      + block.with_data_id(data_id)
      + block.with_negated(negated)
      + block.with_type(type)
    ),
    with_data_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"data_id" expected to be of type "string"';
      {
        data_id: converted,
      }
    ),
    with_negated(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"negated" expected to be of type "bool"';
      {
        negated: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  with_predicate(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      predicate: value,
    }
  ),
  with_predicate_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      predicate+: converted,
    }
  ),
}
