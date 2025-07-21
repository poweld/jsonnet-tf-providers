{
  local block = self,
  new(connection_events, connection_notification_arn):: (
    {}
    + block.with_connection_events(connection_events)
    + block.with_connection_notification_arn(connection_notification_arn)
  ),
  with_connection_events(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"connection_events" expected to be of type "set"';
    {
      connection_events: converted,
    }
  ),
  with_connection_events_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"connection_events" expected to be of type "set"';
    {
      connection_events+: converted,
    }
  ),
  with_connection_notification_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"connection_notification_arn" expected to be of type "string"';
    {
      connection_notification_arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  with_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
    }
  ),
  with_vpc_endpoint_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_endpoint_id" expected to be of type "string"';
    {
      vpc_endpoint_id: converted,
    }
  ),
  with_vpc_endpoint_service_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_endpoint_service_id" expected to be of type "string"';
    {
      vpc_endpoint_service_id: converted,
    }
  ),
}
