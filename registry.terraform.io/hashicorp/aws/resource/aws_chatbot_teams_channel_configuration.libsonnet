{
  local block = self,
  new(channel_id, configuration_name, iam_role_arn, team_id, tenant_id):: (
    {}
    + block.with_channel_id(channel_id)
    + block.with_configuration_name(configuration_name)
    + block.with_iam_role_arn(iam_role_arn)
    + block.with_team_id(team_id)
    + block.with_tenant_id(tenant_id)
  ),
  with_channel_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"channel_id" expected to be of type "string"';
    {
      channel_id: converted,
    }
  ),
  with_channel_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"channel_name" expected to be of type "string"';
    {
      channel_name: converted,
    }
  ),
  with_chat_configuration_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"chat_configuration_arn" expected to be of type "string"';
    {
      chat_configuration_arn: converted,
    }
  ),
  with_configuration_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"configuration_name" expected to be of type "string"';
    {
      configuration_name: converted,
    }
  ),
  with_guardrail_policy_arns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"guardrail_policy_arns" expected to be of type "list"';
    {
      guardrail_policy_arns: converted,
    }
  ),
  with_guardrail_policy_arns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"guardrail_policy_arns" expected to be of type "list"';
    {
      guardrail_policy_arns+: converted,
    }
  ),
  with_iam_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_role_arn" expected to be of type "string"';
    {
      iam_role_arn: converted,
    }
  ),
  with_logging_level(value):: (
    local converted = value;
    assert std.isString(converted) : '"logging_level" expected to be of type "string"';
    {
      logging_level: converted,
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
  with_sns_topic_arns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"sns_topic_arns" expected to be of type "set"';
    {
      sns_topic_arns: converted,
    }
  ),
  with_sns_topic_arns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"sns_topic_arns" expected to be of type "set"';
    {
      sns_topic_arns+: converted,
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
  with_team_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"team_id" expected to be of type "string"';
    {
      team_id: converted,
    }
  ),
  with_team_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"team_name" expected to be of type "string"';
    {
      team_name: converted,
    }
  ),
  with_tenant_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"tenant_id" expected to be of type "string"';
    {
      tenant_id: converted,
    }
  ),
  with_user_authorization_required(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"user_authorization_required" expected to be of type "bool"';
    {
      user_authorization_required: converted,
    }
  ),
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_create':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    '#with_delete':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    '#with_update':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
