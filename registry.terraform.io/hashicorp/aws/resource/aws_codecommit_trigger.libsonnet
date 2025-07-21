{
  local block = self,
  new(repository_name):: (
    {}
    + block.with_repository_name(repository_name)
  ),
  with_configuration_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"configuration_id" expected to be of type "string"';
    {
      configuration_id: converted,
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
  with_repository_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"repository_name" expected to be of type "string"';
    {
      repository_name: converted,
    }
  ),
  trigger:: {
    local block = self,
    new(destination_arn, events, name):: (
      {}
      + block.with_destination_arn(destination_arn)
      + block.with_events(events)
      + block.with_name(name)
    ),
    with_branches(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"branches" expected to be of type "list"';
      {
        branches: converted,
      }
    ),
    with_branches_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"branches" expected to be of type "list"';
      {
        branches+: converted,
      }
    ),
    with_custom_data(value):: (
      local converted = value;
      assert std.isString(converted) : '"custom_data" expected to be of type "string"';
      {
        custom_data: converted,
      }
    ),
    with_destination_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"destination_arn" expected to be of type "string"';
      {
        destination_arn: converted,
      }
    ),
    with_events(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"events" expected to be of type "list"';
      {
        events: converted,
      }
    ),
    with_events_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"events" expected to be of type "list"';
      {
        events+: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
  },
  with_trigger(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      trigger: value,
    }
  ),
  with_trigger_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      trigger+: converted,
    }
  ),
}
