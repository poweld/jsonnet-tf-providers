{
  local block = self,
  new():: (
    {}
  ),
  '#with_compound_search_operator':: 'Search operator used when joining multiple search clauses',
  with_compound_search_operator(value):: (
    local converted = value;
    assert std.isString(converted) : '"compound_search_operator" expected to be of type "string"';
    {
      compound_search_operator: converted,
    }
  ),
  '#with_delay_read_seconds':: 'Force delay of the users read by N seconds. Useful when eventual consistency of users information needs to be allowed for.',
  with_delay_read_seconds(value):: (
    local converted = value;
    assert std.isString(converted) : '"delay_read_seconds" expected to be of type "string"';
    {
      delay_read_seconds: converted,
    }
  ),
  '#with_group_id':: 'Find users based on group membership using the id of the group.',
  with_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"group_id" expected to be of type "string"';
    {
      group_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_include_groups':: 'Fetch group memberships for each user',
  with_include_groups(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_groups" expected to be of type "bool"';
    {
      include_groups: converted,
    }
  ),
  '#with_include_roles':: 'Fetch user roles for each user',
  with_include_roles(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_roles" expected to be of type "bool"';
    {
      include_roles: converted,
    }
  ),
  '#with_users':: 'collection of users retrieved from Okta.',
  with_users(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"users" expected to be of type "list"';
    {
      users: converted,
    }
  ),
  '#with_users_mixin':: 'collection of users retrieved from Okta.',
  with_users_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"users" expected to be of type "list"';
    {
      users+: converted,
    }
  ),
  search:: {
    local block = self,
    new():: (
      {}
    ),
    with_comparison(value):: (
      local converted = value;
      assert std.isString(converted) : '"comparison" expected to be of type "string"';
      {
        comparison: converted,
      }
    ),
    '#with_expression':: 'A raw search expression string. This requires the search feature be on. Please see Okta documentation on their filter API for users. https://developer.okta.com/docs/api/resources/users#list-users-with-search',
    with_expression(value):: (
      local converted = value;
      assert std.isString(converted) : '"expression" expected to be of type "string"';
      {
        expression: converted,
      }
    ),
    '#with_name':: 'Property name to search for. This requires the search feature be on. Please see Okta documentation on their filter API for users. https://developer.okta.com/docs/api/resources/users#list-users-with-search',
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_value(value):: (
      local converted = value;
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
  },
  with_search(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      search: value,
    }
  ),
  with_search_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      search+: converted,
    }
  ),
}
