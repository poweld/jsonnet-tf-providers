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
  with_name_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
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
  with_tags_all(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
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
  access_logs:: {
    local block = self,
    new(bucket):: (
      {}
      + block.with_bucket(bucket)
    ),
    with_bucket(value):: (
      local converted = value;
      assert std.isString(converted) : '"bucket" expected to be of type "string"';
      {
        bucket: converted,
      }
    ),
    with_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    with_prefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"prefix" expected to be of type "string"';
      {
        prefix: converted,
      }
    ),
  },
  connection_logs:: {
    local block = self,
    new(bucket):: (
      {}
      + block.with_bucket(bucket)
    ),
    with_bucket(value):: (
      local converted = value;
      assert std.isString(converted) : '"bucket" expected to be of type "string"';
      {
        bucket: converted,
      }
    ),
    with_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    with_prefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"prefix" expected to be of type "string"';
      {
        prefix: converted,
      }
    ),
  },
  ipam_pools:: {
    local block = self,
    new(ipv4_ipam_pool_id):: (
      {}
      + block.with_ipv4_ipam_pool_id(ipv4_ipam_pool_id)
    ),
    with_ipv4_ipam_pool_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"ipv4_ipam_pool_id" expected to be of type "string"';
      {
        ipv4_ipam_pool_id: converted,
      }
    ),
  },
  minimum_load_balancer_capacity:: {
    local block = self,
    new(capacity_units):: (
      {}
      + block.with_capacity_units(capacity_units)
    ),
    with_capacity_units(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"capacity_units" expected to be of type "number"';
      {
        capacity_units: converted,
      }
    ),
  },
  subnet_mapping:: {
    local block = self,
    new(subnet_id):: (
      {}
      + block.with_subnet_id(subnet_id)
    ),
    with_allocation_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"allocation_id" expected to be of type "string"';
      {
        allocation_id: converted,
      }
    ),
    with_ipv6_address(value):: (
      local converted = value;
      assert std.isString(converted) : '"ipv6_address" expected to be of type "string"';
      {
        ipv6_address: converted,
      }
    ),
    with_outpost_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"outpost_id" expected to be of type "string"';
      {
        outpost_id: converted,
      }
    ),
    with_private_ipv4_address(value):: (
      local converted = value;
      assert std.isString(converted) : '"private_ipv4_address" expected to be of type "string"';
      {
        private_ipv4_address: converted,
      }
    ),
    with_subnet_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"subnet_id" expected to be of type "string"';
      {
        subnet_id: converted,
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
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
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
  with_access_logs(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_logs: value,
    }
  ),
  with_connection_logs(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      connection_logs: value,
    }
  ),
  with_ipam_pools(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ipam_pools: value,
    }
  ),
  with_minimum_load_balancer_capacity(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      minimum_load_balancer_capacity: value,
    }
  ),
  with_subnet_mapping(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      subnet_mapping: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_access_logs_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_logs+: converted,
    }
  ),
  with_connection_logs_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      connection_logs+: converted,
    }
  ),
  with_ipam_pools_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ipam_pools+: converted,
    }
  ),
  with_minimum_load_balancer_capacity_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      minimum_load_balancer_capacity+: converted,
    }
  ),
  with_subnet_mapping_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      subnet_mapping+: converted,
    }
  ),
}
