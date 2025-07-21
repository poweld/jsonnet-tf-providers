{
  local block = self,
  new():: (
    {}
  ),
  '#with_active_only':: 'Search only ACTIVE applications.',
  with_active_only(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"active_only" expected to be of type "bool"';
    {
      active_only: converted,
    }
  ),
  '#with_auto_submit_toolbar':: 'Display auto submit toolbar',
  with_auto_submit_toolbar(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_submit_toolbar" expected to be of type "bool"';
    {
      auto_submit_toolbar: converted,
    }
  ),
  '#with_client_id':: 'OAuth client ID',
  with_client_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_id" expected to be of type "string"';
    {
      client_id: converted,
    }
  ),
  '#with_client_secret':: 'OAuth client secret',
  with_client_secret(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_secret" expected to be of type "string"';
    {
      client_secret: converted,
    }
  ),
  '#with_client_uri':: 'URI to a web page providing information about the client.',
  with_client_uri(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_uri" expected to be of type "string"';
    {
      client_uri: converted,
    }
  ),
  '#with_grant_types':: 'List of OAuth 2.0 grant types',
  with_grant_types(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"grant_types" expected to be of type "set"';
    {
      grant_types: converted,
    }
  ),
  '#with_grant_types_mixin':: 'List of OAuth 2.0 grant types',
  with_grant_types_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"grant_types" expected to be of type "set"';
    {
      grant_types+: converted,
    }
  ),
  '#with_hide_ios':: 'Do not display application icon on mobile app',
  with_hide_ios(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"hide_ios" expected to be of type "bool"';
    {
      hide_ios: converted,
    }
  ),
  '#with_hide_web':: 'Do not display application icon to users',
  with_hide_web(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"hide_web" expected to be of type "bool"';
    {
      hide_web: converted,
    }
  ),
  '#with_id':: 'Id of application to retrieve, conflicts with label and label_prefix.',
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_label':: "The label of the app to retrieve, conflicts with \t\t\t\tlabel_prefix and id. Label uses the ?q=<label> query parameter exposed by \t\t\t\tOkta's List Apps API. The API will search both name and label using that \t\t\t\tquery. Therefore similarly named and labeled apps may be returned in the query \t\t\t\tand have the unitended result of associating the wrong app with this data \t\t\t\tsource. See: \t\t\t\thttps://developer.okta.com/docs/reference/api/apps/#list-applications",
  with_label(value):: (
    local converted = value;
    assert std.isString(converted) : '"label" expected to be of type "string"';
    {
      label: converted,
    }
  ),
  '#with_label_prefix':: 'Label prefix of the app to retrieve, conflicts with label and id. This will tell the \t\t\t\tprovider to do a starts with query as opposed to an equals query.',
  with_label_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"label_prefix" expected to be of type "string"';
    {
      label_prefix: converted,
    }
  ),
  '#with_links':: 'Discoverable resources related to the app',
  with_links(value):: (
    local converted = value;
    assert std.isString(converted) : '"links" expected to be of type "string"';
    {
      links: converted,
    }
  ),
  '#with_login_mode':: 'The type of Idp-Initiated login that the client supports, if any',
  with_login_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"login_mode" expected to be of type "string"';
    {
      login_mode: converted,
    }
  ),
  '#with_login_scopes':: "List of scopes to use for the request when 'login_mode' == OKTA",
  with_login_scopes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"login_scopes" expected to be of type "set"';
    {
      login_scopes: converted,
    }
  ),
  '#with_login_scopes_mixin':: "List of scopes to use for the request when 'login_mode' == OKTA",
  with_login_scopes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"login_scopes" expected to be of type "set"';
    {
      login_scopes+: converted,
    }
  ),
  '#with_login_uri':: 'URI that initiates login.',
  with_login_uri(value):: (
    local converted = value;
    assert std.isString(converted) : '"login_uri" expected to be of type "string"';
    {
      login_uri: converted,
    }
  ),
  '#with_logo_uri':: 'URI that references a logo for the client.',
  with_logo_uri(value):: (
    local converted = value;
    assert std.isString(converted) : '"logo_uri" expected to be of type "string"';
    {
      logo_uri: converted,
    }
  ),
  '#with_name':: 'Name of application.',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  '#with_policy_uri':: 'URI to web page providing client policy document.',
  with_policy_uri(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_uri" expected to be of type "string"';
    {
      policy_uri: converted,
    }
  ),
  '#with_post_logout_redirect_uris':: 'List of URIs for redirection after logout',
  with_post_logout_redirect_uris(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"post_logout_redirect_uris" expected to be of type "set"';
    {
      post_logout_redirect_uris: converted,
    }
  ),
  '#with_post_logout_redirect_uris_mixin':: 'List of URIs for redirection after logout',
  with_post_logout_redirect_uris_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"post_logout_redirect_uris" expected to be of type "set"';
    {
      post_logout_redirect_uris+: converted,
    }
  ),
  '#with_redirect_uris':: 'List of URIs for use in the redirect-based flow.',
  with_redirect_uris(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"redirect_uris" expected to be of type "set"';
    {
      redirect_uris: converted,
    }
  ),
  '#with_redirect_uris_mixin':: 'List of URIs for use in the redirect-based flow.',
  with_redirect_uris_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"redirect_uris" expected to be of type "set"';
    {
      redirect_uris+: converted,
    }
  ),
  '#with_response_types':: 'List of OAuth 2.0 response type strings.',
  with_response_types(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"response_types" expected to be of type "set"';
    {
      response_types: converted,
    }
  ),
  '#with_response_types_mixin':: 'List of OAuth 2.0 response type strings.',
  with_response_types_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"response_types" expected to be of type "set"';
    {
      response_types+: converted,
    }
  ),
  '#with_skip_groups':: "Ignore groups sync. This is a temporary solution until 'groups' field is supported in all the app-like resources",
  with_skip_groups(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_groups" expected to be of type "bool"';
    {
      skip_groups: converted,
    }
  ),
  '#with_skip_users':: "Ignore users sync. This is a temporary solution until 'users' field is supported in all the app-like resources",
  with_skip_users(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_users" expected to be of type "bool"';
    {
      skip_users: converted,
    }
  ),
  '#with_status':: 'Status of application.',
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  '#with_type':: 'The type of OAuth application.',
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  '#with_wildcard_redirect':: "Indicates if the client is allowed to use wildcard matching of redirect_uris. Some valid values include: 'SUBDOMAIN', 'DISABLED'.",
  with_wildcard_redirect(value):: (
    local converted = value;
    assert std.isString(converted) : '"wildcard_redirect" expected to be of type "string"';
    {
      wildcard_redirect: converted,
    }
  ),
}
