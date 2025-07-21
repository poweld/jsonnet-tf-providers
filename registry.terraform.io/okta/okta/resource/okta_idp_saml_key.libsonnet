{
  local block = self,
  new(x5c):: (
    {}
    + block.with_x5c(x5c)
  ),
  '#with_created':: 'Date created.',
  with_created(value):: (
    local converted = value;
    assert std.isString(converted) : '"created" expected to be of type "string"';
    {
      created: converted,
    }
  ),
  '#with_expires_at':: 'Date the cert expires.',
  with_expires_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"expires_at" expected to be of type "string"';
    {
      expires_at: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_kid':: 'Key ID.',
  with_kid(value):: (
    local converted = value;
    assert std.isString(converted) : '"kid" expected to be of type "string"';
    {
      kid: converted,
    }
  ),
  '#with_kty':: 'Identifies the cryptographic algorithm family used with the key.',
  with_kty(value):: (
    local converted = value;
    assert std.isString(converted) : '"kty" expected to be of type "string"';
    {
      kty: converted,
    }
  ),
  '#with_use':: 'Intended use of the public key.',
  with_use(value):: (
    local converted = value;
    assert std.isString(converted) : '"use" expected to be of type "string"';
    {
      use: converted,
    }
  ),
  '#with_x5c':: 'base64-encoded X.509 certificate chain with DER encoding',
  with_x5c(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"x5c" expected to be of type "set"';
    {
      x5c: converted,
    }
  ),
  '#with_x5c_mixin':: 'base64-encoded X.509 certificate chain with DER encoding',
  with_x5c_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"x5c" expected to be of type "set"';
    {
      x5c+: converted,
    }
  ),
  '#with_x5t_s256':: 'base64url-encoded SHA-256 thumbprint of the DER encoding of an X.509 certificate.',
  with_x5t_s256(value):: (
    local converted = value;
    assert std.isString(converted) : '"x5t_s256" expected to be of type "string"';
    {
      x5t_s256: converted,
    }
  ),
}
