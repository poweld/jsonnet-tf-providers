{
  local block = self,
  new():: (
    {
      terraformObject:: "okta_behavior",
    }
  ),
  "#withId":: "Behavior ID.",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withName":: "Behavior name.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withSettings":: "Map of behavior settings.",
  withSettings(value):: (
    local converted = value;
    assert std.isObject(converted) : '"settings" expected to be of type "map"';
    {
      settings: converted,
    }
  ),
  "#withStatus":: "Behavior status.",
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  "#withType":: "Behavior type.",
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
}
