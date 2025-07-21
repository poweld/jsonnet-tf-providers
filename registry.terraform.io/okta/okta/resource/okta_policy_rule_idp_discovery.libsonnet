{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_name':: 'Policy Rule Name',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  '#with_network_connection':: 'Network selection mode: `ANYWHERE`, `ZONE`, `ON_NETWORK`, or `OFF_NETWORK`. Default: `ANYWHERE`',
  with_network_connection(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_connection" expected to be of type "string"';
    {
      network_connection: converted,
    }
  ),
  '#with_network_excludes':: 'Required if `network_connection` = `ZONE`. Indicates the network zones to exclude.',
  with_network_excludes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"network_excludes" expected to be of type "list"';
    {
      network_excludes: converted,
    }
  ),
  '#with_network_excludes_mixin':: 'Required if `network_connection` = `ZONE`. Indicates the network zones to exclude.',
  with_network_excludes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"network_excludes" expected to be of type "list"';
    {
      network_excludes+: converted,
    }
  ),
  '#with_network_includes':: 'Required if `network_connection` = `ZONE`. Indicates the network zones to include.',
  with_network_includes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"network_includes" expected to be of type "list"';
    {
      network_includes: converted,
    }
  ),
  '#with_network_includes_mixin':: 'Required if `network_connection` = `ZONE`. Indicates the network zones to include.',
  with_network_includes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"network_includes" expected to be of type "list"';
    {
      network_includes+: converted,
    }
  ),
  '#with_policy_id':: 'Policy ID of the Rule',
  with_policy_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_id" expected to be of type "string"';
    {
      policy_id: converted,
    }
  ),
  '#with_priority':: 'Rule priority. This attribute can be set to a valid priority. To avoid an endless diff situation an error is thrown if an invalid property is provided. The Okta API defaults to the last (lowest) if not provided.',
  with_priority(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"priority" expected to be of type "number"';
    {
      priority: converted,
    }
  ),
  '#with_status':: 'Policy Rule Status: `ACTIVE` or `INACTIVE`. Default: `ACTIVE`',
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  '#with_user_identifier_attribute':: 'Profile attribute matching can only have a single value that describes the type indicated in `user_identifier_type`. This is the attribute or identifier that the `user_identifier_patterns` are checked against.',
  with_user_identifier_attribute(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_identifier_attribute" expected to be of type "string"';
    {
      user_identifier_attribute: converted,
    }
  ),
  '#with_user_identifier_type':: 'One of: `IDENTIFIER`, `ATTRIBUTE`',
  with_user_identifier_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_identifier_type" expected to be of type "string"';
    {
      user_identifier_type: converted,
    }
  ),
  app_exclude:: {
    local block = self,
    new(type):: (
      {}
      + block.with_type(type)
    ),
    with_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  app_include:: {
    local block = self,
    new(type):: (
      {}
      + block.with_type(type)
    ),
    with_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  idp_providers:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_id':: 'The identifier for the Idp the rule should route to if all conditions are met.',
    with_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    '#with_type':: 'Type of IdP. One of: `AMAZON`, `APPLE`, `DISCORD`, `FACEBOOK`, `GITHUB`, `GITLAB`, `GOOGLE`, `IDV_CLEAR`, `IDV_INCODE`, `IDV_PERSONA`, `LINKEDIN`, `LOGINGOV`, `LOGINGOV_SANDBOX`, `MICROSOFT`, `OIDC`, `PAYPAL`, `PAYPAL_SANDBOX`, `SALESFORCE`, `SAML2`, `SPOTIFY`, `X509`, `XERO`, `YAHOO`, `YAHOOJP`, Default: `OKTA`',
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  platform_include:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_os_expression':: 'Only available with OTHER OS type',
    with_os_expression(value):: (
      local converted = value;
      assert std.isString(converted) : '"os_expression" expected to be of type "string"';
      {
        os_expression: converted,
      }
    ),
    with_os_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"os_type" expected to be of type "string"';
      {
        os_type: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  user_identifier_patterns:: {
    local block = self,
    new():: (
      {}
    ),
    with_match_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"match_type" expected to be of type "string"';
      {
        match_type: converted,
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
  with_app_exclude(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      app_exclude: value,
    }
  ),
  with_app_include(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      app_include: value,
    }
  ),
  with_idp_providers(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      idp_providers: value,
    }
  ),
  with_platform_include(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      platform_include: value,
    }
  ),
  with_user_identifier_patterns(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_identifier_patterns: value,
    }
  ),
  with_app_exclude_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      app_exclude+: converted,
    }
  ),
  with_app_include_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      app_include+: converted,
    }
  ),
  with_idp_providers_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      idp_providers+: converted,
    }
  ),
  with_platform_include_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      platform_include+: converted,
    }
  ),
  with_user_identifier_patterns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_identifier_patterns+: converted,
    }
  ),
}
