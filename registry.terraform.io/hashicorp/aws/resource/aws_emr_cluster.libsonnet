{
  local block = self,
  new(name, release_label, service_role):: (
    {}
    + block.with_name(name)
    + block.with_release_label(release_label)
    + block.with_service_role(service_role)
  ),
  with_additional_info(value):: (
    local converted = value;
    assert std.isString(converted) : '"additional_info" expected to be of type "string"';
    {
      additional_info: converted,
    }
  ),
  with_applications(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"applications" expected to be of type "set"';
    {
      applications: converted,
    }
  ),
  with_applications_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"applications" expected to be of type "set"';
    {
      applications+: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_autoscaling_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"autoscaling_role" expected to be of type "string"';
    {
      autoscaling_role: converted,
    }
  ),
  with_cluster_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_state" expected to be of type "string"';
    {
      cluster_state: converted,
    }
  ),
  with_configurations(value):: (
    local converted = value;
    assert std.isString(converted) : '"configurations" expected to be of type "string"';
    {
      configurations: converted,
    }
  ),
  with_configurations_json(value):: (
    local converted = value;
    assert std.isString(converted) : '"configurations_json" expected to be of type "string"';
    {
      configurations_json: converted,
    }
  ),
  with_custom_ami_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_ami_id" expected to be of type "string"';
    {
      custom_ami_id: converted,
    }
  ),
  with_ebs_root_volume_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"ebs_root_volume_size" expected to be of type "number"';
    {
      ebs_root_volume_size: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_keep_job_flow_alive_when_no_steps(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"keep_job_flow_alive_when_no_steps" expected to be of type "bool"';
    {
      keep_job_flow_alive_when_no_steps: converted,
    }
  ),
  with_list_steps_states(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"list_steps_states" expected to be of type "set"';
    {
      list_steps_states: converted,
    }
  ),
  with_list_steps_states_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"list_steps_states" expected to be of type "set"';
    {
      list_steps_states+: converted,
    }
  ),
  with_log_encryption_kms_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"log_encryption_kms_key_id" expected to be of type "string"';
    {
      log_encryption_kms_key_id: converted,
    }
  ),
  with_log_uri(value):: (
    local converted = value;
    assert std.isString(converted) : '"log_uri" expected to be of type "string"';
    {
      log_uri: converted,
    }
  ),
  with_master_public_dns(value):: (
    local converted = value;
    assert std.isString(converted) : '"master_public_dns" expected to be of type "string"';
    {
      master_public_dns: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_os_release_label(value):: (
    local converted = value;
    assert std.isString(converted) : '"os_release_label" expected to be of type "string"';
    {
      os_release_label: converted,
    }
  ),
  with_placement_group_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"placement_group_config" expected to be of type "list"';
    {
      placement_group_config: converted,
    }
  ),
  with_placement_group_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"placement_group_config" expected to be of type "list"';
    {
      placement_group_config+: converted,
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
  with_release_label(value):: (
    local converted = value;
    assert std.isString(converted) : '"release_label" expected to be of type "string"';
    {
      release_label: converted,
    }
  ),
  with_scale_down_behavior(value):: (
    local converted = value;
    assert std.isString(converted) : '"scale_down_behavior" expected to be of type "string"';
    {
      scale_down_behavior: converted,
    }
  ),
  with_security_configuration(value):: (
    local converted = value;
    assert std.isString(converted) : '"security_configuration" expected to be of type "string"';
    {
      security_configuration: converted,
    }
  ),
  with_service_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_role" expected to be of type "string"';
    {
      service_role: converted,
    }
  ),
  with_step(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"step" expected to be of type "list"';
    {
      step: converted,
    }
  ),
  with_step_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"step" expected to be of type "list"';
    {
      step+: converted,
    }
  ),
  with_step_concurrency_level(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"step_concurrency_level" expected to be of type "number"';
    {
      step_concurrency_level: converted,
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
  with_termination_protection(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"termination_protection" expected to be of type "bool"';
    {
      termination_protection: converted,
    }
  ),
  with_unhealthy_node_replacement(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"unhealthy_node_replacement" expected to be of type "bool"';
    {
      unhealthy_node_replacement: converted,
    }
  ),
  with_visible_to_all_users(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"visible_to_all_users" expected to be of type "bool"';
    {
      visible_to_all_users: converted,
    }
  ),
  auto_termination_policy:: {
    local block = self,
    new():: (
      {}
    ),
    with_idle_timeout(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"idle_timeout" expected to be of type "number"';
      {
        idle_timeout: converted,
      }
    ),
  },
  bootstrap_action:: {
    local block = self,
    new(name, path):: (
      {}
      + block.with_name(name)
      + block.with_path(path)
    ),
    with_args(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"args" expected to be of type "list"';
      {
        args: converted,
      }
    ),
    with_args_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"args" expected to be of type "list"';
      {
        args+: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_path(value):: (
      local converted = value;
      assert std.isString(converted) : '"path" expected to be of type "string"';
      {
        path: converted,
      }
    ),
  },
  core_instance_fleet:: {
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
    with_provisioned_on_demand_capacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"provisioned_on_demand_capacity" expected to be of type "number"';
      {
        provisioned_on_demand_capacity: converted,
      }
    ),
    with_provisioned_spot_capacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"provisioned_spot_capacity" expected to be of type "number"';
      {
        provisioned_spot_capacity: converted,
      }
    ),
    with_target_on_demand_capacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"target_on_demand_capacity" expected to be of type "number"';
      {
        target_on_demand_capacity: converted,
      }
    ),
    with_target_spot_capacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"target_spot_capacity" expected to be of type "number"';
      {
        target_spot_capacity: converted,
      }
    ),
    instance_type_configs:: {
      local block = self,
      new(instance_type):: (
        {}
        + block.with_instance_type(instance_type)
      ),
      with_bid_price(value):: (
        local converted = value;
        assert std.isString(converted) : '"bid_price" expected to be of type "string"';
        {
          bid_price: converted,
        }
      ),
      with_bid_price_as_percentage_of_on_demand_price(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"bid_price_as_percentage_of_on_demand_price" expected to be of type "number"';
        {
          bid_price_as_percentage_of_on_demand_price: converted,
        }
      ),
      with_instance_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"instance_type" expected to be of type "string"';
        {
          instance_type: converted,
        }
      ),
      with_weighted_capacity(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"weighted_capacity" expected to be of type "number"';
        {
          weighted_capacity: converted,
        }
      ),
      configurations:: {
        local block = self,
        new():: (
          {}
        ),
        with_classification(value):: (
          local converted = value;
          assert std.isString(converted) : '"classification" expected to be of type "string"';
          {
            classification: converted,
          }
        ),
        with_properties(value):: (
          local converted = value;
          assert std.isObject(converted) : '"properties" expected to be of type "map"';
          {
            properties: converted,
          }
        ),
      },
      ebs_config:: {
        local block = self,
        new(size, type):: (
          {}
          + block.with_size(size)
          + block.with_type(type)
        ),
        with_iops(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"iops" expected to be of type "number"';
          {
            iops: converted,
          }
        ),
        with_size(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"size" expected to be of type "number"';
          {
            size: converted,
          }
        ),
        with_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
        with_volumes_per_instance(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"volumes_per_instance" expected to be of type "number"';
          {
            volumes_per_instance: converted,
          }
        ),
      },
      with_configurations(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          configurations: value,
        }
      ),
      with_ebs_config(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          ebs_config: value,
        }
      ),
      with_configurations_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          configurations+: converted,
        }
      ),
      with_ebs_config_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          ebs_config+: converted,
        }
      ),
    },
    launch_specifications:: {
      local block = self,
      new():: (
        {}
      ),
      on_demand_specification:: {
        local block = self,
        new(allocation_strategy):: (
          {}
          + block.with_allocation_strategy(allocation_strategy)
        ),
        with_allocation_strategy(value):: (
          local converted = value;
          assert std.isString(converted) : '"allocation_strategy" expected to be of type "string"';
          {
            allocation_strategy: converted,
          }
        ),
      },
      spot_specification:: {
        local block = self,
        new(allocation_strategy, timeout_action, timeout_duration_minutes):: (
          {}
          + block.with_allocation_strategy(allocation_strategy)
          + block.with_timeout_action(timeout_action)
          + block.with_timeout_duration_minutes(timeout_duration_minutes)
        ),
        with_allocation_strategy(value):: (
          local converted = value;
          assert std.isString(converted) : '"allocation_strategy" expected to be of type "string"';
          {
            allocation_strategy: converted,
          }
        ),
        with_block_duration_minutes(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"block_duration_minutes" expected to be of type "number"';
          {
            block_duration_minutes: converted,
          }
        ),
        with_timeout_action(value):: (
          local converted = value;
          assert std.isString(converted) : '"timeout_action" expected to be of type "string"';
          {
            timeout_action: converted,
          }
        ),
        with_timeout_duration_minutes(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"timeout_duration_minutes" expected to be of type "number"';
          {
            timeout_duration_minutes: converted,
          }
        ),
      },
      with_on_demand_specification(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          on_demand_specification: value,
        }
      ),
      with_spot_specification(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          spot_specification: value,
        }
      ),
      with_on_demand_specification_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          on_demand_specification+: converted,
        }
      ),
      with_spot_specification_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          spot_specification+: converted,
        }
      ),
    },
    with_instance_type_configs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        instance_type_configs: value,
      }
    ),
    with_launch_specifications(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        launch_specifications: value,
      }
    ),
    with_instance_type_configs_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        instance_type_configs+: converted,
      }
    ),
    with_launch_specifications_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        launch_specifications+: converted,
      }
    ),
  },
  core_instance_group:: {
    local block = self,
    new(instance_type):: (
      {}
      + block.with_instance_type(instance_type)
    ),
    with_autoscaling_policy(value):: (
      local converted = value;
      assert std.isString(converted) : '"autoscaling_policy" expected to be of type "string"';
      {
        autoscaling_policy: converted,
      }
    ),
    with_bid_price(value):: (
      local converted = value;
      assert std.isString(converted) : '"bid_price" expected to be of type "string"';
      {
        bid_price: converted,
      }
    ),
    with_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    with_instance_count(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"instance_count" expected to be of type "number"';
      {
        instance_count: converted,
      }
    ),
    with_instance_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"instance_type" expected to be of type "string"';
      {
        instance_type: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    ebs_config:: {
      local block = self,
      new(size, type):: (
        {}
        + block.with_size(size)
        + block.with_type(type)
      ),
      with_iops(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"iops" expected to be of type "number"';
        {
          iops: converted,
        }
      ),
      with_size(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"size" expected to be of type "number"';
        {
          size: converted,
        }
      ),
      with_throughput(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"throughput" expected to be of type "number"';
        {
          throughput: converted,
        }
      ),
      with_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
      with_volumes_per_instance(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"volumes_per_instance" expected to be of type "number"';
        {
          volumes_per_instance: converted,
        }
      ),
    },
    with_ebs_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ebs_config: value,
      }
    ),
    with_ebs_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ebs_config+: converted,
      }
    ),
  },
  ec2_attributes:: {
    local block = self,
    new(instance_profile):: (
      {}
      + block.with_instance_profile(instance_profile)
    ),
    with_additional_master_security_groups(value):: (
      local converted = value;
      assert std.isString(converted) : '"additional_master_security_groups" expected to be of type "string"';
      {
        additional_master_security_groups: converted,
      }
    ),
    with_additional_slave_security_groups(value):: (
      local converted = value;
      assert std.isString(converted) : '"additional_slave_security_groups" expected to be of type "string"';
      {
        additional_slave_security_groups: converted,
      }
    ),
    with_emr_managed_master_security_group(value):: (
      local converted = value;
      assert std.isString(converted) : '"emr_managed_master_security_group" expected to be of type "string"';
      {
        emr_managed_master_security_group: converted,
      }
    ),
    with_emr_managed_slave_security_group(value):: (
      local converted = value;
      assert std.isString(converted) : '"emr_managed_slave_security_group" expected to be of type "string"';
      {
        emr_managed_slave_security_group: converted,
      }
    ),
    with_instance_profile(value):: (
      local converted = value;
      assert std.isString(converted) : '"instance_profile" expected to be of type "string"';
      {
        instance_profile: converted,
      }
    ),
    with_key_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"key_name" expected to be of type "string"';
      {
        key_name: converted,
      }
    ),
    with_service_access_security_group(value):: (
      local converted = value;
      assert std.isString(converted) : '"service_access_security_group" expected to be of type "string"';
      {
        service_access_security_group: converted,
      }
    ),
    with_subnet_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"subnet_id" expected to be of type "string"';
      {
        subnet_id: converted,
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
  },
  kerberos_attributes:: {
    local block = self,
    new(kdc_admin_password, realm):: (
      {}
      + block.with_kdc_admin_password(kdc_admin_password)
      + block.with_realm(realm)
    ),
    with_ad_domain_join_password(value):: (
      local converted = value;
      assert std.isString(converted) : '"ad_domain_join_password" expected to be of type "string"';
      {
        ad_domain_join_password: converted,
      }
    ),
    with_ad_domain_join_user(value):: (
      local converted = value;
      assert std.isString(converted) : '"ad_domain_join_user" expected to be of type "string"';
      {
        ad_domain_join_user: converted,
      }
    ),
    with_cross_realm_trust_principal_password(value):: (
      local converted = value;
      assert std.isString(converted) : '"cross_realm_trust_principal_password" expected to be of type "string"';
      {
        cross_realm_trust_principal_password: converted,
      }
    ),
    with_kdc_admin_password(value):: (
      local converted = value;
      assert std.isString(converted) : '"kdc_admin_password" expected to be of type "string"';
      {
        kdc_admin_password: converted,
      }
    ),
    with_realm(value):: (
      local converted = value;
      assert std.isString(converted) : '"realm" expected to be of type "string"';
      {
        realm: converted,
      }
    ),
  },
  master_instance_fleet:: {
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
    with_provisioned_on_demand_capacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"provisioned_on_demand_capacity" expected to be of type "number"';
      {
        provisioned_on_demand_capacity: converted,
      }
    ),
    with_provisioned_spot_capacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"provisioned_spot_capacity" expected to be of type "number"';
      {
        provisioned_spot_capacity: converted,
      }
    ),
    with_target_on_demand_capacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"target_on_demand_capacity" expected to be of type "number"';
      {
        target_on_demand_capacity: converted,
      }
    ),
    with_target_spot_capacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"target_spot_capacity" expected to be of type "number"';
      {
        target_spot_capacity: converted,
      }
    ),
    instance_type_configs:: {
      local block = self,
      new(instance_type):: (
        {}
        + block.with_instance_type(instance_type)
      ),
      with_bid_price(value):: (
        local converted = value;
        assert std.isString(converted) : '"bid_price" expected to be of type "string"';
        {
          bid_price: converted,
        }
      ),
      with_bid_price_as_percentage_of_on_demand_price(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"bid_price_as_percentage_of_on_demand_price" expected to be of type "number"';
        {
          bid_price_as_percentage_of_on_demand_price: converted,
        }
      ),
      with_instance_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"instance_type" expected to be of type "string"';
        {
          instance_type: converted,
        }
      ),
      with_weighted_capacity(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"weighted_capacity" expected to be of type "number"';
        {
          weighted_capacity: converted,
        }
      ),
      configurations:: {
        local block = self,
        new():: (
          {}
        ),
        with_classification(value):: (
          local converted = value;
          assert std.isString(converted) : '"classification" expected to be of type "string"';
          {
            classification: converted,
          }
        ),
        with_properties(value):: (
          local converted = value;
          assert std.isObject(converted) : '"properties" expected to be of type "map"';
          {
            properties: converted,
          }
        ),
      },
      ebs_config:: {
        local block = self,
        new(size, type):: (
          {}
          + block.with_size(size)
          + block.with_type(type)
        ),
        with_iops(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"iops" expected to be of type "number"';
          {
            iops: converted,
          }
        ),
        with_size(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"size" expected to be of type "number"';
          {
            size: converted,
          }
        ),
        with_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
        with_volumes_per_instance(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"volumes_per_instance" expected to be of type "number"';
          {
            volumes_per_instance: converted,
          }
        ),
      },
      with_configurations(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          configurations: value,
        }
      ),
      with_ebs_config(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          ebs_config: value,
        }
      ),
      with_configurations_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          configurations+: converted,
        }
      ),
      with_ebs_config_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          ebs_config+: converted,
        }
      ),
    },
    launch_specifications:: {
      local block = self,
      new():: (
        {}
      ),
      on_demand_specification:: {
        local block = self,
        new(allocation_strategy):: (
          {}
          + block.with_allocation_strategy(allocation_strategy)
        ),
        with_allocation_strategy(value):: (
          local converted = value;
          assert std.isString(converted) : '"allocation_strategy" expected to be of type "string"';
          {
            allocation_strategy: converted,
          }
        ),
      },
      spot_specification:: {
        local block = self,
        new(allocation_strategy, timeout_action, timeout_duration_minutes):: (
          {}
          + block.with_allocation_strategy(allocation_strategy)
          + block.with_timeout_action(timeout_action)
          + block.with_timeout_duration_minutes(timeout_duration_minutes)
        ),
        with_allocation_strategy(value):: (
          local converted = value;
          assert std.isString(converted) : '"allocation_strategy" expected to be of type "string"';
          {
            allocation_strategy: converted,
          }
        ),
        with_block_duration_minutes(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"block_duration_minutes" expected to be of type "number"';
          {
            block_duration_minutes: converted,
          }
        ),
        with_timeout_action(value):: (
          local converted = value;
          assert std.isString(converted) : '"timeout_action" expected to be of type "string"';
          {
            timeout_action: converted,
          }
        ),
        with_timeout_duration_minutes(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"timeout_duration_minutes" expected to be of type "number"';
          {
            timeout_duration_minutes: converted,
          }
        ),
      },
      with_on_demand_specification(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          on_demand_specification: value,
        }
      ),
      with_spot_specification(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          spot_specification: value,
        }
      ),
      with_on_demand_specification_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          on_demand_specification+: converted,
        }
      ),
      with_spot_specification_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          spot_specification+: converted,
        }
      ),
    },
    with_instance_type_configs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        instance_type_configs: value,
      }
    ),
    with_launch_specifications(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        launch_specifications: value,
      }
    ),
    with_instance_type_configs_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        instance_type_configs+: converted,
      }
    ),
    with_launch_specifications_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        launch_specifications+: converted,
      }
    ),
  },
  master_instance_group:: {
    local block = self,
    new(instance_type):: (
      {}
      + block.with_instance_type(instance_type)
    ),
    with_bid_price(value):: (
      local converted = value;
      assert std.isString(converted) : '"bid_price" expected to be of type "string"';
      {
        bid_price: converted,
      }
    ),
    with_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    with_instance_count(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"instance_count" expected to be of type "number"';
      {
        instance_count: converted,
      }
    ),
    with_instance_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"instance_type" expected to be of type "string"';
      {
        instance_type: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    ebs_config:: {
      local block = self,
      new(size, type):: (
        {}
        + block.with_size(size)
        + block.with_type(type)
      ),
      with_iops(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"iops" expected to be of type "number"';
        {
          iops: converted,
        }
      ),
      with_size(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"size" expected to be of type "number"';
        {
          size: converted,
        }
      ),
      with_throughput(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"throughput" expected to be of type "number"';
        {
          throughput: converted,
        }
      ),
      with_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
      with_volumes_per_instance(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"volumes_per_instance" expected to be of type "number"';
        {
          volumes_per_instance: converted,
        }
      ),
    },
    with_ebs_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ebs_config: value,
      }
    ),
    with_ebs_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ebs_config+: converted,
      }
    ),
  },
  with_auto_termination_policy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_termination_policy: value,
    }
  ),
  with_bootstrap_action(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      bootstrap_action: value,
    }
  ),
  with_core_instance_fleet(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      core_instance_fleet: value,
    }
  ),
  with_core_instance_group(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      core_instance_group: value,
    }
  ),
  with_ec2_attributes(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ec2_attributes: value,
    }
  ),
  with_kerberos_attributes(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kerberos_attributes: value,
    }
  ),
  with_master_instance_fleet(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      master_instance_fleet: value,
    }
  ),
  with_master_instance_group(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      master_instance_group: value,
    }
  ),
  with_auto_termination_policy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_termination_policy+: converted,
    }
  ),
  with_bootstrap_action_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      bootstrap_action+: converted,
    }
  ),
  with_core_instance_fleet_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      core_instance_fleet+: converted,
    }
  ),
  with_core_instance_group_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      core_instance_group+: converted,
    }
  ),
  with_ec2_attributes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ec2_attributes+: converted,
    }
  ),
  with_kerberos_attributes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kerberos_attributes+: converted,
    }
  ),
  with_master_instance_fleet_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      master_instance_fleet+: converted,
    }
  ),
  with_master_instance_group_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      master_instance_group+: converted,
    }
  ),
}
