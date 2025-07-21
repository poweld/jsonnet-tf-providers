{
  local block = self,
  new():: (
    {}
  ),
  with_ami(value):: (
    local converted = value;
    assert std.isString(converted) : '"ami" expected to be of type "string"';
    {
      ami: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_associate_public_ip_address(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"associate_public_ip_address" expected to be of type "bool"';
    {
      associate_public_ip_address: converted,
    }
  ),
  with_availability_zone(value):: (
    local converted = value;
    assert std.isString(converted) : '"availability_zone" expected to be of type "string"';
    {
      availability_zone: converted,
    }
  ),
  with_credit_specification(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"credit_specification" expected to be of type "list"';
    {
      credit_specification: converted,
    }
  ),
  with_credit_specification_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"credit_specification" expected to be of type "list"';
    {
      credit_specification+: converted,
    }
  ),
  with_disable_api_stop(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"disable_api_stop" expected to be of type "bool"';
    {
      disable_api_stop: converted,
    }
  ),
  with_disable_api_termination(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"disable_api_termination" expected to be of type "bool"';
    {
      disable_api_termination: converted,
    }
  ),
  with_ebs_block_device(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ebs_block_device" expected to be of type "set"';
    {
      ebs_block_device: converted,
    }
  ),
  with_ebs_block_device_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ebs_block_device" expected to be of type "set"';
    {
      ebs_block_device+: converted,
    }
  ),
  with_ebs_optimized(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"ebs_optimized" expected to be of type "bool"';
    {
      ebs_optimized: converted,
    }
  ),
  with_enclave_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"enclave_options" expected to be of type "list"';
    {
      enclave_options: converted,
    }
  ),
  with_enclave_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"enclave_options" expected to be of type "list"';
    {
      enclave_options+: converted,
    }
  ),
  with_ephemeral_block_device(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ephemeral_block_device" expected to be of type "list"';
    {
      ephemeral_block_device: converted,
    }
  ),
  with_ephemeral_block_device_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ephemeral_block_device" expected to be of type "list"';
    {
      ephemeral_block_device+: converted,
    }
  ),
  with_get_password_data(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"get_password_data" expected to be of type "bool"';
    {
      get_password_data: converted,
    }
  ),
  with_get_user_data(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"get_user_data" expected to be of type "bool"';
    {
      get_user_data: converted,
    }
  ),
  with_host_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"host_id" expected to be of type "string"';
    {
      host_id: converted,
    }
  ),
  with_host_resource_group_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"host_resource_group_arn" expected to be of type "string"';
    {
      host_resource_group_arn: converted,
    }
  ),
  with_iam_instance_profile(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_instance_profile" expected to be of type "string"';
    {
      iam_instance_profile: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_instance_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_id" expected to be of type "string"';
    {
      instance_id: converted,
    }
  ),
  with_instance_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_state" expected to be of type "string"';
    {
      instance_state: converted,
    }
  ),
  with_instance_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"instance_tags" expected to be of type "map"';
    {
      instance_tags: converted,
    }
  ),
  with_instance_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_type" expected to be of type "string"';
    {
      instance_type: converted,
    }
  ),
  with_ipv6_addresses(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ipv6_addresses" expected to be of type "set"';
    {
      ipv6_addresses: converted,
    }
  ),
  with_ipv6_addresses_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ipv6_addresses" expected to be of type "set"';
    {
      ipv6_addresses+: converted,
    }
  ),
  with_key_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_name" expected to be of type "string"';
    {
      key_name: converted,
    }
  ),
  with_launch_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"launch_time" expected to be of type "string"';
    {
      launch_time: converted,
    }
  ),
  with_maintenance_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"maintenance_options" expected to be of type "list"';
    {
      maintenance_options: converted,
    }
  ),
  with_maintenance_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"maintenance_options" expected to be of type "list"';
    {
      maintenance_options+: converted,
    }
  ),
  with_metadata_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"metadata_options" expected to be of type "list"';
    {
      metadata_options: converted,
    }
  ),
  with_metadata_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"metadata_options" expected to be of type "list"';
    {
      metadata_options+: converted,
    }
  ),
  with_monitoring(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"monitoring" expected to be of type "bool"';
    {
      monitoring: converted,
    }
  ),
  with_network_interface_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_interface_id" expected to be of type "string"';
    {
      network_interface_id: converted,
    }
  ),
  with_outpost_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"outpost_arn" expected to be of type "string"';
    {
      outpost_arn: converted,
    }
  ),
  with_password_data(value):: (
    local converted = value;
    assert std.isString(converted) : '"password_data" expected to be of type "string"';
    {
      password_data: converted,
    }
  ),
  with_placement_group(value):: (
    local converted = value;
    assert std.isString(converted) : '"placement_group" expected to be of type "string"';
    {
      placement_group: converted,
    }
  ),
  with_placement_partition_number(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"placement_partition_number" expected to be of type "number"';
    {
      placement_partition_number: converted,
    }
  ),
  with_private_dns(value):: (
    local converted = value;
    assert std.isString(converted) : '"private_dns" expected to be of type "string"';
    {
      private_dns: converted,
    }
  ),
  with_private_dns_name_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"private_dns_name_options" expected to be of type "list"';
    {
      private_dns_name_options: converted,
    }
  ),
  with_private_dns_name_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"private_dns_name_options" expected to be of type "list"';
    {
      private_dns_name_options+: converted,
    }
  ),
  with_private_ip(value):: (
    local converted = value;
    assert std.isString(converted) : '"private_ip" expected to be of type "string"';
    {
      private_ip: converted,
    }
  ),
  with_public_dns(value):: (
    local converted = value;
    assert std.isString(converted) : '"public_dns" expected to be of type "string"';
    {
      public_dns: converted,
    }
  ),
  with_public_ip(value):: (
    local converted = value;
    assert std.isString(converted) : '"public_ip" expected to be of type "string"';
    {
      public_ip: converted,
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
  with_root_block_device(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"root_block_device" expected to be of type "set"';
    {
      root_block_device: converted,
    }
  ),
  with_root_block_device_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"root_block_device" expected to be of type "set"';
    {
      root_block_device+: converted,
    }
  ),
  with_secondary_private_ips(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"secondary_private_ips" expected to be of type "set"';
    {
      secondary_private_ips: converted,
    }
  ),
  with_secondary_private_ips_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"secondary_private_ips" expected to be of type "set"';
    {
      secondary_private_ips+: converted,
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
  with_source_dest_check(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"source_dest_check" expected to be of type "bool"';
    {
      source_dest_check: converted,
    }
  ),
  with_subnet_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"subnet_id" expected to be of type "string"';
    {
      subnet_id: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_tenancy(value):: (
    local converted = value;
    assert std.isString(converted) : '"tenancy" expected to be of type "string"';
    {
      tenancy: converted,
    }
  ),
  with_user_data(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_data" expected to be of type "string"';
    {
      user_data: converted,
    }
  ),
  with_user_data_base64(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_data_base64" expected to be of type "string"';
    {
      user_data_base64: converted,
    }
  ),
  with_vpc_security_group_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_security_group_ids" expected to be of type "set"';
    {
      vpc_security_group_ids: converted,
    }
  ),
  with_vpc_security_group_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_security_group_ids" expected to be of type "set"';
    {
      vpc_security_group_ids+: converted,
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
