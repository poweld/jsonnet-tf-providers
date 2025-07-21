{
  local block = self,
  new(domain_name):: (
    {}
    + block.with_domain_name(domain_name)
  ),
  with_access_policies(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_policies" expected to be of type "string"';
    {
      access_policies: converted,
    }
  ),
  with_advanced_options(value):: (
    local converted = value;
    assert std.isObject(converted) : '"advanced_options" expected to be of type "map"';
    {
      advanced_options: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_domain_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_id" expected to be of type "string"';
    {
      domain_id: converted,
    }
  ),
  with_domain_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
    }
  ),
  with_elasticsearch_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"elasticsearch_version" expected to be of type "string"';
    {
      elasticsearch_version: converted,
    }
  ),
  with_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint" expected to be of type "string"';
    {
      endpoint: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_kibana_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"kibana_endpoint" expected to be of type "string"';
    {
      kibana_endpoint: converted,
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
  advanced_security_options:: {
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
    with_internal_user_database_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"internal_user_database_enabled" expected to be of type "bool"';
      {
        internal_user_database_enabled: converted,
      }
    ),
    master_user_options:: {
      local block = self,
      new():: (
        {}
      ),
      with_master_user_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"master_user_arn" expected to be of type "string"';
        {
          master_user_arn: converted,
        }
      ),
      with_master_user_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"master_user_name" expected to be of type "string"';
        {
          master_user_name: converted,
        }
      ),
      with_master_user_password(value):: (
        local converted = value;
        assert std.isString(converted) : '"master_user_password" expected to be of type "string"';
        {
          master_user_password: converted,
        }
      ),
    },
    with_master_user_options(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        master_user_options: value,
      }
    ),
    with_master_user_options_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        master_user_options+: converted,
      }
    ),
  },
  auto_tune_options:: {
    local block = self,
    new(desired_state):: (
      {}
      + block.with_desired_state(desired_state)
    ),
    with_desired_state(value):: (
      local converted = value;
      assert std.isString(converted) : '"desired_state" expected to be of type "string"';
      {
        desired_state: converted,
      }
    ),
    with_rollback_on_disable(value):: (
      local converted = value;
      assert std.isString(converted) : '"rollback_on_disable" expected to be of type "string"';
      {
        rollback_on_disable: converted,
      }
    ),
    maintenance_schedule:: {
      local block = self,
      new(cron_expression_for_recurrence, start_at):: (
        {}
        + block.with_cron_expression_for_recurrence(cron_expression_for_recurrence)
        + block.with_start_at(start_at)
      ),
      with_cron_expression_for_recurrence(value):: (
        local converted = value;
        assert std.isString(converted) : '"cron_expression_for_recurrence" expected to be of type "string"';
        {
          cron_expression_for_recurrence: converted,
        }
      ),
      with_start_at(value):: (
        local converted = value;
        assert std.isString(converted) : '"start_at" expected to be of type "string"';
        {
          start_at: converted,
        }
      ),
      duration:: {
        local block = self,
        new(unit, value):: (
          {}
          + block.with_unit(unit)
          + block.with_value(value)
        ),
        with_unit(value):: (
          local converted = value;
          assert std.isString(converted) : '"unit" expected to be of type "string"';
          {
            unit: converted,
          }
        ),
        with_value(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"value" expected to be of type "number"';
          {
            value: converted,
          }
        ),
      },
      with_duration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          duration: value,
        }
      ),
      with_duration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          duration+: converted,
        }
      ),
    },
    with_maintenance_schedule(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        maintenance_schedule: value,
      }
    ),
    with_maintenance_schedule_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        maintenance_schedule+: converted,
      }
    ),
  },
  cluster_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_dedicated_master_count(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"dedicated_master_count" expected to be of type "number"';
      {
        dedicated_master_count: converted,
      }
    ),
    with_dedicated_master_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"dedicated_master_enabled" expected to be of type "bool"';
      {
        dedicated_master_enabled: converted,
      }
    ),
    with_dedicated_master_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"dedicated_master_type" expected to be of type "string"';
      {
        dedicated_master_type: converted,
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
    with_warm_count(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"warm_count" expected to be of type "number"';
      {
        warm_count: converted,
      }
    ),
    with_warm_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"warm_enabled" expected to be of type "bool"';
      {
        warm_enabled: converted,
      }
    ),
    with_warm_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"warm_type" expected to be of type "string"';
      {
        warm_type: converted,
      }
    ),
    with_zone_awareness_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"zone_awareness_enabled" expected to be of type "bool"';
      {
        zone_awareness_enabled: converted,
      }
    ),
    cold_storage_options:: {
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
    zone_awareness_config:: {
      local block = self,
      new():: (
        {}
      ),
      with_availability_zone_count(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"availability_zone_count" expected to be of type "number"';
        {
          availability_zone_count: converted,
        }
      ),
    },
    with_cold_storage_options(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cold_storage_options: value,
      }
    ),
    with_zone_awareness_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        zone_awareness_config: value,
      }
    ),
    with_cold_storage_options_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cold_storage_options+: converted,
      }
    ),
    with_zone_awareness_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        zone_awareness_config+: converted,
      }
    ),
  },
  cognito_options:: {
    local block = self,
    new(identity_pool_id, role_arn, user_pool_id):: (
      {}
      + block.with_identity_pool_id(identity_pool_id)
      + block.with_role_arn(role_arn)
      + block.with_user_pool_id(user_pool_id)
    ),
    with_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    with_identity_pool_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"identity_pool_id" expected to be of type "string"';
      {
        identity_pool_id: converted,
      }
    ),
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    with_user_pool_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"user_pool_id" expected to be of type "string"';
      {
        user_pool_id: converted,
      }
    ),
  },
  domain_endpoint_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_custom_endpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"custom_endpoint" expected to be of type "string"';
      {
        custom_endpoint: converted,
      }
    ),
    with_custom_endpoint_certificate_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"custom_endpoint_certificate_arn" expected to be of type "string"';
      {
        custom_endpoint_certificate_arn: converted,
      }
    ),
    with_custom_endpoint_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"custom_endpoint_enabled" expected to be of type "bool"';
      {
        custom_endpoint_enabled: converted,
      }
    ),
    with_enforce_https(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enforce_https" expected to be of type "bool"';
      {
        enforce_https: converted,
      }
    ),
    with_tls_security_policy(value):: (
      local converted = value;
      assert std.isString(converted) : '"tls_security_policy" expected to be of type "string"';
      {
        tls_security_policy: converted,
      }
    ),
  },
  ebs_options:: {
    local block = self,
    new(ebs_enabled):: (
      {}
      + block.with_ebs_enabled(ebs_enabled)
    ),
    with_ebs_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"ebs_enabled" expected to be of type "bool"';
      {
        ebs_enabled: converted,
      }
    ),
    with_iops(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"iops" expected to be of type "number"';
      {
        iops: converted,
      }
    ),
    with_throughput(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"throughput" expected to be of type "number"';
      {
        throughput: converted,
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
  encrypt_at_rest:: {
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
    with_kms_key_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
      {
        kms_key_id: converted,
      }
    ),
  },
  log_publishing_options:: {
    local block = self,
    new(cloudwatch_log_group_arn, log_type):: (
      {}
      + block.with_cloudwatch_log_group_arn(cloudwatch_log_group_arn)
      + block.with_log_type(log_type)
    ),
    with_cloudwatch_log_group_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudwatch_log_group_arn" expected to be of type "string"';
      {
        cloudwatch_log_group_arn: converted,
      }
    ),
    with_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    with_log_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"log_type" expected to be of type "string"';
      {
        log_type: converted,
      }
    ),
  },
  node_to_node_encryption:: {
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
  },
  snapshot_options:: {
    local block = self,
    new(automated_snapshot_start_hour):: (
      {}
      + block.with_automated_snapshot_start_hour(automated_snapshot_start_hour)
    ),
    with_automated_snapshot_start_hour(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"automated_snapshot_start_hour" expected to be of type "number"';
      {
        automated_snapshot_start_hour: converted,
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
  vpc_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_availability_zones(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"availability_zones" expected to be of type "set"';
      {
        availability_zones: converted,
      }
    ),
    with_availability_zones_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"availability_zones" expected to be of type "set"';
      {
        availability_zones+: converted,
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
  with_advanced_security_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      advanced_security_options: value,
    }
  ),
  with_auto_tune_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_tune_options: value,
    }
  ),
  with_cluster_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cluster_config: value,
    }
  ),
  with_cognito_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cognito_options: value,
    }
  ),
  with_domain_endpoint_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      domain_endpoint_options: value,
    }
  ),
  with_ebs_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ebs_options: value,
    }
  ),
  with_encrypt_at_rest(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encrypt_at_rest: value,
    }
  ),
  with_log_publishing_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_publishing_options: value,
    }
  ),
  with_node_to_node_encryption(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      node_to_node_encryption: value,
    }
  ),
  with_snapshot_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      snapshot_options: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_vpc_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_options: value,
    }
  ),
  with_advanced_security_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      advanced_security_options+: converted,
    }
  ),
  with_auto_tune_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_tune_options+: converted,
    }
  ),
  with_cluster_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cluster_config+: converted,
    }
  ),
  with_cognito_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cognito_options+: converted,
    }
  ),
  with_domain_endpoint_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      domain_endpoint_options+: converted,
    }
  ),
  with_ebs_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ebs_options+: converted,
    }
  ),
  with_encrypt_at_rest_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encrypt_at_rest+: converted,
    }
  ),
  with_log_publishing_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_publishing_options+: converted,
    }
  ),
  with_node_to_node_encryption_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      node_to_node_encryption+: converted,
    }
  ),
  with_snapshot_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      snapshot_options+: converted,
    }
  ),
  with_vpc_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_options+: converted,
    }
  ),
}
