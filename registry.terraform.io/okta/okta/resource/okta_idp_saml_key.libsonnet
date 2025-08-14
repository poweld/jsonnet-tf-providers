{
  local block = self,
  new(x5c):: (
    {
      terraformObject:: "okta_idp_saml_key",
      terraformType:: "resource",
    }
    + block.withX5c(x5c)
  ),
  "#withCreated":: "Date created.",
  withCreated(value):: (
    local converted = value;
    assert std.isString(converted) : '"created" expected to be of type "string"';
    {
      created: converted,
    }
  ),
  "#withExpiresAt":: "Date the cert expires.",
  withExpiresAt(value):: (
    local converted = value;
    assert std.isString(converted) : '"expires_at" expected to be of type "string"';
    {
      expires_at: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withKid":: "Key ID.",
  withKid(value):: (
    local converted = value;
    assert std.isString(converted) : '"kid" expected to be of type "string"';
    {
      kid: converted,
    }
  ),
  "#withKty":: "Identifies the cryptographic algorithm family used with the key.",
  withKty(value):: (
    local converted = value;
    assert std.isString(converted) : '"kty" expected to be of type "string"';
    {
      kty: converted,
    }
  ),
  "#withUse":: "Intended use of the public key.",
  withUse(value):: (
    local converted = value;
    assert std.isString(converted) : '"use" expected to be of type "string"';
    {
      use: converted,
    }
  ),
  "#withX5c":: "base64-encoded X.509 certificate chain with DER encoding",
  withX5c(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"x5c" expected to be of type "set"';
    {
      x5c: converted,
    }
  ),
  "#withX5cMixin":: "base64-encoded X.509 certificate chain with DER encoding",
  withX5cMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"x5c" expected to be of type "set"';
    {
      x5c+: converted,
    }
  ),
  "#withX5tS256":: "base64url-encoded SHA-256 thumbprint of the DER encoding of an X.509 certificate.",
  withX5tS256(value):: (
    local converted = value;
    assert std.isString(converted) : '"x5t_s256" expected to be of type "string"';
    {
      x5t_s256: converted,
    }
  ),
}
