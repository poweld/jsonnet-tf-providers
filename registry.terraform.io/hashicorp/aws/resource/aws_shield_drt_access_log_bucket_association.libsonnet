{
  local block = self,
  new(log_bucket, role_arn_association_id):: (
    {}
    + block.with_log_bucket(log_bucket)
    + block.with_role_arn_association_id(role_arn_association_id)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_log_bucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"log_bucket" expected to be of type "string"';
    {
      log_bucket: converted,
    }
  ),
  '#with_role_arn_association_id':: 'Unused',
  with_role_arn_association_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn_association_id" expected to be of type "string"';
    {
      role_arn_association_id: converted,
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
  },
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
