{
  local block = self,
  new():: (
    {}
  ),
  '#with_features':: 'The list of features that match the search criteria.',
  with_features(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"features" expected to be of type "list"';
    {
      features: converted,
    }
  ),
  '#with_features_mixin':: 'The list of features that match the search criteria.',
  with_features_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"features" expected to be of type "list"';
    {
      features+: converted,
    }
  ),
  '#with_id':: 'Generated ID',
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_label':: 'Searches for features whose label or name property matches this value exactly. Case sensitive',
  with_label(value):: (
    local converted = value;
    assert std.isString(converted) : '"label" expected to be of type "string"';
    {
      label: converted,
    }
  ),
  '#with_substring':: 'Searches for features whose label or name property substring match this value. Case sensitive',
  with_substring(value):: (
    local converted = value;
    assert std.isString(converted) : '"substring" expected to be of type "string"';
    {
      substring: converted,
    }
  ),
}
