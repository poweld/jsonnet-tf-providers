{
  local block = self,
  new():: (
    {}
  ),
  "#withAcsBinding":: "ACS binding",
  withAcsBinding(value):: (
    local converted = value;
    assert std.isString(converted) : '"acs_binding" expected to be of type "string"';
    {
      acs_binding: converted,
    }
  ),
  "#withAcsType":: "Determines whether to publish an instance-specific (trust) or organization (shared) ACS endpoint in the SAML metadata.",
  withAcsType(value):: (
    local converted = value;
    assert std.isString(converted) : '"acs_type" expected to be of type "string"';
    {
      acs_type: converted,
    }
  ),
  "#withAudience":: "URI that identifies the target Okta IdP instance (SP)",
  withAudience(value):: (
    local converted = value;
    assert std.isString(converted) : '"audience" expected to be of type "string"';
    {
      audience: converted,
    }
  ),
  "#withId":: "Id of idp.",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withIssuer":: "URI that identifies the issuer (IdP).",
  withIssuer(value):: (
    local converted = value;
    assert std.isString(converted) : '"issuer" expected to be of type "string"';
    {
      issuer: converted,
    }
  ),
  "#withIssuerMode":: "Indicates whether Okta uses the original Okta org domain URL, or a custom domain URL in the request to the IdP.",
  withIssuerMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"issuer_mode" expected to be of type "string"';
    {
      issuer_mode: converted,
    }
  ),
  "#withKid":: "Key ID reference to the IdP's X.509 signature certificate.",
  withKid(value):: (
    local converted = value;
    assert std.isString(converted) : '"kid" expected to be of type "string"';
    {
      kid: converted,
    }
  ),
  "#withName":: "Name of the idp.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withSsoBinding":: "Single sign-on binding.",
  withSsoBinding(value):: (
    local converted = value;
    assert std.isString(converted) : '"sso_binding" expected to be of type "string"';
    {
      sso_binding: converted,
    }
  ),
  "#withSsoDestination":: "SSO request binding, HTTP-POST or HTTP-REDIRECT.",
  withSsoDestination(value):: (
    local converted = value;
    assert std.isString(converted) : '"sso_destination" expected to be of type "string"';
    {
      sso_destination: converted,
    }
  ),
  "#withSsoUrl":: "Single sign-on url.",
  withSsoUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"sso_url" expected to be of type "string"';
    {
      sso_url: converted,
    }
  ),
  "#withSubjectFilter":: "Regular expression pattern used to filter untrusted IdP usernames.",
  withSubjectFilter(value):: (
    local converted = value;
    assert std.isString(converted) : '"subject_filter" expected to be of type "string"';
    {
      subject_filter: converted,
    }
  ),
  "#withSubjectFormat":: "Expression to generate or transform a unique username for the IdP user.",
  withSubjectFormat(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subject_format" expected to be of type "set"';
    {
      subject_format: converted,
    }
  ),
  "#withSubjectFormatMixin":: "Expression to generate or transform a unique username for the IdP user.",
  withSubjectFormatMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subject_format" expected to be of type "set"';
    {
      subject_format+: converted,
    }
  ),
  "#withType":: "Type of idp.",
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
}
