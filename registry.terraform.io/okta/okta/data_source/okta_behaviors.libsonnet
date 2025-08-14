{
  local block = self,
  new():: (
    {
      terraformObject:: "okta_behaviors",
    }
  ),
  withBehaviors(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"behaviors" expected to be of type "list"';
    {
      behaviors: converted,
    }
  ),
  withBehaviorsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"behaviors" expected to be of type "list"';
    {
      behaviors+: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withQ":: "Searches the name property of behaviors for matching value",
  withQ(value):: (
    local converted = value;
    assert std.isString(converted) : '"q" expected to be of type "string"';
    {
      q: converted,
    }
  ),
}
