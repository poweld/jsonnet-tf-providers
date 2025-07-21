{
  local block = self,
  new(client_cidr_block, server_certificate_arn):: (
    {}
    + block.with_client_cidr_block(client_cidr_block)
    + block.with_server_certificate_arn(server_certificate_arn)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_client_cidr_block(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_cidr_block" expected to be of type "string"';
    {
      client_cidr_block: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_disconnect_on_session_timeout(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"disconnect_on_session_timeout" expected to be of type "bool"';
    {
      disconnect_on_session_timeout: converted,
    }
  ),
  with_dns_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"dns_name" expected to be of type "string"';
    {
      dns_name: converted,
    }
  ),
  with_dns_servers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"dns_servers" expected to be of type "list"';
    {
      dns_servers: converted,
    }
  ),
  with_dns_servers_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"dns_servers" expected to be of type "list"';
    {
      dns_servers+: converted,
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
  with_security_group_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
    {
      security_group_ids: converted,
    }
  ),
  with_security_group_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
    {
      security_group_ids+: converted,
    }
  ),
  with_self_service_portal(value):: (
    local converted = value;
    assert std.isString(converted) : '"self_service_portal" expected to be of type "string"';
    {
      self_service_portal: converted,
    }
  ),
  with_self_service_portal_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"self_service_portal_url" expected to be of type "string"';
    {
      self_service_portal_url: converted,
    }
  ),
  with_server_certificate_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"server_certificate_arn" expected to be of type "string"';
    {
      server_certificate_arn: converted,
    }
  ),
  with_session_timeout_hours(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"session_timeout_hours" expected to be of type "number"';
    {
      session_timeout_hours: converted,
    }
  ),
  with_split_tunnel(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"split_tunnel" expected to be of type "bool"';
    {
      split_tunnel: converted,
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
  with_transport_protocol(value):: (
    local converted = value;
    assert std.isString(converted) : '"transport_protocol" expected to be of type "string"';
    {
      transport_protocol: converted,
    }
  ),
  with_vpc_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
    {
      vpc_id: converted,
    }
  ),
  with_vpn_port(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"vpn_port" expected to be of type "number"';
    {
      vpn_port: converted,
    }
  ),
  authentication_options:: {
    local block = self,
    new(type):: (
      {}
      + block.with_type(type)
    ),
    with_active_directory_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"active_directory_id" expected to be of type "string"';
      {
        active_directory_id: converted,
      }
    ),
    with_root_certificate_chain_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"root_certificate_chain_arn" expected to be of type "string"';
      {
        root_certificate_chain_arn: converted,
      }
    ),
    with_saml_provider_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"saml_provider_arn" expected to be of type "string"';
      {
        saml_provider_arn: converted,
      }
    ),
    with_self_service_saml_provider_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"self_service_saml_provider_arn" expected to be of type "string"';
      {
        self_service_saml_provider_arn: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  client_connect_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    with_lambda_function_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"lambda_function_arn" expected to be of type "string"';
      {
        lambda_function_arn: converted,
      }
    ),
  },
  client_login_banner_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_banner_text(value):: (
      local converted = value;
      assert std.isString(converted) : '"banner_text" expected to be of type "string"';
      {
        banner_text: converted,
      }
    ),
    with_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
  },
  client_route_enforcement_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_enforced(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enforced" expected to be of type "bool"';
      {
        enforced: converted,
      }
    ),
  },
  connection_log_options:: {
    local block = self,
    new(enabled):: (
      {}
      + block.with_enabled(enabled)
    ),
    with_cloudwatch_log_group(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudwatch_log_group" expected to be of type "string"';
      {
        cloudwatch_log_group: converted,
      }
    ),
    with_cloudwatch_log_stream(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudwatch_log_stream" expected to be of type "string"';
      {
        cloudwatch_log_stream: converted,
      }
    ),
    with_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
  },
  with_authentication_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      authentication_options: value,
    }
  ),
  with_client_connect_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      client_connect_options: value,
    }
  ),
  with_client_login_banner_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      client_login_banner_options: value,
    }
  ),
  with_client_route_enforcement_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      client_route_enforcement_options: value,
    }
  ),
  with_connection_log_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      connection_log_options: value,
    }
  ),
  with_authentication_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      authentication_options+: converted,
    }
  ),
  with_client_connect_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      client_connect_options+: converted,
    }
  ),
  with_client_login_banner_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      client_login_banner_options+: converted,
    }
  ),
  with_client_route_enforcement_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      client_route_enforcement_options+: converted,
    }
  ),
  with_connection_log_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      connection_log_options+: converted,
    }
  ),
}
