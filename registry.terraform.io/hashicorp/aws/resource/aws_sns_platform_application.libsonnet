{
  local block = self,
  new(name, platform, platform_credential):: (
    {}
    + block.with_name(name)
    + block.with_platform(platform)
    + block.with_platform_credential(platform_credential)
  ),
  with_apple_platform_bundle_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"apple_platform_bundle_id" expected to be of type "string"';
    {
      apple_platform_bundle_id: converted,
    }
  ),
  with_apple_platform_team_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"apple_platform_team_id" expected to be of type "string"';
    {
      apple_platform_team_id: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_event_delivery_failure_topic_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"event_delivery_failure_topic_arn" expected to be of type "string"';
    {
      event_delivery_failure_topic_arn: converted,
    }
  ),
  with_event_endpoint_created_topic_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"event_endpoint_created_topic_arn" expected to be of type "string"';
    {
      event_endpoint_created_topic_arn: converted,
    }
  ),
  with_event_endpoint_deleted_topic_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"event_endpoint_deleted_topic_arn" expected to be of type "string"';
    {
      event_endpoint_deleted_topic_arn: converted,
    }
  ),
  with_event_endpoint_updated_topic_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"event_endpoint_updated_topic_arn" expected to be of type "string"';
    {
      event_endpoint_updated_topic_arn: converted,
    }
  ),
  with_failure_feedback_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"failure_feedback_role_arn" expected to be of type "string"';
    {
      failure_feedback_role_arn: converted,
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
  with_platform(value):: (
    local converted = value;
    assert std.isString(converted) : '"platform" expected to be of type "string"';
    {
      platform: converted,
    }
  ),
  with_platform_credential(value):: (
    local converted = value;
    assert std.isString(converted) : '"platform_credential" expected to be of type "string"';
    {
      platform_credential: converted,
    }
  ),
  with_platform_principal(value):: (
    local converted = value;
    assert std.isString(converted) : '"platform_principal" expected to be of type "string"';
    {
      platform_principal: converted,
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
  with_success_feedback_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"success_feedback_role_arn" expected to be of type "string"';
    {
      success_feedback_role_arn: converted,
    }
  ),
  with_success_feedback_sample_rate(value):: (
    local converted = value;
    assert std.isString(converted) : '"success_feedback_sample_rate" expected to be of type "string"';
    {
      success_feedback_sample_rate: converted,
    }
  ),
}
