{
  local block = self,
  new(certificate_authority_arn, certificate_signing_request, signing_algorithm):: (
    {}
    + block.with_certificate_authority_arn(certificate_authority_arn)
    + block.with_certificate_signing_request(certificate_signing_request)
    + block.with_signing_algorithm(signing_algorithm)
  ),
  with_api_passthrough(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_passthrough" expected to be of type "string"';
    {
      api_passthrough: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_certificate(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate" expected to be of type "string"';
    {
      certificate: converted,
    }
  ),
  with_certificate_authority_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_authority_arn" expected to be of type "string"';
    {
      certificate_authority_arn: converted,
    }
  ),
  with_certificate_chain(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_chain" expected to be of type "string"';
    {
      certificate_chain: converted,
    }
  ),
  with_certificate_signing_request(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_signing_request" expected to be of type "string"';
    {
      certificate_signing_request: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_signing_algorithm(value):: (
    local converted = value;
    assert std.isString(converted) : '"signing_algorithm" expected to be of type "string"';
    {
      signing_algorithm: converted,
    }
  ),
  with_template_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"template_arn" expected to be of type "string"';
    {
      template_arn: converted,
    }
  ),
  validity:: {
    local block = self,
    new(type, value):: (
      {}
      + block.with_type(type)
      + block.with_value(value)
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
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
  with_validity(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      validity: value,
    }
  ),
  with_validity_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      validity+: converted,
    }
  ),
}
