{
  local block = self,
  new():: (
    {
      terraformObject:: "okta_idp_social",
      terraformType:: "data",
    }
  ),
  "#withId":: "The id of the social idp to retrieve, conflicts with `name`.",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withName":: "The name of the social idp to retrieve, conflicts with `id`.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
}
