{
  local block = self,
  new(auth_server_id, grant_type_whitelist, name, policy_id, priority):: (
    {}
    + block.with_auth_server_id(auth_server_id)
    + block.with_grant_type_whitelist(grant_type_whitelist)
    + block.with_name(name)
    + block.with_policy_id(policy_id)
    + block.with_priority(priority)
  ),
  '#with_access_token_lifetime_minutes':: 'Lifetime of access token. Can be set to a value between 5 and 1440 minutes. Default is `60`.',
  with_access_token_lifetime_minutes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"access_token_lifetime_minutes" expected to be of type "number"';
    {
      access_token_lifetime_minutes: converted,
    }
  ),
  '#with_auth_server_id':: 'Auth server ID',
  with_auth_server_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"auth_server_id" expected to be of type "string"';
    {
      auth_server_id: converted,
    }
  ),
  '#with_grant_type_whitelist':: 'Accepted grant type values, `authorization_code`, `implicit`, `password`, `client_credentials`, `urn:ietf:params:oauth:grant-type:saml2-bearer` (*Early Access Property*), `urn:ietf:params:oauth:grant-type:token-exchange` (*Early Access Property*),`urn:ietf:params:oauth:grant-type:device_code` (*Early Access Property*), `interaction_code` (*OIE only*). For `implicit` value either `user_whitelist` or `group_whitelist` should be set.',
  with_grant_type_whitelist(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"grant_type_whitelist" expected to be of type "set"';
    {
      grant_type_whitelist: converted,
    }
  ),
  '#with_grant_type_whitelist_mixin':: 'Accepted grant type values, `authorization_code`, `implicit`, `password`, `client_credentials`, `urn:ietf:params:oauth:grant-type:saml2-bearer` (*Early Access Property*), `urn:ietf:params:oauth:grant-type:token-exchange` (*Early Access Property*),`urn:ietf:params:oauth:grant-type:device_code` (*Early Access Property*), `interaction_code` (*OIE only*). For `implicit` value either `user_whitelist` or `group_whitelist` should be set.',
  with_grant_type_whitelist_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"grant_type_whitelist" expected to be of type "set"';
    {
      grant_type_whitelist+: converted,
    }
  ),
  '#with_group_blacklist':: 'Specifies a set of Groups whose Users are to be excluded.',
  with_group_blacklist(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"group_blacklist" expected to be of type "set"';
    {
      group_blacklist: converted,
    }
  ),
  '#with_group_blacklist_mixin':: 'Specifies a set of Groups whose Users are to be excluded.',
  with_group_blacklist_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"group_blacklist" expected to be of type "set"';
    {
      group_blacklist+: converted,
    }
  ),
  '#with_group_whitelist':: 'Specifies a set of Groups whose Users are to be included. Can be set to Group ID or to the following: `EVERYONE`.',
  with_group_whitelist(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"group_whitelist" expected to be of type "set"';
    {
      group_whitelist: converted,
    }
  ),
  '#with_group_whitelist_mixin':: 'Specifies a set of Groups whose Users are to be included. Can be set to Group ID or to the following: `EVERYONE`.',
  with_group_whitelist_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"group_whitelist" expected to be of type "set"';
    {
      group_whitelist+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_inline_hook_id':: 'The ID of the inline token to trigger.',
  with_inline_hook_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"inline_hook_id" expected to be of type "string"';
    {
      inline_hook_id: converted,
    }
  ),
  '#with_name':: 'Auth server policy rule name',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  '#with_policy_id':: 'Auth server policy ID',
  with_policy_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_id" expected to be of type "string"';
    {
      policy_id: converted,
    }
  ),
  '#with_priority':: 'Priority of the auth server policy rule',
  with_priority(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"priority" expected to be of type "number"';
    {
      priority: converted,
    }
  ),
  '#with_refresh_token_lifetime_minutes':: 'Lifetime of refresh token.',
  with_refresh_token_lifetime_minutes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"refresh_token_lifetime_minutes" expected to be of type "number"';
    {
      refresh_token_lifetime_minutes: converted,
    }
  ),
  '#with_refresh_token_window_minutes':: 'Window in which a refresh token can be used. It can be a value between 5 and 2628000 (5 years) minutes. Default is `10080` (7 days).`refresh_token_window_minutes` must be between `access_token_lifetime_minutes` and `refresh_token_lifetime_minutes`.',
  with_refresh_token_window_minutes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"refresh_token_window_minutes" expected to be of type "number"';
    {
      refresh_token_window_minutes: converted,
    }
  ),
  '#with_scope_whitelist':: 'Scopes allowed for this policy rule. They can be whitelisted by name or all can be whitelisted with ` * `',
  with_scope_whitelist(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"scope_whitelist" expected to be of type "set"';
    {
      scope_whitelist: converted,
    }
  ),
  '#with_scope_whitelist_mixin':: 'Scopes allowed for this policy rule. They can be whitelisted by name or all can be whitelisted with ` * `',
  with_scope_whitelist_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"scope_whitelist" expected to be of type "set"';
    {
      scope_whitelist+: converted,
    }
  ),
  '#with_status':: 'Default to `ACTIVE`',
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  '#with_system':: 'The rule is the system (default) rule for its associated policy',
  with_system(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"system" expected to be of type "bool"';
    {
      system: converted,
    }
  ),
  '#with_type':: 'Auth server policy rule type, unlikely this will be anything other then the default',
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  '#with_user_blacklist':: 'Specifies a set of Users to be excluded.',
  with_user_blacklist(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"user_blacklist" expected to be of type "set"';
    {
      user_blacklist: converted,
    }
  ),
  '#with_user_blacklist_mixin':: 'Specifies a set of Users to be excluded.',
  with_user_blacklist_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"user_blacklist" expected to be of type "set"';
    {
      user_blacklist+: converted,
    }
  ),
  '#with_user_whitelist':: 'Specifies a set of Users to be included.',
  with_user_whitelist(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"user_whitelist" expected to be of type "set"';
    {
      user_whitelist: converted,
    }
  ),
  '#with_user_whitelist_mixin':: 'Specifies a set of Users to be included.',
  with_user_whitelist_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"user_whitelist" expected to be of type "set"';
    {
      user_whitelist+: converted,
    }
  ),
}
