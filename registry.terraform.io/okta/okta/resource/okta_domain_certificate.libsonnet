{
  local block = self,
  new(certificate, certificate_chain, domain_id, private_key):: (
    {}
    + block.with_certificate(certificate)
    + block.with_certificate_chain(certificate_chain)
    + block.with_domain_id(domain_id)
    + block.with_private_key(private_key)
  ),
  '#with_certificate':: 'Certificate content',
  with_certificate(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate" expected to be of type "string"';
    {
      certificate: converted,
    }
  ),
  '#with_certificate_chain':: 'Certificate chain',
  with_certificate_chain(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_chain" expected to be of type "string"';
    {
      certificate_chain: converted,
    }
  ),
  '#with_domain_id':: "Domain's ID",
  with_domain_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_id" expected to be of type "string"';
    {
      domain_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_private_key':: 'Certificate private key',
  with_private_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"private_key" expected to be of type "string"';
    {
      private_key: converted,
    }
  ),
  '#with_type':: 'Certificate type. Valid value is `PEM`',
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
}
