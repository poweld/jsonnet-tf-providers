{
  local block = self,
  new(arn):: (
    {}
    + block.with_arn(arn)
  ),
  with_action(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"action" expected to be of type "list"';
    {
      action: converted,
    }
  ),
  with_action_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"action" expected to be of type "list"';
    {
      action+: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_chat_channel(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"chat_channel" expected to be of type "set"';
    {
      chat_channel: converted,
    }
  ),
  with_chat_channel_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"chat_channel" expected to be of type "set"';
    {
      chat_channel+: converted,
    }
  ),
  with_display_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"display_name" expected to be of type "string"';
    {
      display_name: converted,
    }
  ),
  with_engagements(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"engagements" expected to be of type "set"';
    {
      engagements: converted,
    }
  ),
  with_engagements_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"engagements" expected to be of type "set"';
    {
      engagements+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_incident_template(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"incident_template" expected to be of type "list"';
    {
      incident_template: converted,
    }
  ),
  with_incident_template_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"incident_template" expected to be of type "list"';
    {
      incident_template+: converted,
    }
  ),
  with_integration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"integration" expected to be of type "list"';
    {
      integration: converted,
    }
  ),
  with_integration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"integration" expected to be of type "list"';
    {
      integration+: converted,
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
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
}
