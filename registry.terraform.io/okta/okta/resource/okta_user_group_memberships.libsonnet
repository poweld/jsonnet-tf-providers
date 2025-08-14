{
  local block = self,
  new(groups, user_id):: (
    {
      terraformObject:: "okta_user_group_memberships",
      terraformType:: "resource",
    }
    + block.withGroups(groups)
    + block.withUserId(user_id)
  ),
  "#withGroups":: "The list of Okta group IDs which the user should have membership managed for.",
  withGroups(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups" expected to be of type "set"';
    {
      groups: converted,
    }
  ),
  "#withGroupsMixin":: "The list of Okta group IDs which the user should have membership managed for.",
  withGroupsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups" expected to be of type "set"';
    {
      groups+: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withUserId":: "ID of a Okta User",
  withUserId(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_id" expected to be of type "string"';
    {
      user_id: converted,
    }
  ),
}
