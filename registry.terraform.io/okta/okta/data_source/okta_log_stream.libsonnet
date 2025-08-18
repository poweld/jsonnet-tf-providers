{
  local block = self,
  new():: (
    {
      terraformObject:: "okta_log_stream",
      terraformType:: "data",
    }
  ),
  "#withId":: "ID of the log stream to retrieve, conflicts with `name`.",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withName":: "Unique name for the Log Stream object, conflicts with `id`.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  settings:: {
    local block = self,
    new():: (
      {
        terraformObject:: "okta_log_stream",
        terraformType:: "data",
      }
    ),
  },
  withSettings(value):: (
    local converted = value;
    {
      settings: value,
    }
  ),
}
