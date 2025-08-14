{
  local block = self,
  new():: (
    {
      terraformObject:: "okta_group",
    }
  ),
  "#withDelayReadSeconds":: "Force delay of the group read by N seconds. Useful when eventual consistency of group information needs to be allowed for; for instance, when group rules are known to have been applied.",
  withDelayReadSeconds(value):: (
    local converted = value;
    assert std.isString(converted) : '"delay_read_seconds" expected to be of type "string"';
    {
      delay_read_seconds: converted,
    }
  ),
  "#withDescription":: "Description of group.",
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  "#withId":: "ID of group.",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withIncludeUsers":: "Fetch group users, having default off cuts down on API calls.",
  withIncludeUsers(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_users" expected to be of type "bool"';
    {
      include_users: converted,
    }
  ),
  "#withName":: "Name of group.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withType":: "Type of the group. When specified in the terraform resource, will act as a filter when searching for the group",
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  "#withUsers":: "Users associated with the group. This can also be done per user.",
  withUsers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"users" expected to be of type "set"';
    {
      users: converted,
    }
  ),
  "#withUsersMixin":: "Users associated with the group. This can also be done per user.",
  withUsersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"users" expected to be of type "set"';
    {
      users+: converted,
    }
  ),
}
