{
  local block = self,
  new():: (
    {}
  ),
  '#with_active_only':: 'Search only active applications.',
  with_active_only(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"active_only" expected to be of type "bool"';
    {
      active_only: converted,
    }
  ),
  '#with_apps':: 'The list of applications that match the search criteria.',
  with_apps(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"apps" expected to be of type "list"';
    {
      apps: converted,
    }
  ),
  '#with_apps_mixin':: 'The list of applications that match the search criteria.',
  with_apps_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"apps" expected to be of type "list"';
    {
      apps+: converted,
    }
  ),
  '#with_include_non_deleted':: 'Specifies whether to include non-active, but not deleted apps in the results.',
  with_include_non_deleted(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_non_deleted" expected to be of type "bool"';
    {
      include_non_deleted: converted,
    }
  ),
  '#with_label':: 'Searches for applications whose label or name property matches this value exactly.',
  with_label(value):: (
    local converted = value;
    assert std.isString(converted) : '"label" expected to be of type "string"';
    {
      label: converted,
    }
  ),
  '#with_label_prefix':: 'Searches for applications whose label or name property begins with this value.',
  with_label_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"label_prefix" expected to be of type "string"';
    {
      label_prefix: converted,
    }
  ),
  '#with_q':: 'Searches for applications whose name or label properties that starts with this value.',
  with_q(value):: (
    local converted = value;
    assert std.isString(converted) : '"q" expected to be of type "string"';
    {
      q: converted,
    }
  ),
  '#with_use_optimization':: 'Specifies whether to use query optimization. If you specify `useOptimization=true` in the request query, the response contains a subset of app instance properties.',
  with_use_optimization(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"use_optimization" expected to be of type "bool"';
    {
      use_optimization: converted,
    }
  ),
}
