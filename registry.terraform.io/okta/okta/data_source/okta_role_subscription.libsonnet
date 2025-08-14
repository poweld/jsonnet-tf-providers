{
  local block = self,
  new(notification_type, role_type):: (
    {
      terraformObject:: "okta_role_subscription",
    }
    + block.withNotificationType(notification_type)
    + block.withRoleType(role_type)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withNotificationType":: "Type of the notification",
  withNotificationType(value):: (
    local converted = value;
    assert std.isString(converted) : '"notification_type" expected to be of type "string"';
    {
      notification_type: converted,
    }
  ),
  "#withRoleType":: "Type of the role",
  withRoleType(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_type" expected to be of type "string"';
    {
      role_type: converted,
    }
  ),
  "#withStatus":: "Status of subscription",
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
}
