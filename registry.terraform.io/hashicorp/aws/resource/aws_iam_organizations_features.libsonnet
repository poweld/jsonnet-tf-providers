{
  local block = self,
  new(enabled_features):: (
    {}
    + block.with_enabled_features(enabled_features)
  ),
  with_enabled_features(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_features" expected to be of type "set"';
    {
      enabled_features: converted,
    }
  ),
  with_enabled_features_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_features" expected to be of type "set"';
    {
      enabled_features+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
}
