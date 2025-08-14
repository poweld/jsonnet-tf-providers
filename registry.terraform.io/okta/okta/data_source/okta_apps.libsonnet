{
  local block = self,
  new():: (
    {
      terraformObject:: "okta_apps",
      terraformType:: "data",
    }
  ),
  "#withActiveOnly":: "Search only active applications.",
  withActiveOnly(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"active_only" expected to be of type "bool"';
    {
      active_only: converted,
    }
  ),
  "#withApps":: "The list of applications that match the search criteria.",
  withApps(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"apps" expected to be of type "list"';
    {
      apps: converted,
    }
  ),
  "#withAppsMixin":: "The list of applications that match the search criteria.",
  withAppsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"apps" expected to be of type "list"';
    {
      apps+: converted,
    }
  ),
  "#withIncludeNonDeleted":: "Specifies whether to include non-active, but not deleted apps in the results.",
  withIncludeNonDeleted(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_non_deleted" expected to be of type "bool"';
    {
      include_non_deleted: converted,
    }
  ),
  "#withLabel":: "Searches for applications whose label or name property matches this value exactly.",
  withLabel(value):: (
    local converted = value;
    assert std.isString(converted) : '"label" expected to be of type "string"';
    {
      label: converted,
    }
  ),
  "#withLabelPrefix":: "Searches for applications whose label or name property begins with this value.",
  withLabelPrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"label_prefix" expected to be of type "string"';
    {
      label_prefix: converted,
    }
  ),
  "#withQ":: "Searches for applications whose name or label properties that starts with this value.",
  withQ(value):: (
    local converted = value;
    assert std.isString(converted) : '"q" expected to be of type "string"';
    {
      q: converted,
    }
  ),
  "#withUseOptimization":: "Specifies whether to use query optimization. If you specify `useOptimization=true` in the request query, the response contains a subset of app instance properties.",
  withUseOptimization(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"use_optimization" expected to be of type "bool"';
    {
      use_optimization: converted,
    }
  ),
}
