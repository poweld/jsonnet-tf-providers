{
  local block = self,
  new():: (
    {}
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_authentication_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"authentication_options" expected to be of type "list"';
    {
      authentication_options: converted,
    }
  ),
  with_authentication_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"authentication_options" expected to be of type "list"';
    {
      authentication_options+: converted,
    }
  ),
  with_client_cidr_block(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_cidr_block" expected to be of type "string"';
    {
      client_cidr_block: converted,
    }
  ),
  with_client_connect_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"client_connect_options" expected to be of type "list"';
    {
      client_connect_options: converted,
    }
  ),
  with_client_connect_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"client_connect_options" expected to be of type "list"';
    {
      client_connect_options+: converted,
    }
  ),
  with_client_login_banner_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"client_login_banner_options" expected to be of type "list"';
    {
      client_login_banner_options: converted,
    }
  ),
  with_client_login_banner_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"client_login_banner_options" expected to be of type "list"';
    {
      client_login_banner_options+: converted,
    }
  ),
  with_client_route_enforcement_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"client_route_enforcement_options" expected to be of type "list"';
    {
      client_route_enforcement_options: converted,
    }
  ),
  with_client_route_enforcement_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"client_route_enforcement_options" expected to be of type "list"';
    {
      client_route_enforcement_options+: converted,
    }
  ),
  with_client_vpn_endpoint_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_vpn_endpoint_id" expected to be of type "string"';
    {
      client_vpn_endpoint_id: converted,
    }
  ),
  with_connection_log_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"connection_log_options" expected to be of type "list"';
    {
      connection_log_options: converted,
    }
  ),
  with_connection_log_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"connection_log_options" expected to be of type "list"';
    {
      connection_log_options+: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
    assert std.isArray(converted) : '"security_group_ids" expected to be of type "list"';
    {
      security_group_ids: converted,
    }
  ),
  with_security_group_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"security_group_ids" expected to be of type "list"';
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
  filter:: {
    local block = self,
    new(name, values):: (
      {}
      + block.with_name(name)
      + block.with_values(values)
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_values(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
      {
        values: converted,
      }
    ),
    with_values_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
      {
        values+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_read(value):: (
      local converted = value;
      assert std.isString(converted) : '"read" expected to be of type "string"';
      {
        read: converted,
      }
    ),
  },
  with_filter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_filter_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter+: converted,
    }
  ),
}
