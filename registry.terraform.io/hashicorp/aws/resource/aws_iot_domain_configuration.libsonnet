{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_application_protocol(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_protocol" expected to be of type "string"';
    {
      application_protocol: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_authentication_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"authentication_type" expected to be of type "string"';
    {
      authentication_type: converted,
    }
  ),
  with_domain_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
    }
  ),
  with_domain_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_type" expected to be of type "string"';
    {
      domain_type: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  with_server_certificate_arns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"server_certificate_arns" expected to be of type "set"';
    {
      server_certificate_arns: converted,
    }
  ),
  with_server_certificate_arns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"server_certificate_arns" expected to be of type "set"';
    {
      server_certificate_arns+: converted,
    }
  ),
  with_service_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_type" expected to be of type "string"';
    {
      service_type: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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
  with_validation_certificate_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"validation_certificate_arn" expected to be of type "string"';
    {
      validation_certificate_arn: converted,
    }
  ),
  authorizer_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_allow_authorizer_override(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"allow_authorizer_override" expected to be of type "bool"';
      {
        allow_authorizer_override: converted,
      }
    ),
    with_default_authorizer_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"default_authorizer_name" expected to be of type "string"';
      {
        default_authorizer_name: converted,
      }
    ),
  },
  tls_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_security_policy(value):: (
      local converted = value;
      assert std.isString(converted) : '"security_policy" expected to be of type "string"';
      {
        security_policy: converted,
      }
    ),
  },
  with_authorizer_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      authorizer_config: value,
    }
  ),
  with_tls_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tls_config: value,
    }
  ),
  with_authorizer_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      authorizer_config+: converted,
    }
  ),
  with_tls_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tls_config+: converted,
    }
  ),
}
