{
  local block = self,
  new(duration, name, rules_package_arns, target_arn):: (
    {}
    + block.with_duration(duration)
    + block.with_name(name)
    + block.with_rules_package_arns(rules_package_arns)
    + block.with_target_arn(target_arn)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_duration(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"duration" expected to be of type "number"';
    {
      duration: converted,
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
  with_rules_package_arns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"rules_package_arns" expected to be of type "set"';
    {
      rules_package_arns: converted,
    }
  ),
  with_rules_package_arns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"rules_package_arns" expected to be of type "set"';
    {
      rules_package_arns+: converted,
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
  with_target_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_arn" expected to be of type "string"';
    {
      target_arn: converted,
    }
  ),
  event_subscription:: {
    local block = self,
    new(event, topic_arn):: (
      {}
      + block.with_event(event)
      + block.with_topic_arn(topic_arn)
    ),
    with_event(value):: (
      local converted = value;
      assert std.isString(converted) : '"event" expected to be of type "string"';
      {
        event: converted,
      }
    ),
    with_topic_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"topic_arn" expected to be of type "string"';
      {
        topic_arn: converted,
      }
    ),
  },
  with_event_subscription(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      event_subscription: value,
    }
  ),
  with_event_subscription_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      event_subscription+: converted,
    }
  ),
}
