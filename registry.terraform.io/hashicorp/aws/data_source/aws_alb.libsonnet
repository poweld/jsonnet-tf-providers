{
  local block = self,
  new():: (
    {}
  ),
  with_access_logs(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"access_logs" expected to be of type "list"';
    {
      access_logs: converted,
    }
  ),
  with_access_logs_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"access_logs" expected to be of type "list"';
    {
      access_logs+: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_arn_suffix(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn_suffix" expected to be of type "string"';
    {
      arn_suffix: converted,
    }
  ),
  with_client_keep_alive(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"client_keep_alive" expected to be of type "number"';
    {
      client_keep_alive: converted,
    }
  ),
  with_connection_logs(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"connection_logs" expected to be of type "list"';
    {
      connection_logs: converted,
    }
  ),
  with_connection_logs_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"connection_logs" expected to be of type "list"';
    {
      connection_logs+: converted,
    }
  ),
  with_customer_owned_ipv4_pool(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_owned_ipv4_pool" expected to be of type "string"';
    {
      customer_owned_ipv4_pool: converted,
    }
  ),
  with_desync_mitigation_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"desync_mitigation_mode" expected to be of type "string"';
    {
      desync_mitigation_mode: converted,
    }
  ),
  with_dns_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"dns_name" expected to be of type "string"';
    {
      dns_name: converted,
    }
  ),
  with_dns_record_client_routing_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"dns_record_client_routing_policy" expected to be of type "string"';
    {
      dns_record_client_routing_policy: converted,
    }
  ),
  with_drop_invalid_header_fields(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"drop_invalid_header_fields" expected to be of type "bool"';
    {
      drop_invalid_header_fields: converted,
    }
  ),
  with_enable_cross_zone_load_balancing(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_cross_zone_load_balancing" expected to be of type "bool"';
    {
      enable_cross_zone_load_balancing: converted,
    }
  ),
  with_enable_deletion_protection(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_deletion_protection" expected to be of type "bool"';
    {
      enable_deletion_protection: converted,
    }
  ),
  with_enable_http2(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_http2" expected to be of type "bool"';
    {
      enable_http2: converted,
    }
  ),
  with_enable_tls_version_and_cipher_suite_headers(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_tls_version_and_cipher_suite_headers" expected to be of type "bool"';
    {
      enable_tls_version_and_cipher_suite_headers: converted,
    }
  ),
  with_enable_waf_fail_open(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_waf_fail_open" expected to be of type "bool"';
    {
      enable_waf_fail_open: converted,
    }
  ),
  with_enable_xff_client_port(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_xff_client_port" expected to be of type "bool"';
    {
      enable_xff_client_port: converted,
    }
  ),
  with_enable_zonal_shift(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_zonal_shift" expected to be of type "bool"';
    {
      enable_zonal_shift: converted,
    }
  ),
  with_enforce_security_group_inbound_rules_on_private_link_traffic(value):: (
    local converted = value;
    assert std.isString(converted) : '"enforce_security_group_inbound_rules_on_private_link_traffic" expected to be of type "string"';
    {
      enforce_security_group_inbound_rules_on_private_link_traffic: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_idle_timeout(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"idle_timeout" expected to be of type "number"';
    {
      idle_timeout: converted,
    }
  ),
  with_internal(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"internal" expected to be of type "bool"';
    {
      internal: converted,
    }
  ),
  with_ip_address_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"ip_address_type" expected to be of type "string"';
    {
      ip_address_type: converted,
    }
  ),
  with_ipam_pools(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ipam_pools" expected to be of type "list"';
    {
      ipam_pools: converted,
    }
  ),
  with_ipam_pools_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ipam_pools" expected to be of type "list"';
    {
      ipam_pools+: converted,
    }
  ),
  with_load_balancer_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"load_balancer_type" expected to be of type "string"';
    {
      load_balancer_type: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_preserve_host_header(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"preserve_host_header" expected to be of type "bool"';
    {
      preserve_host_header: converted,
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
  with_security_groups(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
    {
      security_groups: converted,
    }
  ),
  with_security_groups_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
    {
      security_groups+: converted,
    }
  ),
  with_subnet_mapping(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_mapping" expected to be of type "set"';
    {
      subnet_mapping: converted,
    }
  ),
  with_subnet_mapping_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_mapping" expected to be of type "set"';
    {
      subnet_mapping+: converted,
    }
  ),
  with_subnets(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
    {
      subnets: converted,
    }
  ),
  with_subnets_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
    {
      subnets+: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_vpc_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
    {
      vpc_id: converted,
    }
  ),
  with_xff_header_processing_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"xff_header_processing_mode" expected to be of type "string"';
    {
      xff_header_processing_mode: converted,
    }
  ),
  with_zone_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"zone_id" expected to be of type "string"';
    {
      zone_id: converted,
    }
  ),
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
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
