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
  with_ebs_optimized(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"ebs_optimized" expected to be of type "bool"';
    {
      ebs_optimized: converted,
    }
  ),
  with_enable_primary_ipv6(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_primary_ipv6" expected to be of type "bool"';
    {
      enable_primary_ipv6: converted,
    }
  ),
  with_get_password_data(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"get_password_data" expected to be of type "bool"';
    {
      get_password_data: converted,
    }
  ),
  with_hibernation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"hibernation" expected to be of type "bool"';
    {
      hibernation: converted,
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
  with_instance_initiated_shutdown_behavior(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_initiated_shutdown_behavior" expected to be of type "string"';
    {
      instance_initiated_shutdown_behavior: converted,
    }
  ),
  with_instance_lifecycle(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_lifecycle" expected to be of type "string"';
    {
      instance_lifecycle: converted,
    }
  ),
  with_instance_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_state" expected to be of type "string"';
    {
      instance_state: converted,
    }
  ),
  with_instance_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_type" expected to be of type "string"';
    {
      instance_type: converted,
    }
  ),
  with_ipv6_address_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"ipv6_address_count" expected to be of type "number"';
    {
      ipv6_address_count: converted,
    }
  ),
  with_ipv6_addresses(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ipv6_addresses" expected to be of type "list"';
    {
      ipv6_addresses: converted,
    }
  ),
  with_ipv6_addresses_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ipv6_addresses" expected to be of type "list"';
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
  with_monitoring(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"monitoring" expected to be of type "bool"';
    {
      monitoring: converted,
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
  with_primary_network_interface_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"primary_network_interface_id" expected to be of type "string"';
    {
      primary_network_interface_id: converted,
    }
  ),
  with_private_dns(value):: (
    local converted = value;
    assert std.isString(converted) : '"private_dns" expected to be of type "string"';
    {
      private_dns: converted,
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
  with_spot_instance_request_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"spot_instance_request_id" expected to be of type "string"';
    {
      spot_instance_request_id: converted,
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
  with_tags_all(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
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
  with_user_data_replace_on_change(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"user_data_replace_on_change" expected to be of type "bool"';
    {
      user_data_replace_on_change: converted,
    }
  ),
  with_volume_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"volume_tags" expected to be of type "map"';
    {
      volume_tags: converted,
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
  capacity_reservation_specification:: {
    local block = self,
    new():: (
      {}
    ),
    with_capacity_reservation_preference(value):: (
      local converted = value;
      assert std.isString(converted) : '"capacity_reservation_preference" expected to be of type "string"';
      {
        capacity_reservation_preference: converted,
      }
    ),
    capacity_reservation_target:: {
      local block = self,
      new():: (
        {}
      ),
      with_capacity_reservation_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"capacity_reservation_id" expected to be of type "string"';
        {
          capacity_reservation_id: converted,
        }
      ),
      with_capacity_reservation_resource_group_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"capacity_reservation_resource_group_arn" expected to be of type "string"';
        {
          capacity_reservation_resource_group_arn: converted,
        }
      ),
    },
    with_capacity_reservation_target(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        capacity_reservation_target: value,
      }
    ),
    with_capacity_reservation_target_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        capacity_reservation_target+: converted,
      }
    ),
  },
  cpu_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_amd_sev_snp(value):: (
      local converted = value;
      assert std.isString(converted) : '"amd_sev_snp" expected to be of type "string"';
      {
        amd_sev_snp: converted,
      }
    ),
    with_core_count(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"core_count" expected to be of type "number"';
      {
        core_count: converted,
      }
    ),
    with_threads_per_core(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"threads_per_core" expected to be of type "number"';
      {
        threads_per_core: converted,
      }
    ),
  },
  credit_specification:: {
    local block = self,
    new():: (
      {}
    ),
    with_cpu_credits(value):: (
      local converted = value;
      assert std.isString(converted) : '"cpu_credits" expected to be of type "string"';
      {
        cpu_credits: converted,
      }
    ),
  },
  ebs_block_device:: {
    local block = self,
    new(device_name):: (
      {}
      + block.with_device_name(device_name)
    ),
    with_delete_on_termination(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"delete_on_termination" expected to be of type "bool"';
      {
        delete_on_termination: converted,
      }
    ),
    with_device_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"device_name" expected to be of type "string"';
      {
        device_name: converted,
      }
    ),
    with_encrypted(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"encrypted" expected to be of type "bool"';
      {
        encrypted: converted,
      }
    ),
    with_iops(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"iops" expected to be of type "number"';
      {
        iops: converted,
      }
    ),
    with_kms_key_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
      {
        kms_key_id: converted,
      }
    ),
    with_snapshot_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"snapshot_id" expected to be of type "string"';
      {
        snapshot_id: converted,
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
    with_throughput(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"throughput" expected to be of type "number"';
      {
        throughput: converted,
      }
    ),
    with_volume_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"volume_id" expected to be of type "string"';
      {
        volume_id: converted,
      }
    ),
    with_volume_size(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"volume_size" expected to be of type "number"';
      {
        volume_size: converted,
      }
    ),
    with_volume_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"volume_type" expected to be of type "string"';
      {
        volume_type: converted,
      }
    ),
  },
  enclave_options:: {
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
  },
  ephemeral_block_device:: {
    local block = self,
    new(device_name):: (
      {}
      + block.with_device_name(device_name)
    ),
    with_device_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"device_name" expected to be of type "string"';
      {
        device_name: converted,
      }
    ),
    with_no_device(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"no_device" expected to be of type "bool"';
      {
        no_device: converted,
      }
    ),
    with_virtual_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"virtual_name" expected to be of type "string"';
      {
        virtual_name: converted,
      }
    ),
  },
  instance_market_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_market_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"market_type" expected to be of type "string"';
      {
        market_type: converted,
      }
    ),
    spot_options:: {
      local block = self,
      new():: (
        {}
      ),
      with_instance_interruption_behavior(value):: (
        local converted = value;
        assert std.isString(converted) : '"instance_interruption_behavior" expected to be of type "string"';
        {
          instance_interruption_behavior: converted,
        }
      ),
      with_max_price(value):: (
        local converted = value;
        assert std.isString(converted) : '"max_price" expected to be of type "string"';
        {
          max_price: converted,
        }
      ),
      with_spot_instance_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"spot_instance_type" expected to be of type "string"';
        {
          spot_instance_type: converted,
        }
      ),
      with_valid_until(value):: (
        local converted = value;
        assert std.isString(converted) : '"valid_until" expected to be of type "string"';
        {
          valid_until: converted,
        }
      ),
    },
    with_spot_options(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        spot_options: value,
      }
    ),
    with_spot_options_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        spot_options+: converted,
      }
    ),
  },
  launch_template:: {
    local block = self,
    new():: (
      {}
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
    with_version(value):: (
      local converted = value;
      assert std.isString(converted) : '"version" expected to be of type "string"';
      {
        version: converted,
      }
    ),
  },
  maintenance_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_auto_recovery(value):: (
      local converted = value;
      assert std.isString(converted) : '"auto_recovery" expected to be of type "string"';
      {
        auto_recovery: converted,
      }
    ),
  },
  metadata_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_http_endpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"http_endpoint" expected to be of type "string"';
      {
        http_endpoint: converted,
      }
    ),
    with_http_protocol_ipv6(value):: (
      local converted = value;
      assert std.isString(converted) : '"http_protocol_ipv6" expected to be of type "string"';
      {
        http_protocol_ipv6: converted,
      }
    ),
    with_http_put_response_hop_limit(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"http_put_response_hop_limit" expected to be of type "number"';
      {
        http_put_response_hop_limit: converted,
      }
    ),
    with_http_tokens(value):: (
      local converted = value;
      assert std.isString(converted) : '"http_tokens" expected to be of type "string"';
      {
        http_tokens: converted,
      }
    ),
    with_instance_metadata_tags(value):: (
      local converted = value;
      assert std.isString(converted) : '"instance_metadata_tags" expected to be of type "string"';
      {
        instance_metadata_tags: converted,
      }
    ),
  },
  network_interface:: {
    local block = self,
    new(device_index, network_interface_id):: (
      {}
      + block.with_device_index(device_index)
      + block.with_network_interface_id(network_interface_id)
    ),
    with_delete_on_termination(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"delete_on_termination" expected to be of type "bool"';
      {
        delete_on_termination: converted,
      }
    ),
    with_device_index(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"device_index" expected to be of type "number"';
      {
        device_index: converted,
      }
    ),
    with_network_card_index(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"network_card_index" expected to be of type "number"';
      {
        network_card_index: converted,
      }
    ),
    with_network_interface_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"network_interface_id" expected to be of type "string"';
      {
        network_interface_id: converted,
      }
    ),
  },
  private_dns_name_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_enable_resource_name_dns_a_record(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_resource_name_dns_a_record" expected to be of type "bool"';
      {
        enable_resource_name_dns_a_record: converted,
      }
    ),
    with_enable_resource_name_dns_aaaa_record(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_resource_name_dns_aaaa_record" expected to be of type "bool"';
      {
        enable_resource_name_dns_aaaa_record: converted,
      }
    ),
    with_hostname_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"hostname_type" expected to be of type "string"';
      {
        hostname_type: converted,
      }
    ),
  },
  root_block_device:: {
    local block = self,
    new():: (
      {}
    ),
    with_delete_on_termination(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"delete_on_termination" expected to be of type "bool"';
      {
        delete_on_termination: converted,
      }
    ),
    with_device_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"device_name" expected to be of type "string"';
      {
        device_name: converted,
      }
    ),
    with_encrypted(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"encrypted" expected to be of type "bool"';
      {
        encrypted: converted,
      }
    ),
    with_iops(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"iops" expected to be of type "number"';
      {
        iops: converted,
      }
    ),
    with_kms_key_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
      {
        kms_key_id: converted,
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
    with_throughput(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"throughput" expected to be of type "number"';
      {
        throughput: converted,
      }
    ),
    with_volume_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"volume_id" expected to be of type "string"';
      {
        volume_id: converted,
      }
    ),
    with_volume_size(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"volume_size" expected to be of type "number"';
      {
        volume_size: converted,
      }
    ),
    with_volume_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"volume_type" expected to be of type "string"';
      {
        volume_type: converted,
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
    with_read(value):: (
      local converted = value;
      assert std.isString(converted) : '"read" expected to be of type "string"';
      {
        read: converted,
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
  with_capacity_reservation_specification(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capacity_reservation_specification: value,
    }
  ),
  with_cpu_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cpu_options: value,
    }
  ),
  with_credit_specification(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      credit_specification: value,
    }
  ),
  with_ebs_block_device(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ebs_block_device: value,
    }
  ),
  with_enclave_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      enclave_options: value,
    }
  ),
  with_ephemeral_block_device(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ephemeral_block_device: value,
    }
  ),
  with_instance_market_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_market_options: value,
    }
  ),
  with_launch_template(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      launch_template: value,
    }
  ),
  with_maintenance_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      maintenance_options: value,
    }
  ),
  with_metadata_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      metadata_options: value,
    }
  ),
  with_network_interface(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_interface: value,
    }
  ),
  with_private_dns_name_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      private_dns_name_options: value,
    }
  ),
  with_root_block_device(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      root_block_device: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_capacity_reservation_specification_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capacity_reservation_specification+: converted,
    }
  ),
  with_cpu_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cpu_options+: converted,
    }
  ),
  with_credit_specification_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      credit_specification+: converted,
    }
  ),
  with_ebs_block_device_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ebs_block_device+: converted,
    }
  ),
  with_enclave_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      enclave_options+: converted,
    }
  ),
  with_ephemeral_block_device_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ephemeral_block_device+: converted,
    }
  ),
  with_instance_market_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_market_options+: converted,
    }
  ),
  with_launch_template_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      launch_template+: converted,
    }
  ),
  with_maintenance_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      maintenance_options+: converted,
    }
  ),
  with_metadata_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      metadata_options+: converted,
    }
  ),
  with_network_interface_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_interface+: converted,
    }
  ),
  with_private_dns_name_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      private_dns_name_options+: converted,
    }
  ),
  with_root_block_device_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      root_block_device+: converted,
    }
  ),
}
