{
  local block = self,
  new(customer_gateway_id, type):: (
    {}
    + block.with_customer_gateway_id(customer_gateway_id)
    + block.with_type(type)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_core_network_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"core_network_arn" expected to be of type "string"';
    {
      core_network_arn: converted,
    }
  ),
  with_core_network_attachment_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"core_network_attachment_arn" expected to be of type "string"';
    {
      core_network_attachment_arn: converted,
    }
  ),
  with_customer_gateway_configuration(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_gateway_configuration" expected to be of type "string"';
    {
      customer_gateway_configuration: converted,
    }
  ),
  with_customer_gateway_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_gateway_id" expected to be of type "string"';
    {
      customer_gateway_id: converted,
    }
  ),
  with_enable_acceleration(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_acceleration" expected to be of type "bool"';
    {
      enable_acceleration: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_local_ipv4_network_cidr(value):: (
    local converted = value;
    assert std.isString(converted) : '"local_ipv4_network_cidr" expected to be of type "string"';
    {
      local_ipv4_network_cidr: converted,
    }
  ),
  with_local_ipv6_network_cidr(value):: (
    local converted = value;
    assert std.isString(converted) : '"local_ipv6_network_cidr" expected to be of type "string"';
    {
      local_ipv6_network_cidr: converted,
    }
  ),
  with_outside_ip_address_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"outside_ip_address_type" expected to be of type "string"';
    {
      outside_ip_address_type: converted,
    }
  ),
  with_preshared_key_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"preshared_key_arn" expected to be of type "string"';
    {
      preshared_key_arn: converted,
    }
  ),
  with_preshared_key_storage(value):: (
    local converted = value;
    assert std.isString(converted) : '"preshared_key_storage" expected to be of type "string"';
    {
      preshared_key_storage: converted,
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
  with_remote_ipv4_network_cidr(value):: (
    local converted = value;
    assert std.isString(converted) : '"remote_ipv4_network_cidr" expected to be of type "string"';
    {
      remote_ipv4_network_cidr: converted,
    }
  ),
  with_remote_ipv6_network_cidr(value):: (
    local converted = value;
    assert std.isString(converted) : '"remote_ipv6_network_cidr" expected to be of type "string"';
    {
      remote_ipv6_network_cidr: converted,
    }
  ),
  with_routes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"routes" expected to be of type "set"';
    {
      routes: converted,
    }
  ),
  with_routes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"routes" expected to be of type "set"';
    {
      routes+: converted,
    }
  ),
  with_static_routes_only(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"static_routes_only" expected to be of type "bool"';
    {
      static_routes_only: converted,
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
  with_transit_gateway_attachment_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_gateway_attachment_id" expected to be of type "string"';
    {
      transit_gateway_attachment_id: converted,
    }
  ),
  with_transit_gateway_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_gateway_id" expected to be of type "string"';
    {
      transit_gateway_id: converted,
    }
  ),
  with_transport_transit_gateway_attachment_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"transport_transit_gateway_attachment_id" expected to be of type "string"';
    {
      transport_transit_gateway_attachment_id: converted,
    }
  ),
  with_tunnel1_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"tunnel1_address" expected to be of type "string"';
    {
      tunnel1_address: converted,
    }
  ),
  with_tunnel1_bgp_asn(value):: (
    local converted = value;
    assert std.isString(converted) : '"tunnel1_bgp_asn" expected to be of type "string"';
    {
      tunnel1_bgp_asn: converted,
    }
  ),
  with_tunnel1_bgp_holdtime(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"tunnel1_bgp_holdtime" expected to be of type "number"';
    {
      tunnel1_bgp_holdtime: converted,
    }
  ),
  with_tunnel1_cgw_inside_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"tunnel1_cgw_inside_address" expected to be of type "string"';
    {
      tunnel1_cgw_inside_address: converted,
    }
  ),
  with_tunnel1_dpd_timeout_action(value):: (
    local converted = value;
    assert std.isString(converted) : '"tunnel1_dpd_timeout_action" expected to be of type "string"';
    {
      tunnel1_dpd_timeout_action: converted,
    }
  ),
  with_tunnel1_dpd_timeout_seconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"tunnel1_dpd_timeout_seconds" expected to be of type "number"';
    {
      tunnel1_dpd_timeout_seconds: converted,
    }
  ),
  with_tunnel1_enable_tunnel_lifecycle_control(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"tunnel1_enable_tunnel_lifecycle_control" expected to be of type "bool"';
    {
      tunnel1_enable_tunnel_lifecycle_control: converted,
    }
  ),
  with_tunnel1_ike_versions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel1_ike_versions" expected to be of type "set"';
    {
      tunnel1_ike_versions: converted,
    }
  ),
  with_tunnel1_ike_versions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel1_ike_versions" expected to be of type "set"';
    {
      tunnel1_ike_versions+: converted,
    }
  ),
  with_tunnel1_inside_cidr(value):: (
    local converted = value;
    assert std.isString(converted) : '"tunnel1_inside_cidr" expected to be of type "string"';
    {
      tunnel1_inside_cidr: converted,
    }
  ),
  with_tunnel1_inside_ipv6_cidr(value):: (
    local converted = value;
    assert std.isString(converted) : '"tunnel1_inside_ipv6_cidr" expected to be of type "string"';
    {
      tunnel1_inside_ipv6_cidr: converted,
    }
  ),
  with_tunnel1_phase1_dh_group_numbers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel1_phase1_dh_group_numbers" expected to be of type "set"';
    {
      tunnel1_phase1_dh_group_numbers: converted,
    }
  ),
  with_tunnel1_phase1_dh_group_numbers_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel1_phase1_dh_group_numbers" expected to be of type "set"';
    {
      tunnel1_phase1_dh_group_numbers+: converted,
    }
  ),
  with_tunnel1_phase1_encryption_algorithms(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel1_phase1_encryption_algorithms" expected to be of type "set"';
    {
      tunnel1_phase1_encryption_algorithms: converted,
    }
  ),
  with_tunnel1_phase1_encryption_algorithms_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel1_phase1_encryption_algorithms" expected to be of type "set"';
    {
      tunnel1_phase1_encryption_algorithms+: converted,
    }
  ),
  with_tunnel1_phase1_integrity_algorithms(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel1_phase1_integrity_algorithms" expected to be of type "set"';
    {
      tunnel1_phase1_integrity_algorithms: converted,
    }
  ),
  with_tunnel1_phase1_integrity_algorithms_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel1_phase1_integrity_algorithms" expected to be of type "set"';
    {
      tunnel1_phase1_integrity_algorithms+: converted,
    }
  ),
  with_tunnel1_phase1_lifetime_seconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"tunnel1_phase1_lifetime_seconds" expected to be of type "number"';
    {
      tunnel1_phase1_lifetime_seconds: converted,
    }
  ),
  with_tunnel1_phase2_dh_group_numbers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel1_phase2_dh_group_numbers" expected to be of type "set"';
    {
      tunnel1_phase2_dh_group_numbers: converted,
    }
  ),
  with_tunnel1_phase2_dh_group_numbers_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel1_phase2_dh_group_numbers" expected to be of type "set"';
    {
      tunnel1_phase2_dh_group_numbers+: converted,
    }
  ),
  with_tunnel1_phase2_encryption_algorithms(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel1_phase2_encryption_algorithms" expected to be of type "set"';
    {
      tunnel1_phase2_encryption_algorithms: converted,
    }
  ),
  with_tunnel1_phase2_encryption_algorithms_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel1_phase2_encryption_algorithms" expected to be of type "set"';
    {
      tunnel1_phase2_encryption_algorithms+: converted,
    }
  ),
  with_tunnel1_phase2_integrity_algorithms(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel1_phase2_integrity_algorithms" expected to be of type "set"';
    {
      tunnel1_phase2_integrity_algorithms: converted,
    }
  ),
  with_tunnel1_phase2_integrity_algorithms_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel1_phase2_integrity_algorithms" expected to be of type "set"';
    {
      tunnel1_phase2_integrity_algorithms+: converted,
    }
  ),
  with_tunnel1_phase2_lifetime_seconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"tunnel1_phase2_lifetime_seconds" expected to be of type "number"';
    {
      tunnel1_phase2_lifetime_seconds: converted,
    }
  ),
  with_tunnel1_preshared_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"tunnel1_preshared_key" expected to be of type "string"';
    {
      tunnel1_preshared_key: converted,
    }
  ),
  with_tunnel1_rekey_fuzz_percentage(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"tunnel1_rekey_fuzz_percentage" expected to be of type "number"';
    {
      tunnel1_rekey_fuzz_percentage: converted,
    }
  ),
  with_tunnel1_rekey_margin_time_seconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"tunnel1_rekey_margin_time_seconds" expected to be of type "number"';
    {
      tunnel1_rekey_margin_time_seconds: converted,
    }
  ),
  with_tunnel1_replay_window_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"tunnel1_replay_window_size" expected to be of type "number"';
    {
      tunnel1_replay_window_size: converted,
    }
  ),
  with_tunnel1_startup_action(value):: (
    local converted = value;
    assert std.isString(converted) : '"tunnel1_startup_action" expected to be of type "string"';
    {
      tunnel1_startup_action: converted,
    }
  ),
  with_tunnel1_vgw_inside_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"tunnel1_vgw_inside_address" expected to be of type "string"';
    {
      tunnel1_vgw_inside_address: converted,
    }
  ),
  with_tunnel2_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"tunnel2_address" expected to be of type "string"';
    {
      tunnel2_address: converted,
    }
  ),
  with_tunnel2_bgp_asn(value):: (
    local converted = value;
    assert std.isString(converted) : '"tunnel2_bgp_asn" expected to be of type "string"';
    {
      tunnel2_bgp_asn: converted,
    }
  ),
  with_tunnel2_bgp_holdtime(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"tunnel2_bgp_holdtime" expected to be of type "number"';
    {
      tunnel2_bgp_holdtime: converted,
    }
  ),
  with_tunnel2_cgw_inside_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"tunnel2_cgw_inside_address" expected to be of type "string"';
    {
      tunnel2_cgw_inside_address: converted,
    }
  ),
  with_tunnel2_dpd_timeout_action(value):: (
    local converted = value;
    assert std.isString(converted) : '"tunnel2_dpd_timeout_action" expected to be of type "string"';
    {
      tunnel2_dpd_timeout_action: converted,
    }
  ),
  with_tunnel2_dpd_timeout_seconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"tunnel2_dpd_timeout_seconds" expected to be of type "number"';
    {
      tunnel2_dpd_timeout_seconds: converted,
    }
  ),
  with_tunnel2_enable_tunnel_lifecycle_control(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"tunnel2_enable_tunnel_lifecycle_control" expected to be of type "bool"';
    {
      tunnel2_enable_tunnel_lifecycle_control: converted,
    }
  ),
  with_tunnel2_ike_versions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel2_ike_versions" expected to be of type "set"';
    {
      tunnel2_ike_versions: converted,
    }
  ),
  with_tunnel2_ike_versions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel2_ike_versions" expected to be of type "set"';
    {
      tunnel2_ike_versions+: converted,
    }
  ),
  with_tunnel2_inside_cidr(value):: (
    local converted = value;
    assert std.isString(converted) : '"tunnel2_inside_cidr" expected to be of type "string"';
    {
      tunnel2_inside_cidr: converted,
    }
  ),
  with_tunnel2_inside_ipv6_cidr(value):: (
    local converted = value;
    assert std.isString(converted) : '"tunnel2_inside_ipv6_cidr" expected to be of type "string"';
    {
      tunnel2_inside_ipv6_cidr: converted,
    }
  ),
  with_tunnel2_phase1_dh_group_numbers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel2_phase1_dh_group_numbers" expected to be of type "set"';
    {
      tunnel2_phase1_dh_group_numbers: converted,
    }
  ),
  with_tunnel2_phase1_dh_group_numbers_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel2_phase1_dh_group_numbers" expected to be of type "set"';
    {
      tunnel2_phase1_dh_group_numbers+: converted,
    }
  ),
  with_tunnel2_phase1_encryption_algorithms(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel2_phase1_encryption_algorithms" expected to be of type "set"';
    {
      tunnel2_phase1_encryption_algorithms: converted,
    }
  ),
  with_tunnel2_phase1_encryption_algorithms_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel2_phase1_encryption_algorithms" expected to be of type "set"';
    {
      tunnel2_phase1_encryption_algorithms+: converted,
    }
  ),
  with_tunnel2_phase1_integrity_algorithms(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel2_phase1_integrity_algorithms" expected to be of type "set"';
    {
      tunnel2_phase1_integrity_algorithms: converted,
    }
  ),
  with_tunnel2_phase1_integrity_algorithms_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel2_phase1_integrity_algorithms" expected to be of type "set"';
    {
      tunnel2_phase1_integrity_algorithms+: converted,
    }
  ),
  with_tunnel2_phase1_lifetime_seconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"tunnel2_phase1_lifetime_seconds" expected to be of type "number"';
    {
      tunnel2_phase1_lifetime_seconds: converted,
    }
  ),
  with_tunnel2_phase2_dh_group_numbers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel2_phase2_dh_group_numbers" expected to be of type "set"';
    {
      tunnel2_phase2_dh_group_numbers: converted,
    }
  ),
  with_tunnel2_phase2_dh_group_numbers_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel2_phase2_dh_group_numbers" expected to be of type "set"';
    {
      tunnel2_phase2_dh_group_numbers+: converted,
    }
  ),
  with_tunnel2_phase2_encryption_algorithms(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel2_phase2_encryption_algorithms" expected to be of type "set"';
    {
      tunnel2_phase2_encryption_algorithms: converted,
    }
  ),
  with_tunnel2_phase2_encryption_algorithms_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel2_phase2_encryption_algorithms" expected to be of type "set"';
    {
      tunnel2_phase2_encryption_algorithms+: converted,
    }
  ),
  with_tunnel2_phase2_integrity_algorithms(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel2_phase2_integrity_algorithms" expected to be of type "set"';
    {
      tunnel2_phase2_integrity_algorithms: converted,
    }
  ),
  with_tunnel2_phase2_integrity_algorithms_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel2_phase2_integrity_algorithms" expected to be of type "set"';
    {
      tunnel2_phase2_integrity_algorithms+: converted,
    }
  ),
  with_tunnel2_phase2_lifetime_seconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"tunnel2_phase2_lifetime_seconds" expected to be of type "number"';
    {
      tunnel2_phase2_lifetime_seconds: converted,
    }
  ),
  with_tunnel2_preshared_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"tunnel2_preshared_key" expected to be of type "string"';
    {
      tunnel2_preshared_key: converted,
    }
  ),
  with_tunnel2_rekey_fuzz_percentage(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"tunnel2_rekey_fuzz_percentage" expected to be of type "number"';
    {
      tunnel2_rekey_fuzz_percentage: converted,
    }
  ),
  with_tunnel2_rekey_margin_time_seconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"tunnel2_rekey_margin_time_seconds" expected to be of type "number"';
    {
      tunnel2_rekey_margin_time_seconds: converted,
    }
  ),
  with_tunnel2_replay_window_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"tunnel2_replay_window_size" expected to be of type "number"';
    {
      tunnel2_replay_window_size: converted,
    }
  ),
  with_tunnel2_startup_action(value):: (
    local converted = value;
    assert std.isString(converted) : '"tunnel2_startup_action" expected to be of type "string"';
    {
      tunnel2_startup_action: converted,
    }
  ),
  with_tunnel2_vgw_inside_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"tunnel2_vgw_inside_address" expected to be of type "string"';
    {
      tunnel2_vgw_inside_address: converted,
    }
  ),
  with_tunnel_inside_ip_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"tunnel_inside_ip_version" expected to be of type "string"';
    {
      tunnel_inside_ip_version: converted,
    }
  ),
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  with_vgw_telemetry(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vgw_telemetry" expected to be of type "set"';
    {
      vgw_telemetry: converted,
    }
  ),
  with_vgw_telemetry_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vgw_telemetry" expected to be of type "set"';
    {
      vgw_telemetry+: converted,
    }
  ),
  with_vpn_gateway_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpn_gateway_id" expected to be of type "string"';
    {
      vpn_gateway_id: converted,
    }
  ),
  tunnel1_log_options:: {
    local block = self,
    new():: (
      {}
    ),
    cloudwatch_log_options:: {
      local block = self,
      new():: (
        {}
      ),
      with_log_enabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"log_enabled" expected to be of type "bool"';
        {
          log_enabled: converted,
        }
      ),
      with_log_group_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_group_arn" expected to be of type "string"';
        {
          log_group_arn: converted,
        }
      ),
      with_log_output_format(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_output_format" expected to be of type "string"';
        {
          log_output_format: converted,
        }
      ),
    },
    with_cloudwatch_log_options(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_log_options: value,
      }
    ),
    with_cloudwatch_log_options_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_log_options+: converted,
      }
    ),
  },
  tunnel2_log_options:: {
    local block = self,
    new():: (
      {}
    ),
    cloudwatch_log_options:: {
      local block = self,
      new():: (
        {}
      ),
      with_log_enabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"log_enabled" expected to be of type "bool"';
        {
          log_enabled: converted,
        }
      ),
      with_log_group_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_group_arn" expected to be of type "string"';
        {
          log_group_arn: converted,
        }
      ),
      with_log_output_format(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_output_format" expected to be of type "string"';
        {
          log_output_format: converted,
        }
      ),
    },
    with_cloudwatch_log_options(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_log_options: value,
      }
    ),
    with_cloudwatch_log_options_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_log_options+: converted,
      }
    ),
  },
  with_tunnel1_log_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tunnel1_log_options: value,
    }
  ),
  with_tunnel2_log_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tunnel2_log_options: value,
    }
  ),
  with_tunnel1_log_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tunnel1_log_options+: converted,
    }
  ),
  with_tunnel2_log_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tunnel2_log_options+: converted,
    }
  ),
}
