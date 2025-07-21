{
  local block = self,
  new(notification_type, role_type):: (
    {}
    + block.with_notification_type(notification_type)
    + block.with_role_type(role_type)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_notification_type':: 'Type of the notification',
  with_notification_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"notification_type" expected to be of type "string"';
    {
      notification_type: converted,
    }
  ),
  '#with_role_type':: 'Type of the role',
  with_role_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_type" expected to be of type "string"';
    {
      role_type: converted,
    }
  ),
  '#with_status':: 'Status of subscription',
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
}
