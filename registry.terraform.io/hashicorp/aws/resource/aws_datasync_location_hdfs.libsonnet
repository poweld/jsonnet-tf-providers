{
  local block = self,
  new(agent_arns):: (
    {}
    + block.with_agent_arns(agent_arns)
  ),
  with_agent_arns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"agent_arns" expected to be of type "set"';
    {
      agent_arns: converted,
    }
  ),
  with_agent_arns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"agent_arns" expected to be of type "set"';
    {
      agent_arns+: converted,
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
  with_block_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"block_size" expected to be of type "number"';
    {
      block_size: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_kerberos_keytab(value):: (
    local converted = value;
    assert std.isString(converted) : '"kerberos_keytab" expected to be of type "string"';
    {
      kerberos_keytab: converted,
    }
  ),
  with_kerberos_keytab_base64(value):: (
    local converted = value;
    assert std.isString(converted) : '"kerberos_keytab_base64" expected to be of type "string"';
    {
      kerberos_keytab_base64: converted,
    }
  ),
  with_kerberos_krb5_conf(value):: (
    local converted = value;
    assert std.isString(converted) : '"kerberos_krb5_conf" expected to be of type "string"';
    {
      kerberos_krb5_conf: converted,
    }
  ),
  with_kerberos_krb5_conf_base64(value):: (
    local converted = value;
    assert std.isString(converted) : '"kerberos_krb5_conf_base64" expected to be of type "string"';
    {
      kerberos_krb5_conf_base64: converted,
    }
  ),
  with_kerberos_principal(value):: (
    local converted = value;
    assert std.isString(converted) : '"kerberos_principal" expected to be of type "string"';
    {
      kerberos_principal: converted,
    }
  ),
  with_kms_key_provider_uri(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_provider_uri" expected to be of type "string"';
    {
      kms_key_provider_uri: converted,
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
  with_replication_factor(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"replication_factor" expected to be of type "number"';
    {
      replication_factor: converted,
    }
  ),
  with_simple_user(value):: (
    local converted = value;
    assert std.isString(converted) : '"simple_user" expected to be of type "string"';
    {
      simple_user: converted,
    }
  ),
  with_subdirectory(value):: (
    local converted = value;
    assert std.isString(converted) : '"subdirectory" expected to be of type "string"';
    {
      subdirectory: converted,
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
  with_uri(value):: (
    local converted = value;
    assert std.isString(converted) : '"uri" expected to be of type "string"';
    {
      uri: converted,
    }
  ),
  name_node:: {
    local block = self,
    new(hostname, port):: (
      {}
      + block.with_hostname(hostname)
      + block.with_port(port)
    ),
    with_hostname(value):: (
      local converted = value;
      assert std.isString(converted) : '"hostname" expected to be of type "string"';
      {
        hostname: converted,
      }
    ),
    with_port(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"port" expected to be of type "number"';
      {
        port: converted,
      }
    ),
  },
  qop_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_data_transfer_protection(value):: (
      local converted = value;
      assert std.isString(converted) : '"data_transfer_protection" expected to be of type "string"';
      {
        data_transfer_protection: converted,
      }
    ),
    with_rpc_protection(value):: (
      local converted = value;
      assert std.isString(converted) : '"rpc_protection" expected to be of type "string"';
      {
        rpc_protection: converted,
      }
    ),
  },
  with_name_node(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      name_node: value,
    }
  ),
  with_qop_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      qop_configuration: value,
    }
  ),
  with_name_node_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      name_node+: converted,
    }
  ),
  with_qop_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      qop_configuration+: converted,
    }
  ),
}
