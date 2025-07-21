{
  local block = self,
  new():: (
    {}
  ),
  with_admin_roles(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"admin_roles" expected to be of type "set"';
    {
      admin_roles: converted,
    }
  ),
  with_admin_roles_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"admin_roles" expected to be of type "set"';
    {
      admin_roles+: converted,
    }
  ),
  with_city(value):: (
    local converted = value;
    assert std.isString(converted) : '"city" expected to be of type "string"';
    {
      city: converted,
    }
  ),
  '#with_compound_search_operator':: 'Search operator used when joining multiple search clauses',
  with_compound_search_operator(value):: (
    local converted = value;
    assert std.isString(converted) : '"compound_search_operator" expected to be of type "string"';
    {
      compound_search_operator: converted,
    }
  ),
  with_cost_center(value):: (
    local converted = value;
    assert std.isString(converted) : '"cost_center" expected to be of type "string"';
    {
      cost_center: converted,
    }
  ),
  with_country_code(value):: (
    local converted = value;
    assert std.isString(converted) : '"country_code" expected to be of type "string"';
    {
      country_code: converted,
    }
  ),
  with_custom_profile_attributes(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_profile_attributes" expected to be of type "string"';
    {
      custom_profile_attributes: converted,
    }
  ),
  '#with_delay_read_seconds':: 'Force delay of the user read by N seconds. Useful when eventual consistency of user information needs to be allowed for.',
  with_delay_read_seconds(value):: (
    local converted = value;
    assert std.isString(converted) : '"delay_read_seconds" expected to be of type "string"';
    {
      delay_read_seconds: converted,
    }
  ),
  with_department(value):: (
    local converted = value;
    assert std.isString(converted) : '"department" expected to be of type "string"';
    {
      department: converted,
    }
  ),
  with_display_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"display_name" expected to be of type "string"';
    {
      display_name: converted,
    }
  ),
  with_division(value):: (
    local converted = value;
    assert std.isString(converted) : '"division" expected to be of type "string"';
    {
      division: converted,
    }
  ),
  with_email(value):: (
    local converted = value;
    assert std.isString(converted) : '"email" expected to be of type "string"';
    {
      email: converted,
    }
  ),
  with_employee_number(value):: (
    local converted = value;
    assert std.isString(converted) : '"employee_number" expected to be of type "string"';
    {
      employee_number: converted,
    }
  ),
  with_first_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"first_name" expected to be of type "string"';
    {
      first_name: converted,
    }
  ),
  with_group_memberships(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"group_memberships" expected to be of type "set"';
    {
      group_memberships: converted,
    }
  ),
  with_group_memberships_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"group_memberships" expected to be of type "set"';
    {
      group_memberships+: converted,
    }
  ),
  with_honorific_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"honorific_prefix" expected to be of type "string"';
    {
      honorific_prefix: converted,
    }
  ),
  with_honorific_suffix(value):: (
    local converted = value;
    assert std.isString(converted) : '"honorific_suffix" expected to be of type "string"';
    {
      honorific_suffix: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_last_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_name" expected to be of type "string"';
    {
      last_name: converted,
    }
  ),
  with_locale(value):: (
    local converted = value;
    assert std.isString(converted) : '"locale" expected to be of type "string"';
    {
      locale: converted,
    }
  ),
  with_login(value):: (
    local converted = value;
    assert std.isString(converted) : '"login" expected to be of type "string"';
    {
      login: converted,
    }
  ),
  with_manager(value):: (
    local converted = value;
    assert std.isString(converted) : '"manager" expected to be of type "string"';
    {
      manager: converted,
    }
  ),
  with_manager_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"manager_id" expected to be of type "string"';
    {
      manager_id: converted,
    }
  ),
  with_middle_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"middle_name" expected to be of type "string"';
    {
      middle_name: converted,
    }
  ),
  with_mobile_phone(value):: (
    local converted = value;
    assert std.isString(converted) : '"mobile_phone" expected to be of type "string"';
    {
      mobile_phone: converted,
    }
  ),
  with_nick_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"nick_name" expected to be of type "string"';
    {
      nick_name: converted,
    }
  ),
  with_organization(value):: (
    local converted = value;
    assert std.isString(converted) : '"organization" expected to be of type "string"';
    {
      organization: converted,
    }
  ),
  with_postal_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"postal_address" expected to be of type "string"';
    {
      postal_address: converted,
    }
  ),
  with_preferred_language(value):: (
    local converted = value;
    assert std.isString(converted) : '"preferred_language" expected to be of type "string"';
    {
      preferred_language: converted,
    }
  ),
  with_primary_phone(value):: (
    local converted = value;
    assert std.isString(converted) : '"primary_phone" expected to be of type "string"';
    {
      primary_phone: converted,
    }
  ),
  with_profile_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"profile_url" expected to be of type "string"';
    {
      profile_url: converted,
    }
  ),
  with_roles(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"roles" expected to be of type "set"';
    {
      roles: converted,
    }
  ),
  with_roles_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"roles" expected to be of type "set"';
    {
      roles+: converted,
    }
  ),
  with_second_email(value):: (
    local converted = value;
    assert std.isString(converted) : '"second_email" expected to be of type "string"';
    {
      second_email: converted,
    }
  ),
  '#with_skip_groups':: 'Do not populate user groups information (prevents additional API call)',
  with_skip_groups(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_groups" expected to be of type "bool"';
    {
      skip_groups: converted,
    }
  ),
  '#with_skip_roles':: 'Do not populate user roles information (prevents additional API call)',
  with_skip_roles(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_roles" expected to be of type "bool"';
    {
      skip_roles: converted,
    }
  ),
  with_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_street_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"street_address" expected to be of type "string"';
    {
      street_address: converted,
    }
  ),
  with_timezone(value):: (
    local converted = value;
    assert std.isString(converted) : '"timezone" expected to be of type "string"';
    {
      timezone: converted,
    }
  ),
  with_title(value):: (
    local converted = value;
    assert std.isString(converted) : '"title" expected to be of type "string"';
    {
      title: converted,
    }
  ),
  '#with_user_id':: 'Retrieve a single user based on their id',
  with_user_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_id" expected to be of type "string"';
    {
      user_id: converted,
    }
  ),
  with_user_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_type" expected to be of type "string"';
    {
      user_type: converted,
    }
  ),
  with_zip_code(value):: (
    local converted = value;
    assert std.isString(converted) : '"zip_code" expected to be of type "string"';
    {
      zip_code: converted,
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
