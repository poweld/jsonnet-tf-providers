{
  local block = self,
  new(metric_name, name):: (
    {}
    + block.with_metric_name(metric_name)
    + block.with_name(name)
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
  predicates:: {
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
  with_predicates(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      predicates: value,
    }
  ),
  with_predicates_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      predicates+: converted,
    }
  ),
}
