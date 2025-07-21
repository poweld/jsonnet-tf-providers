{
  local block = self,
  new():: (
    {}
  ),
  with_groups(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"groups" expected to be of type "list"';
    {
      groups: converted,
    }
  ),
  with_groups_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"groups" expected to be of type "list"';
    {
      groups+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_limit':: 'The maximum number of groups returned by the Okta API, between 1 and 10000.',
  with_limit(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"limit" expected to be of type "number"';
    {
      limit: converted,
    }
  ),
  '#with_q':: 'Searches the name property of groups for matching value',
  with_q(value):: (
    local converted = value;
    assert std.isString(converted) : '"q" expected to be of type "string"';
    {
      q: converted,
    }
  ),
  '#with_search':: "Searches for groups with a supported filtering expression for all attributes except for '_embedded', '_links', and 'objectClass'",
  with_search(value):: (
    local converted = value;
    assert std.isString(converted) : '"search" expected to be of type "string"';
    {
      search: converted,
    }
  ),
  '#with_type':: 'Type of the group. When specified in the terraform resource, will act as a filter when searching for the groups',
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
}
