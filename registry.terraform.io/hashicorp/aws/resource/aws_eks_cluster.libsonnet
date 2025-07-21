{
  local block = self,
  new(name, role_arn):: (
    {}
    + block.with_name(name)
    + block.with_role_arn(role_arn)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_bootstrap_self_managed_addons(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"bootstrap_self_managed_addons" expected to be of type "bool"';
    {
      bootstrap_self_managed_addons: converted,
    }
  ),
  with_certificate_authority(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"certificate_authority" expected to be of type "list"';
    {
      certificate_authority: converted,
    }
  ),
  with_certificate_authority_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"certificate_authority" expected to be of type "list"';
    {
      certificate_authority+: converted,
    }
  ),
  with_cluster_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_id" expected to be of type "string"';
    {
      cluster_id: converted,
    }
  ),
  with_created_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_at" expected to be of type "string"';
    {
      created_at: converted,
    }
  ),
  with_enabled_cluster_log_types(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_cluster_log_types" expected to be of type "set"';
    {
      enabled_cluster_log_types: converted,
    }
  ),
  with_enabled_cluster_log_types_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_cluster_log_types" expected to be of type "set"';
    {
      enabled_cluster_log_types+: converted,
    }
  ),
  with_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint" expected to be of type "string"';
    {
      endpoint: converted,
    }
  ),
  with_force_update_version(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_update_version" expected to be of type "bool"';
    {
      force_update_version: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_identity(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"identity" expected to be of type "list"';
    {
      identity: converted,
    }
  ),
  with_identity_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"identity" expected to be of type "list"';
    {
      identity+: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_platform_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"platform_version" expected to be of type "string"';
    {
      platform_version: converted,
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
  with_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
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
  with_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
  access_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_authentication_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"authentication_mode" expected to be of type "string"';
      {
        authentication_mode: converted,
      }
    ),
    with_bootstrap_cluster_creator_admin_permissions(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"bootstrap_cluster_creator_admin_permissions" expected to be of type "bool"';
      {
        bootstrap_cluster_creator_admin_permissions: converted,
      }
    ),
  },
  compute_config:: {
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
    with_node_pools(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"node_pools" expected to be of type "set"';
      {
        node_pools: converted,
      }
    ),
    with_node_pools_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"node_pools" expected to be of type "set"';
      {
        node_pools+: converted,
      }
    ),
    with_node_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"node_role_arn" expected to be of type "string"';
      {
        node_role_arn: converted,
      }
    ),
  },
  encryption_config:: {
    local block = self,
    new(resources):: (
      {}
      + block.with_resources(resources)
    ),
    with_resources(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resources" expected to be of type "set"';
      {
        resources: converted,
      }
    ),
    with_resources_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resources" expected to be of type "set"';
      {
        resources+: converted,
      }
    ),
    provider:: {
      local block = self,
      new(key_arn):: (
        {}
        + block.with_key_arn(key_arn)
      ),
      with_key_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"key_arn" expected to be of type "string"';
        {
          key_arn: converted,
        }
      ),
    },
    with_provider(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        provider: value,
      }
    ),
    with_provider_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        provider+: converted,
      }
    ),
  },
  kubernetes_network_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_ip_family(value):: (
      local converted = value;
      assert std.isString(converted) : '"ip_family" expected to be of type "string"';
      {
        ip_family: converted,
      }
    ),
    with_service_ipv4_cidr(value):: (
      local converted = value;
      assert std.isString(converted) : '"service_ipv4_cidr" expected to be of type "string"';
      {
        service_ipv4_cidr: converted,
      }
    ),
    with_service_ipv6_cidr(value):: (
      local converted = value;
      assert std.isString(converted) : '"service_ipv6_cidr" expected to be of type "string"';
      {
        service_ipv6_cidr: converted,
      }
    ),
    elastic_load_balancing:: {
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
    with_elastic_load_balancing(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        elastic_load_balancing: value,
      }
    ),
    with_elastic_load_balancing_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        elastic_load_balancing+: converted,
      }
    ),
  },
  outpost_config:: {
    local block = self,
    new(control_plane_instance_type, outpost_arns):: (
      {}
      + block.with_control_plane_instance_type(control_plane_instance_type)
      + block.with_outpost_arns(outpost_arns)
    ),
    with_control_plane_instance_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"control_plane_instance_type" expected to be of type "string"';
      {
        control_plane_instance_type: converted,
      }
    ),
    with_outpost_arns(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"outpost_arns" expected to be of type "set"';
      {
        outpost_arns: converted,
      }
    ),
    with_outpost_arns_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"outpost_arns" expected to be of type "set"';
      {
        outpost_arns+: converted,
      }
    ),
    control_plane_placement:: {
      local block = self,
      new(group_name):: (
        {}
        + block.with_group_name(group_name)
      ),
      with_group_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"group_name" expected to be of type "string"';
        {
          group_name: converted,
        }
      ),
    },
    with_control_plane_placement(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        control_plane_placement: value,
      }
    ),
    with_control_plane_placement_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        control_plane_placement+: converted,
      }
    ),
  },
  remote_network_config:: {
    local block = self,
    new():: (
      {}
    ),
    remote_node_networks:: {
      local block = self,
      new():: (
        {}
      ),
      with_cidrs(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cidrs" expected to be of type "set"';
        {
          cidrs: converted,
        }
      ),
      with_cidrs_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cidrs" expected to be of type "set"';
        {
          cidrs+: converted,
        }
      ),
    },
    remote_pod_networks:: {
      local block = self,
      new():: (
        {}
      ),
      with_cidrs(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cidrs" expected to be of type "set"';
        {
          cidrs: converted,
        }
      ),
      with_cidrs_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cidrs" expected to be of type "set"';
        {
          cidrs+: converted,
        }
      ),
    },
    with_remote_node_networks(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        remote_node_networks: value,
      }
    ),
    with_remote_pod_networks(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        remote_pod_networks: value,
      }
    ),
    with_remote_node_networks_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        remote_node_networks+: converted,
      }
    ),
    with_remote_pod_networks_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        remote_pod_networks+: converted,
      }
    ),
  },
  storage_config:: {
    local block = self,
    new():: (
      {}
    ),
    block_storage:: {
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
    with_block_storage(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        block_storage: value,
      }
    ),
    with_block_storage_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        block_storage+: converted,
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
  upgrade_policy:: {
    local block = self,
    new():: (
      {}
    ),
    with_support_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"support_type" expected to be of type "string"';
      {
        support_type: converted,
      }
    ),
  },
  vpc_config:: {
    local block = self,
    new(subnet_ids):: (
      {}
      + block.with_subnet_ids(subnet_ids)
    ),
    with_cluster_security_group_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"cluster_security_group_id" expected to be of type "string"';
      {
        cluster_security_group_id: converted,
      }
    ),
    with_endpoint_private_access(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"endpoint_private_access" expected to be of type "bool"';
      {
        endpoint_private_access: converted,
      }
    ),
    with_endpoint_public_access(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"endpoint_public_access" expected to be of type "bool"';
      {
        endpoint_public_access: converted,
      }
    ),
    with_public_access_cidrs(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"public_access_cidrs" expected to be of type "set"';
      {
        public_access_cidrs: converted,
      }
    ),
    with_public_access_cidrs_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"public_access_cidrs" expected to be of type "set"';
      {
        public_access_cidrs+: converted,
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
    with_subnet_ids(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
      {
        subnet_ids: converted,
      }
    ),
    with_subnet_ids_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
      {
        subnet_ids+: converted,
      }
    ),
    with_vpc_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
      {
        vpc_id: converted,
      }
    ),
  },
  zonal_shift_config:: {
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
  with_access_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_config: value,
    }
  ),
  with_compute_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      compute_config: value,
    }
  ),
  with_encryption_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_config: value,
    }
  ),
  with_kubernetes_network_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kubernetes_network_config: value,
    }
  ),
  with_outpost_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      outpost_config: value,
    }
  ),
  with_remote_network_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      remote_network_config: value,
    }
  ),
  with_storage_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_config: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_upgrade_policy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      upgrade_policy: value,
    }
  ),
  with_vpc_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config: value,
    }
  ),
  with_zonal_shift_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      zonal_shift_config: value,
    }
  ),
  with_access_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_config+: converted,
    }
  ),
  with_compute_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      compute_config+: converted,
    }
  ),
  with_encryption_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_config+: converted,
    }
  ),
  with_kubernetes_network_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kubernetes_network_config+: converted,
    }
  ),
  with_outpost_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      outpost_config+: converted,
    }
  ),
  with_remote_network_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      remote_network_config+: converted,
    }
  ),
  with_storage_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_config+: converted,
    }
  ),
  with_upgrade_policy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      upgrade_policy+: converted,
    }
  ),
  with_vpc_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config+: converted,
    }
  ),
  with_zonal_shift_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      zonal_shift_config+: converted,
    }
  ),
}
