{
  local block = self,
  new(domain_name):: (
    {}
    + block.with_domain_name(domain_name)
  ),
  with_api_mapping_selection_expression(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_mapping_selection_expression" expected to be of type "string"';
    {
      api_mapping_selection_expression: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_domain_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
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
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_tags_all(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  domain_name_configuration:: {
    local block = self,
    new(certificate_arn, endpoint_type, security_policy):: (
      {}
      + block.with_certificate_arn(certificate_arn)
      + block.with_endpoint_type(endpoint_type)
      + block.with_security_policy(security_policy)
    ),
    with_certificate_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"certificate_arn" expected to be of type "string"';
      {
        certificate_arn: converted,
      }
    ),
    with_endpoint_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"endpoint_type" expected to be of type "string"';
      {
        endpoint_type: converted,
      }
    ),
    with_hosted_zone_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"hosted_zone_id" expected to be of type "string"';
      {
        hosted_zone_id: converted,
      }
    ),
    with_ip_address_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"ip_address_type" expected to be of type "string"';
      {
        ip_address_type: converted,
      }
    ),
    with_ownership_verification_certificate_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"ownership_verification_certificate_arn" expected to be of type "string"';
      {
        ownership_verification_certificate_arn: converted,
      }
    ),
    with_security_policy(value):: (
      local converted = value;
      assert std.isString(converted) : '"security_policy" expected to be of type "string"';
      {
        security_policy: converted,
      }
    ),
    with_target_domain_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"target_domain_name" expected to be of type "string"';
      {
        target_domain_name: converted,
      }
    ),
  },
  mutual_tls_authentication:: {
    local block = self,
    new(truststore_uri):: (
      {}
      + block.with_truststore_uri(truststore_uri)
    ),
    with_truststore_uri(value):: (
      local converted = value;
      assert std.isString(converted) : '"truststore_uri" expected to be of type "string"';
      {
        truststore_uri: converted,
      }
    ),
    with_truststore_version(value):: (
      local converted = value;
      assert std.isString(converted) : '"truststore_version" expected to be of type "string"';
      {
        truststore_version: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_domain_name_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      domain_name_configuration: value,
    }
  ),
  with_mutual_tls_authentication(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      mutual_tls_authentication: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_domain_name_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      domain_name_configuration+: converted,
    }
  ),
  with_mutual_tls_authentication_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      mutual_tls_authentication+: converted,
    }
  ),
}
