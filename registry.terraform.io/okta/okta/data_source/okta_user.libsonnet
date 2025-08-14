{
  local block = self,
  new():: (
    {
      terraformObject:: "okta_user",
      terraformType:: "data",
    }
  ),
  withAdminRoles(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"admin_roles" expected to be of type "set"';
    {
      admin_roles: converted,
    }
  ),
  withAdminRolesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"admin_roles" expected to be of type "set"';
    {
      admin_roles+: converted,
    }
  ),
  withCity(value):: (
    local converted = value;
    assert std.isString(converted) : '"city" expected to be of type "string"';
    {
      city: converted,
    }
  ),
  "#withCompoundSearchOperator":: "Search operator used when joining multiple search clauses",
  withCompoundSearchOperator(value):: (
    local converted = value;
    assert std.isString(converted) : '"compound_search_operator" expected to be of type "string"';
    {
      compound_search_operator: converted,
    }
  ),
  withCostCenter(value):: (
    local converted = value;
    assert std.isString(converted) : '"cost_center" expected to be of type "string"';
    {
      cost_center: converted,
    }
  ),
  withCountryCode(value):: (
    local converted = value;
    assert std.isString(converted) : '"country_code" expected to be of type "string"';
    {
      country_code: converted,
    }
  ),
  withCustomProfileAttributes(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_profile_attributes" expected to be of type "string"';
    {
      custom_profile_attributes: converted,
    }
  ),
  "#withDelayReadSeconds":: "Force delay of the user read by N seconds. Useful when eventual consistency of user information needs to be allowed for.",
  withDelayReadSeconds(value):: (
    local converted = value;
    assert std.isString(converted) : '"delay_read_seconds" expected to be of type "string"';
    {
      delay_read_seconds: converted,
    }
  ),
  withDepartment(value):: (
    local converted = value;
    assert std.isString(converted) : '"department" expected to be of type "string"';
    {
      department: converted,
    }
  ),
  withDisplayName(value):: (
    local converted = value;
    assert std.isString(converted) : '"display_name" expected to be of type "string"';
    {
      display_name: converted,
    }
  ),
  withDivision(value):: (
    local converted = value;
    assert std.isString(converted) : '"division" expected to be of type "string"';
    {
      division: converted,
    }
  ),
  withEmail(value):: (
    local converted = value;
    assert std.isString(converted) : '"email" expected to be of type "string"';
    {
      email: converted,
    }
  ),
  withEmployeeNumber(value):: (
    local converted = value;
    assert std.isString(converted) : '"employee_number" expected to be of type "string"';
    {
      employee_number: converted,
    }
  ),
  withFirstName(value):: (
    local converted = value;
    assert std.isString(converted) : '"first_name" expected to be of type "string"';
    {
      first_name: converted,
    }
  ),
  withGroupMemberships(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"group_memberships" expected to be of type "set"';
    {
      group_memberships: converted,
    }
  ),
  withGroupMembershipsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"group_memberships" expected to be of type "set"';
    {
      group_memberships+: converted,
    }
  ),
  withHonorificPrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"honorific_prefix" expected to be of type "string"';
    {
      honorific_prefix: converted,
    }
  ),
  withHonorificSuffix(value):: (
    local converted = value;
    assert std.isString(converted) : '"honorific_suffix" expected to be of type "string"';
    {
      honorific_suffix: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withLastName(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_name" expected to be of type "string"';
    {
      last_name: converted,
    }
  ),
  withLocale(value):: (
    local converted = value;
    assert std.isString(converted) : '"locale" expected to be of type "string"';
    {
      locale: converted,
    }
  ),
  withLogin(value):: (
    local converted = value;
    assert std.isString(converted) : '"login" expected to be of type "string"';
    {
      login: converted,
    }
  ),
  withManager(value):: (
    local converted = value;
    assert std.isString(converted) : '"manager" expected to be of type "string"';
    {
      manager: converted,
    }
  ),
  withManagerId(value):: (
    local converted = value;
    assert std.isString(converted) : '"manager_id" expected to be of type "string"';
    {
      manager_id: converted,
    }
  ),
  withMiddleName(value):: (
    local converted = value;
    assert std.isString(converted) : '"middle_name" expected to be of type "string"';
    {
      middle_name: converted,
    }
  ),
  withMobilePhone(value):: (
    local converted = value;
    assert std.isString(converted) : '"mobile_phone" expected to be of type "string"';
    {
      mobile_phone: converted,
    }
  ),
  withNickName(value):: (
    local converted = value;
    assert std.isString(converted) : '"nick_name" expected to be of type "string"';
    {
      nick_name: converted,
    }
  ),
  withOrganization(value):: (
    local converted = value;
    assert std.isString(converted) : '"organization" expected to be of type "string"';
    {
      organization: converted,
    }
  ),
  withPostalAddress(value):: (
    local converted = value;
    assert std.isString(converted) : '"postal_address" expected to be of type "string"';
    {
      postal_address: converted,
    }
  ),
  withPreferredLanguage(value):: (
    local converted = value;
    assert std.isString(converted) : '"preferred_language" expected to be of type "string"';
    {
      preferred_language: converted,
    }
  ),
  withPrimaryPhone(value):: (
    local converted = value;
    assert std.isString(converted) : '"primary_phone" expected to be of type "string"';
    {
      primary_phone: converted,
    }
  ),
  withProfileUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"profile_url" expected to be of type "string"';
    {
      profile_url: converted,
    }
  ),
  withRoles(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"roles" expected to be of type "set"';
    {
      roles: converted,
    }
  ),
  withRolesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"roles" expected to be of type "set"';
    {
      roles+: converted,
    }
  ),
  withSecondEmail(value):: (
    local converted = value;
    assert std.isString(converted) : '"second_email" expected to be of type "string"';
    {
      second_email: converted,
    }
  ),
  "#withSkipGroups":: "Do not populate user groups information (prevents additional API call)",
  withSkipGroups(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_groups" expected to be of type "bool"';
    {
      skip_groups: converted,
    }
  ),
  "#withSkipRoles":: "Do not populate user roles information (prevents additional API call)",
  withSkipRoles(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_roles" expected to be of type "bool"';
    {
      skip_roles: converted,
    }
  ),
  withState(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
    }
  ),
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  withStreetAddress(value):: (
    local converted = value;
    assert std.isString(converted) : '"street_address" expected to be of type "string"';
    {
      street_address: converted,
    }
  ),
  withTimezone(value):: (
    local converted = value;
    assert std.isString(converted) : '"timezone" expected to be of type "string"';
    {
      timezone: converted,
    }
  ),
  withTitle(value):: (
    local converted = value;
    assert std.isString(converted) : '"title" expected to be of type "string"';
    {
      title: converted,
    }
  ),
  "#withUserId":: "Retrieve a single user based on their id",
  withUserId(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_id" expected to be of type "string"';
    {
      user_id: converted,
    }
  ),
  withUserType(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_type" expected to be of type "string"';
    {
      user_type: converted,
    }
  ),
  withZipCode(value):: (
    local converted = value;
    assert std.isString(converted) : '"zip_code" expected to be of type "string"';
    {
      zip_code: converted,
    }
  ),
  search:: {
    local block = self,
    new():: (
      {
        terraformObject:: "okta_user",
        terraformType:: "data",
      }
    ),
    withComparison(value):: (
      local converted = value;
      assert std.isString(converted) : '"comparison" expected to be of type "string"';
      {
        comparison: converted,
      }
    ),
    "#withExpression":: "A raw search expression string. This requires the search feature be on. Please see Okta documentation on their filter API for users. https://developer.okta.com/docs/api/resources/users#list-users-with-search",
    withExpression(value):: (
      local converted = value;
      assert std.isString(converted) : '"expression" expected to be of type "string"';
      {
        expression: converted,
      }
    ),
    "#withName":: "Property name to search for. This requires the search feature be on. Please see Okta documentation on their filter API for users. https://developer.okta.com/docs/api/resources/users#list-users-with-search",
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
  },
  withSearch(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      search: value,
    }
  ),
  withSearchMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      search+: converted,
    }
  ),
}
