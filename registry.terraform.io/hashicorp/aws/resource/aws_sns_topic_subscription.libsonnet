{
  local block = self,
  new(endpoint, protocol, topic_arn):: (
    {}
    + block.with_endpoint(endpoint)
    + block.with_protocol(protocol)
    + block.with_topic_arn(topic_arn)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_confirmation_timeout_in_minutes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"confirmation_timeout_in_minutes" expected to be of type "number"';
    {
      confirmation_timeout_in_minutes: converted,
    }
  ),
  with_confirmation_was_authenticated(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"confirmation_was_authenticated" expected to be of type "bool"';
    {
      confirmation_was_authenticated: converted,
    }
  ),
  with_delivery_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"delivery_policy" expected to be of type "string"';
    {
      delivery_policy: converted,
    }
  ),
  with_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint" expected to be of type "string"';
    {
      endpoint: converted,
    }
  ),
  with_endpoint_auto_confirms(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"endpoint_auto_confirms" expected to be of type "bool"';
    {
      endpoint_auto_confirms: converted,
    }
  ),
  with_filter_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"filter_policy" expected to be of type "string"';
    {
      filter_policy: converted,
    }
  ),
  with_filter_policy_scope(value):: (
    local converted = value;
    assert std.isString(converted) : '"filter_policy_scope" expected to be of type "string"';
    {
      filter_policy_scope: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_owner_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_id" expected to be of type "string"';
    {
      owner_id: converted,
    }
  ),
  with_pending_confirmation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"pending_confirmation" expected to be of type "bool"';
    {
      pending_confirmation: converted,
    }
  ),
  with_protocol(value):: (
    local converted = value;
    assert std.isString(converted) : '"protocol" expected to be of type "string"';
    {
      protocol: converted,
    }
  ),
  with_raw_message_delivery(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"raw_message_delivery" expected to be of type "bool"';
    {
      raw_message_delivery: converted,
    }
  ),
  with_redrive_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"redrive_policy" expected to be of type "string"';
    {
      redrive_policy: converted,
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
  with_replay_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"replay_policy" expected to be of type "string"';
    {
      replay_policy: converted,
    }
  ),
  with_subscription_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"subscription_role_arn" expected to be of type "string"';
    {
      subscription_role_arn: converted,
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
