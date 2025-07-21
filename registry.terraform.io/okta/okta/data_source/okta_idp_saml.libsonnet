{
  local block = self,
  new():: (
    {}
  ),
  '#with_acs_binding':: 'ACS binding',
  with_acs_binding(value):: (
    local converted = value;
    assert std.isString(converted) : '"acs_binding" expected to be of type "string"';
    {
      acs_binding: converted,
    }
  ),
  '#with_acs_type':: 'Determines whether to publish an instance-specific (trust) or organization (shared) ACS endpoint in the SAML metadata.',
  with_acs_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"acs_type" expected to be of type "string"';
    {
      acs_type: converted,
    }
  ),
  '#with_audience':: 'URI that identifies the target Okta IdP instance (SP)',
  with_audience(value):: (
    local converted = value;
    assert std.isString(converted) : '"audience" expected to be of type "string"';
    {
      audience: converted,
    }
  ),
  '#with_id':: 'Id of idp.',
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_issuer':: 'URI that identifies the issuer (IdP).',
  with_issuer(value):: (
    local converted = value;
    assert std.isString(converted) : '"issuer" expected to be of type "string"';
    {
      issuer: converted,
    }
  ),
  '#with_issuer_mode':: 'Indicates whether Okta uses the original Okta org domain URL, or a custom domain URL in the request to the IdP.',
  with_issuer_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"issuer_mode" expected to be of type "string"';
    {
      issuer_mode: converted,
    }
  ),
  '#with_kid':: "Key ID reference to the IdP's X.509 signature certificate.",
  with_kid(value):: (
    local converted = value;
    assert std.isString(converted) : '"kid" expected to be of type "string"';
    {
      kid: converted,
    }
  ),
  '#with_name':: 'Name of the idp.',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  '#with_sso_binding':: 'Single sign-on binding.',
  with_sso_binding(value):: (
    local converted = value;
    assert std.isString(converted) : '"sso_binding" expected to be of type "string"';
    {
      sso_binding: converted,
    }
  ),
  '#with_sso_destination':: 'SSO request binding, HTTP-POST or HTTP-REDIRECT.',
  with_sso_destination(value):: (
    local converted = value;
    assert std.isString(converted) : '"sso_destination" expected to be of type "string"';
    {
      sso_destination: converted,
    }
  ),
  '#with_sso_url':: 'Single sign-on url.',
  with_sso_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"sso_url" expected to be of type "string"';
    {
      sso_url: converted,
    }
  ),
  '#with_subject_filter':: 'Regular expression pattern used to filter untrusted IdP usernames.',
  with_subject_filter(value):: (
    local converted = value;
    assert std.isString(converted) : '"subject_filter" expected to be of type "string"';
    {
      subject_filter: converted,
    }
  ),
  '#with_subject_format':: 'Expression to generate or transform a unique username for the IdP user.',
  with_subject_format(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subject_format" expected to be of type "set"';
    {
      subject_format: converted,
    }
  ),
  '#with_subject_format_mixin':: 'Expression to generate or transform a unique username for the IdP user.',
  with_subject_format_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subject_format" expected to be of type "set"';
    {
      subject_format+: converted,
    }
  ),
  '#with_type':: 'Type of idp.',
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
}
