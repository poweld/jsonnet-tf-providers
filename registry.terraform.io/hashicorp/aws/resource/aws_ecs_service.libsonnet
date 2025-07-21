{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_availability_zone_rebalancing(value):: (
    local converted = value;
    assert std.isString(converted) : '"availability_zone_rebalancing" expected to be of type "string"';
    {
      availability_zone_rebalancing: converted,
    }
  ),
  with_cluster(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster" expected to be of type "string"';
    {
      cluster: converted,
    }
  ),
  with_deployment_maximum_percent(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"deployment_maximum_percent" expected to be of type "number"';
    {
      deployment_maximum_percent: converted,
    }
  ),
  with_deployment_minimum_healthy_percent(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"deployment_minimum_healthy_percent" expected to be of type "number"';
    {
      deployment_minimum_healthy_percent: converted,
    }
  ),
  with_desired_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"desired_count" expected to be of type "number"';
    {
      desired_count: converted,
    }
  ),
  with_enable_ecs_managed_tags(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_ecs_managed_tags" expected to be of type "bool"';
    {
      enable_ecs_managed_tags: converted,
    }
  ),
  with_enable_execute_command(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_execute_command" expected to be of type "bool"';
    {
      enable_execute_command: converted,
    }
  ),
  with_force_delete(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_delete" expected to be of type "bool"';
    {
      force_delete: converted,
    }
  ),
  with_force_new_deployment(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_new_deployment" expected to be of type "bool"';
    {
      force_new_deployment: converted,
    }
  ),
  with_health_check_grace_period_seconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"health_check_grace_period_seconds" expected to be of type "number"';
    {
      health_check_grace_period_seconds: converted,
    }
  ),
  with_iam_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_role" expected to be of type "string"';
    {
      iam_role: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_launch_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"launch_type" expected to be of type "string"';
    {
      launch_type: converted,
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
  with_propagate_tags(value):: (
    local converted = value;
    assert std.isString(converted) : '"propagate_tags" expected to be of type "string"';
    {
      propagate_tags: converted,
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
  with_scheduling_strategy(value):: (
    local converted = value;
    assert std.isString(converted) : '"scheduling_strategy" expected to be of type "string"';
    {
      scheduling_strategy: converted,
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
  with_task_definition(value):: (
    local converted = value;
    assert std.isString(converted) : '"task_definition" expected to be of type "string"';
    {
      task_definition: converted,
    }
  ),
  with_triggers(value):: (
    local converted = value;
    assert std.isObject(converted) : '"triggers" expected to be of type "map"';
    {
      triggers: converted,
    }
  ),
  with_wait_for_steady_state(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"wait_for_steady_state" expected to be of type "bool"';
    {
      wait_for_steady_state: converted,
    }
  ),
  alarms:: {
    local block = self,
    new(alarm_names, enable, rollback):: (
      {}
      + block.with_alarm_names(alarm_names)
      + block.with_enable(enable)
      + block.with_rollback(rollback)
    ),
    with_alarm_names(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"alarm_names" expected to be of type "set"';
      {
        alarm_names: converted,
      }
    ),
    with_alarm_names_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"alarm_names" expected to be of type "set"';
      {
        alarm_names+: converted,
      }
    ),
    with_enable(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable" expected to be of type "bool"';
      {
        enable: converted,
      }
    ),
    with_rollback(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"rollback" expected to be of type "bool"';
      {
        rollback: converted,
      }
    ),
  },
  capacity_provider_strategy:: {
    local block = self,
    new(capacity_provider):: (
      {}
      + block.with_capacity_provider(capacity_provider)
    ),
    with_base(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"base" expected to be of type "number"';
      {
        base: converted,
      }
    ),
    with_capacity_provider(value):: (
      local converted = value;
      assert std.isString(converted) : '"capacity_provider" expected to be of type "string"';
      {
        capacity_provider: converted,
      }
    ),
    with_weight(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"weight" expected to be of type "number"';
      {
        weight: converted,
      }
    ),
  },
  deployment_circuit_breaker:: {
    local block = self,
    new(enable, rollback):: (
      {}
      + block.with_enable(enable)
      + block.with_rollback(rollback)
    ),
    with_enable(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable" expected to be of type "bool"';
      {
        enable: converted,
      }
    ),
    with_rollback(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"rollback" expected to be of type "bool"';
      {
        rollback: converted,
      }
    ),
  },
  deployment_controller:: {
    local block = self,
    new():: (
      {}
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  load_balancer:: {
    local block = self,
    new(container_name, container_port):: (
      {}
      + block.with_container_name(container_name)
      + block.with_container_port(container_port)
    ),
    with_container_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"container_name" expected to be of type "string"';
      {
        container_name: converted,
      }
    ),
    with_container_port(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"container_port" expected to be of type "number"';
      {
        container_port: converted,
      }
    ),
    with_elb_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"elb_name" expected to be of type "string"';
      {
        elb_name: converted,
      }
    ),
    with_target_group_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"target_group_arn" expected to be of type "string"';
      {
        target_group_arn: converted,
      }
    ),
  },
  network_configuration:: {
    local block = self,
    new(subnets):: (
      {}
      + block.with_subnets(subnets)
    ),
    with_assign_public_ip(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"assign_public_ip" expected to be of type "bool"';
      {
        assign_public_ip: converted,
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
  },
  ordered_placement_strategy:: {
    local block = self,
    new(type):: (
      {}
      + block.with_type(type)
    ),
    with_field(value):: (
      local converted = value;
      assert std.isString(converted) : '"field" expected to be of type "string"';
      {
        field: converted,
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
  placement_constraints:: {
    local block = self,
    new(type):: (
      {}
      + block.with_type(type)
    ),
    with_expression(value):: (
      local converted = value;
      assert std.isString(converted) : '"expression" expected to be of type "string"';
      {
        expression: converted,
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
  service_connect_configuration:: {
    local block = self,
    new(enabled):: (
      {}
      + block.with_enabled(enabled)
    ),
    with_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    with_namespace(value):: (
      local converted = value;
      assert std.isString(converted) : '"namespace" expected to be of type "string"';
      {
        namespace: converted,
      }
    ),
    log_configuration:: {
      local block = self,
      new(log_driver):: (
        {}
        + block.with_log_driver(log_driver)
      ),
      with_log_driver(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_driver" expected to be of type "string"';
        {
          log_driver: converted,
        }
      ),
      with_options(value):: (
        local converted = value;
        assert std.isObject(converted) : '"options" expected to be of type "map"';
        {
          options: converted,
        }
      ),
      secret_option:: {
        local block = self,
        new(name, value_from):: (
          {}
          + block.with_name(name)
          + block.with_value_from(value_from)
        ),
        with_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        with_value_from(value):: (
          local converted = value;
          assert std.isString(converted) : '"value_from" expected to be of type "string"';
          {
            value_from: converted,
          }
        ),
      },
      with_secret_option(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          secret_option: value,
        }
      ),
      with_secret_option_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          secret_option+: converted,
        }
      ),
    },
    service:: {
      local block = self,
      new(port_name):: (
        {}
        + block.with_port_name(port_name)
      ),
      with_discovery_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"discovery_name" expected to be of type "string"';
        {
          discovery_name: converted,
        }
      ),
      with_ingress_port_override(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"ingress_port_override" expected to be of type "number"';
        {
          ingress_port_override: converted,
        }
      ),
      with_port_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"port_name" expected to be of type "string"';
        {
          port_name: converted,
        }
      ),
      client_alias:: {
        local block = self,
        new(port):: (
          {}
          + block.with_port(port)
        ),
        with_dns_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"dns_name" expected to be of type "string"';
          {
            dns_name: converted,
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
      timeout:: {
        local block = self,
        new():: (
          {}
        ),
        with_idle_timeout_seconds(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"idle_timeout_seconds" expected to be of type "number"';
          {
            idle_timeout_seconds: converted,
          }
        ),
        with_per_request_timeout_seconds(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"per_request_timeout_seconds" expected to be of type "number"';
          {
            per_request_timeout_seconds: converted,
          }
        ),
      },
      tls:: {
        local block = self,
        new():: (
          {}
        ),
        with_kms_key(value):: (
          local converted = value;
          assert std.isString(converted) : '"kms_key" expected to be of type "string"';
          {
            kms_key: converted,
          }
        ),
        with_role_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"role_arn" expected to be of type "string"';
          {
            role_arn: converted,
          }
        ),
        issuer_cert_authority:: {
          local block = self,
          new(aws_pca_authority_arn):: (
            {}
            + block.with_aws_pca_authority_arn(aws_pca_authority_arn)
          ),
          with_aws_pca_authority_arn(value):: (
            local converted = value;
            assert std.isString(converted) : '"aws_pca_authority_arn" expected to be of type "string"';
            {
              aws_pca_authority_arn: converted,
            }
          ),
        },
        with_issuer_cert_authority(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            issuer_cert_authority: value,
          }
        ),
        with_issuer_cert_authority_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            issuer_cert_authority+: converted,
          }
        ),
      },
      with_client_alias(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          client_alias: value,
        }
      ),
      with_timeout(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timeout: value,
        }
      ),
      with_tls(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tls: value,
        }
      ),
      with_client_alias_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          client_alias+: converted,
        }
      ),
      with_timeout_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timeout+: converted,
        }
      ),
      with_tls_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tls+: converted,
        }
      ),
    },
    with_log_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        log_configuration: value,
      }
    ),
    with_service(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        service: value,
      }
    ),
    with_log_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        log_configuration+: converted,
      }
    ),
    with_service_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        service+: converted,
      }
    ),
  },
  service_registries:: {
    local block = self,
    new(registry_arn):: (
      {}
      + block.with_registry_arn(registry_arn)
    ),
    with_container_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"container_name" expected to be of type "string"';
      {
        container_name: converted,
      }
    ),
    with_container_port(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"container_port" expected to be of type "number"';
      {
        container_port: converted,
      }
    ),
    with_port(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"port" expected to be of type "number"';
      {
        port: converted,
      }
    ),
    with_registry_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"registry_arn" expected to be of type "string"';
      {
        registry_arn: converted,
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
  volume_configuration:: {
    local block = self,
    new(name):: (
      {}
      + block.with_name(name)
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    managed_ebs_volume:: {
      local block = self,
      new(role_arn):: (
        {}
        + block.with_role_arn(role_arn)
      ),
      with_encrypted(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"encrypted" expected to be of type "bool"';
        {
          encrypted: converted,
        }
      ),
      with_file_system_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"file_system_type" expected to be of type "string"';
        {
          file_system_type: converted,
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
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      with_size_in_gb(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"size_in_gb" expected to be of type "number"';
        {
          size_in_gb: converted,
        }
      ),
      with_snapshot_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"snapshot_id" expected to be of type "string"';
        {
          snapshot_id: converted,
        }
      ),
      with_throughput(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"throughput" expected to be of type "number"';
        {
          throughput: converted,
        }
      ),
      with_volume_initialization_rate(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"volume_initialization_rate" expected to be of type "number"';
        {
          volume_initialization_rate: converted,
        }
      ),
      with_volume_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"volume_type" expected to be of type "string"';
        {
          volume_type: converted,
        }
      ),
      tag_specifications:: {
        local block = self,
        new(resource_type):: (
          {}
          + block.with_resource_type(resource_type)
        ),
        with_propagate_tags(value):: (
          local converted = value;
          assert std.isString(converted) : '"propagate_tags" expected to be of type "string"';
          {
            propagate_tags: converted,
          }
        ),
        with_resource_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"resource_type" expected to be of type "string"';
          {
            resource_type: converted,
          }
        ),
        with_tags(value):: (
          local converted = value;
          assert std.isObject(converted) : '"tags" expected to be of type "map"';
          {
            tags: converted,
          }
        ),
      },
      with_tag_specifications(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tag_specifications: value,
        }
      ),
      with_tag_specifications_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tag_specifications+: converted,
        }
      ),
    },
    with_managed_ebs_volume(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        managed_ebs_volume: value,
      }
    ),
    with_managed_ebs_volume_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        managed_ebs_volume+: converted,
      }
    ),
  },
  vpc_lattice_configurations:: {
    local block = self,
    new(port_name, role_arn, target_group_arn):: (
      {}
      + block.with_port_name(port_name)
      + block.with_role_arn(role_arn)
      + block.with_target_group_arn(target_group_arn)
    ),
    with_port_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"port_name" expected to be of type "string"';
      {
        port_name: converted,
      }
    ),
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    with_target_group_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"target_group_arn" expected to be of type "string"';
      {
        target_group_arn: converted,
      }
    ),
  },
  with_alarms(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      alarms: value,
    }
  ),
  with_capacity_provider_strategy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capacity_provider_strategy: value,
    }
  ),
  with_deployment_circuit_breaker(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      deployment_circuit_breaker: value,
    }
  ),
  with_deployment_controller(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      deployment_controller: value,
    }
  ),
  with_load_balancer(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      load_balancer: value,
    }
  ),
  with_network_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_configuration: value,
    }
  ),
  with_ordered_placement_strategy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ordered_placement_strategy: value,
    }
  ),
  with_placement_constraints(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      placement_constraints: value,
    }
  ),
  with_service_connect_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      service_connect_configuration: value,
    }
  ),
  with_service_registries(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      service_registries: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_volume_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      volume_configuration: value,
    }
  ),
  with_vpc_lattice_configurations(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_lattice_configurations: value,
    }
  ),
  with_alarms_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      alarms+: converted,
    }
  ),
  with_capacity_provider_strategy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capacity_provider_strategy+: converted,
    }
  ),
  with_deployment_circuit_breaker_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      deployment_circuit_breaker+: converted,
    }
  ),
  with_deployment_controller_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      deployment_controller+: converted,
    }
  ),
  with_load_balancer_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      load_balancer+: converted,
    }
  ),
  with_network_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_configuration+: converted,
    }
  ),
  with_ordered_placement_strategy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ordered_placement_strategy+: converted,
    }
  ),
  with_placement_constraints_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      placement_constraints+: converted,
    }
  ),
  with_service_connect_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      service_connect_configuration+: converted,
    }
  ),
  with_service_registries_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      service_registries+: converted,
    }
  ),
  with_volume_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      volume_configuration+: converted,
    }
  ),
  with_vpc_lattice_configurations_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_lattice_configurations+: converted,
    }
  ),
}
