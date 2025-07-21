{
  local block = self,
  new(identity, notification_type):: (
    {}
    + block.with_identity(identity)
    + block.with_notification_type(notification_type)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_identity(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity" expected to be of type "string"';
    {
      identity: converted,
    }
  ),
  with_include_original_headers(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_original_headers" expected to be of type "bool"';
    {
      include_original_headers: converted,
    }
  ),
  with_notification_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"notification_type" expected to be of type "string"';
    {
      notification_type: converted,
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
