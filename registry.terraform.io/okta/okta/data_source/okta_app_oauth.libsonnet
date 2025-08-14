{
  local block = self,
  new():: (
    {
      terraformObject:: "okta_app_oauth",
    }
  ),
  "#withActiveOnly":: "Search only ACTIVE applications.",
  withActiveOnly(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"active_only" expected to be of type "bool"';
    {
      active_only: converted,
    }
  ),
  "#withAutoSubmitToolbar":: "Display auto submit toolbar",
  withAutoSubmitToolbar(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_submit_toolbar" expected to be of type "bool"';
    {
      auto_submit_toolbar: converted,
    }
  ),
  "#withClientId":: "OAuth client ID",
  withClientId(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_id" expected to be of type "string"';
    {
      client_id: converted,
    }
  ),
  "#withClientSecret":: "OAuth client secret",
  withClientSecret(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_secret" expected to be of type "string"';
    {
      client_secret: converted,
    }
  ),
  "#withClientUri":: "URI to a web page providing information about the client.",
  withClientUri(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_uri" expected to be of type "string"';
    {
      client_uri: converted,
    }
  ),
  "#withGrantTypes":: "List of OAuth 2.0 grant types",
  withGrantTypes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"grant_types" expected to be of type "set"';
    {
      grant_types: converted,
    }
  ),
  "#withGrantTypesMixin":: "List of OAuth 2.0 grant types",
  withGrantTypesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"grant_types" expected to be of type "set"';
    {
      grant_types+: converted,
    }
  ),
  "#withHideIos":: "Do not display application icon on mobile app",
  withHideIos(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"hide_ios" expected to be of type "bool"';
    {
      hide_ios: converted,
    }
  ),
  "#withHideWeb":: "Do not display application icon to users",
  withHideWeb(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"hide_web" expected to be of type "bool"';
    {
      hide_web: converted,
    }
  ),
  "#withId":: "Id of application to retrieve, conflicts with label and label_prefix.",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withLabel":: "The label of the app to retrieve, conflicts with \t\t\t\tlabel_prefix and id. Label uses the ?q=<label> query parameter exposed by \t\t\t\tOkta's List Apps API. The API will search both name and label using that \t\t\t\tquery. Therefore similarly named and labeled apps may be returned in the query \t\t\t\tand have the unitended result of associating the wrong app with this data \t\t\t\tsource. See: \t\t\t\thttps://developer.okta.com/docs/reference/api/apps/#list-applications",
  withLabel(value):: (
    local converted = value;
    assert std.isString(converted) : '"label" expected to be of type "string"';
    {
      label: converted,
    }
  ),
  "#withLabelPrefix":: "Label prefix of the app to retrieve, conflicts with label and id. This will tell the \t\t\t\tprovider to do a starts with query as opposed to an equals query.",
  withLabelPrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"label_prefix" expected to be of type "string"';
    {
      label_prefix: converted,
    }
  ),
  "#withLinks":: "Discoverable resources related to the app",
  withLinks(value):: (
    local converted = value;
    assert std.isString(converted) : '"links" expected to be of type "string"';
    {
      links: converted,
    }
  ),
  "#withLoginMode":: "The type of Idp-Initiated login that the client supports, if any",
  withLoginMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"login_mode" expected to be of type "string"';
    {
      login_mode: converted,
    }
  ),
  "#withLoginScopes":: "List of scopes to use for the request when 'login_mode' == OKTA",
  withLoginScopes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"login_scopes" expected to be of type "set"';
    {
      login_scopes: converted,
    }
  ),
  "#withLoginScopesMixin":: "List of scopes to use for the request when 'login_mode' == OKTA",
  withLoginScopesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"login_scopes" expected to be of type "set"';
    {
      login_scopes+: converted,
    }
  ),
  "#withLoginUri":: "URI that initiates login.",
  withLoginUri(value):: (
    local converted = value;
    assert std.isString(converted) : '"login_uri" expected to be of type "string"';
    {
      login_uri: converted,
    }
  ),
  "#withLogoUri":: "URI that references a logo for the client.",
  withLogoUri(value):: (
    local converted = value;
    assert std.isString(converted) : '"logo_uri" expected to be of type "string"';
    {
      logo_uri: converted,
    }
  ),
  "#withName":: "Name of application.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withPolicyUri":: "URI to web page providing client policy document.",
  withPolicyUri(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_uri" expected to be of type "string"';
    {
      policy_uri: converted,
    }
  ),
  "#withPostLogoutRedirectUris":: "List of URIs for redirection after logout",
  withPostLogoutRedirectUris(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"post_logout_redirect_uris" expected to be of type "set"';
    {
      post_logout_redirect_uris: converted,
    }
  ),
  "#withPostLogoutRedirectUrisMixin":: "List of URIs for redirection after logout",
  withPostLogoutRedirectUrisMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"post_logout_redirect_uris" expected to be of type "set"';
    {
      post_logout_redirect_uris+: converted,
    }
  ),
  "#withRedirectUris":: "List of URIs for use in the redirect-based flow.",
  withRedirectUris(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"redirect_uris" expected to be of type "set"';
    {
      redirect_uris: converted,
    }
  ),
  "#withRedirectUrisMixin":: "List of URIs for use in the redirect-based flow.",
  withRedirectUrisMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"redirect_uris" expected to be of type "set"';
    {
      redirect_uris+: converted,
    }
  ),
  "#withResponseTypes":: "List of OAuth 2.0 response type strings.",
  withResponseTypes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"response_types" expected to be of type "set"';
    {
      response_types: converted,
    }
  ),
  "#withResponseTypesMixin":: "List of OAuth 2.0 response type strings.",
  withResponseTypesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"response_types" expected to be of type "set"';
    {
      response_types+: converted,
    }
  ),
  "#withSkipGroups":: "Ignore groups sync. This is a temporary solution until 'groups' field is supported in all the app-like resources",
  withSkipGroups(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_groups" expected to be of type "bool"';
    {
      skip_groups: converted,
    }
  ),
  "#withSkipUsers":: "Ignore users sync. This is a temporary solution until 'users' field is supported in all the app-like resources",
  withSkipUsers(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_users" expected to be of type "bool"';
    {
      skip_users: converted,
    }
  ),
  "#withStatus":: "Status of application.",
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  "#withType":: "The type of OAuth application.",
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  "#withWildcardRedirect":: "Indicates if the client is allowed to use wildcard matching of redirect_uris. Some valid values include: 'SUBDOMAIN', 'DISABLED'.",
  withWildcardRedirect(value):: (
    local converted = value;
    assert std.isString(converted) : '"wildcard_redirect" expected to be of type "string"';
    {
      wildcard_redirect: converted,
    }
  ),
}
