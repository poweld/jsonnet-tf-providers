{
  local block = self,
  new(zone_id):: (
    {}
    + block.with_zone_id(zone_id)
  ),
  with_name_regex(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_regex" expected to be of type "string"';
    {
      name_regex: converted,
    }
  ),
  with_resource_record_sets(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"resource_record_sets" expected to be of type "list"';
    {
      resource_record_sets: converted,
    }
  ),
  with_resource_record_sets_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"resource_record_sets" expected to be of type "list"';
    {
      resource_record_sets+: converted,
    }
  ),
  with_zone_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"zone_id" expected to be of type "string"';
    {
      zone_id: converted,
    }
  ),
}
