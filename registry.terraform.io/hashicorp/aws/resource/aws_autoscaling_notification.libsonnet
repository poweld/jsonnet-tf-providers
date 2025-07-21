{
  local block = self,
  new(group_names, notifications, topic_arn):: (
    {}
    + block.with_group_names(group_names)
    + block.with_notifications(notifications)
    + block.with_topic_arn(topic_arn)
  ),
  with_group_names(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"group_names" expected to be of type "set"';
    {
      group_names: converted,
    }
  ),
  with_group_names_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"group_names" expected to be of type "set"';
    {
      group_names+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_notifications(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"notifications" expected to be of type "set"';
    {
      notifications: converted,
    }
  ),
  with_notifications_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"notifications" expected to be of type "set"';
    {
      notifications+: converted,
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
  with_topic_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"topic_arn" expected to be of type "string"';
    {
      topic_arn: converted,
    }
  ),
}
