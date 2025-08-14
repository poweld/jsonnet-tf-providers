{
  local block = self,
  new():: (
    {
      terraformObject:: "okta_features",
      terraformType:: "data",
    }
  ),
  "#withFeatures":: "The list of features that match the search criteria.",
  withFeatures(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"features" expected to be of type "list"';
    {
      features: converted,
    }
  ),
  "#withFeaturesMixin":: "The list of features that match the search criteria.",
  withFeaturesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"features" expected to be of type "list"';
    {
      features+: converted,
    }
  ),
  "#withId":: "Generated ID",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withLabel":: "Searches for features whose label or name property matches this value exactly. Case sensitive",
  withLabel(value):: (
    local converted = value;
    assert std.isString(converted) : '"label" expected to be of type "string"';
    {
      label: converted,
    }
  ),
  "#withSubstring":: "Searches for features whose label or name property substring match this value. Case sensitive",
  withSubstring(value):: (
    local converted = value;
    assert std.isString(converted) : '"substring" expected to be of type "string"';
    {
      substring: converted,
    }
  ),
}
