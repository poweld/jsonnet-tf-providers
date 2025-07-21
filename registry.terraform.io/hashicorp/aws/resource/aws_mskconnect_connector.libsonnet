{
  local block = self,
  new(connector_configuration, kafkaconnect_version, name, service_execution_role_arn):: (
    {}
    + block.with_connector_configuration(connector_configuration)
    + block.with_kafkaconnect_version(kafkaconnect_version)
    + block.with_name(name)
    + block.with_service_execution_role_arn(service_execution_role_arn)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_connector_configuration(value):: (
    local converted = value;
    assert std.isObject(converted) : '"connector_configuration" expected to be of type "map"';
    {
      connector_configuration: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_kafkaconnect_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"kafkaconnect_version" expected to be of type "string"';
    {
      kafkaconnect_version: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  with_service_execution_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_execution_role_arn" expected to be of type "string"';
    {
      service_execution_role_arn: converted,
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
  capacity:: {
    local block = self,
    new():: (
      {}
    ),
    autoscaling:: {
      local block = self,
      new(max_worker_count, min_worker_count):: (
        {}
        + block.with_max_worker_count(max_worker_count)
        + block.with_min_worker_count(min_worker_count)
      ),
      with_max_worker_count(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"max_worker_count" expected to be of type "number"';
        {
          max_worker_count: converted,
        }
      ),
      with_mcu_count(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"mcu_count" expected to be of type "number"';
        {
          mcu_count: converted,
        }
      ),
      with_min_worker_count(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"min_worker_count" expected to be of type "number"';
        {
          min_worker_count: converted,
        }
      ),
      scale_in_policy:: {
        local block = self,
        new():: (
          {}
        ),
        with_cpu_utilization_percentage(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"cpu_utilization_percentage" expected to be of type "number"';
          {
            cpu_utilization_percentage: converted,
          }
        ),
      },
      scale_out_policy:: {
        local block = self,
        new():: (
          {}
        ),
        with_cpu_utilization_percentage(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"cpu_utilization_percentage" expected to be of type "number"';
          {
            cpu_utilization_percentage: converted,
          }
        ),
      },
      with_scale_in_policy(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          scale_in_policy: value,
        }
      ),
      with_scale_out_policy(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          scale_out_policy: value,
        }
      ),
      with_scale_in_policy_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          scale_in_policy+: converted,
        }
      ),
      with_scale_out_policy_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          scale_out_policy+: converted,
        }
      ),
    },
    provisioned_capacity:: {
      local block = self,
      new(worker_count):: (
        {}
        + block.with_worker_count(worker_count)
      ),
      with_mcu_count(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"mcu_count" expected to be of type "number"';
        {
          mcu_count: converted,
        }
      ),
      with_worker_count(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"worker_count" expected to be of type "number"';
        {
          worker_count: converted,
        }
      ),
    },
    with_autoscaling(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        autoscaling: value,
      }
    ),
    with_provisioned_capacity(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        provisioned_capacity: value,
      }
    ),
    with_autoscaling_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        autoscaling+: converted,
      }
    ),
    with_provisioned_capacity_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        provisioned_capacity+: converted,
      }
    ),
  },
  kafka_cluster:: {
    local block = self,
    new():: (
      {}
    ),
    apache_kafka_cluster:: {
      local block = self,
      new(bootstrap_servers):: (
        {}
        + block.with_bootstrap_servers(bootstrap_servers)
      ),
      with_bootstrap_servers(value):: (
        local converted = value;
        assert std.isString(converted) : '"bootstrap_servers" expected to be of type "string"';
        {
          bootstrap_servers: converted,
        }
      ),
      vpc:: {
        local block = self,
        new(security_groups, subnets):: (
          {}
          + block.with_security_groups(security_groups)
          + block.with_subnets(subnets)
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
      with_vpc(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          vpc: value,
        }
      ),
      with_vpc_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          vpc+: converted,
        }
      ),
    },
    with_apache_kafka_cluster(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        apache_kafka_cluster: value,
      }
    ),
    with_apache_kafka_cluster_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        apache_kafka_cluster+: converted,
      }
    ),
  },
  kafka_cluster_client_authentication:: {
    local block = self,
    new():: (
      {}
    ),
    with_authentication_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"authentication_type" expected to be of type "string"';
      {
        authentication_type: converted,
      }
    ),
  },
  kafka_cluster_encryption_in_transit:: {
    local block = self,
    new():: (
      {}
    ),
    with_encryption_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"encryption_type" expected to be of type "string"';
      {
        encryption_type: converted,
      }
    ),
  },
  log_delivery:: {
    local block = self,
    new():: (
      {}
    ),
    worker_log_delivery:: {
      local block = self,
      new():: (
        {}
      ),
      cloudwatch_logs:: {
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
        with_log_group(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_group" expected to be of type "string"';
          {
            log_group: converted,
          }
        ),
      },
      firehose:: {
        local block = self,
        new(enabled):: (
          {}
          + block.with_enabled(enabled)
        ),
        with_delivery_stream(value):: (
          local converted = value;
          assert std.isString(converted) : '"delivery_stream" expected to be of type "string"';
          {
            delivery_stream: converted,
          }
        ),
        with_enabled(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
          {
            enabled: converted,
          }
        ),
      },
      s3:: {
        local block = self,
        new(enabled):: (
          {}
          + block.with_enabled(enabled)
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
      with_cloudwatch_logs(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logs: value,
        }
      ),
      with_firehose(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          firehose: value,
        }
      ),
      with_s3(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3: value,
        }
      ),
      with_cloudwatch_logs_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logs+: converted,
        }
      ),
      with_firehose_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          firehose+: converted,
        }
      ),
      with_s3_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3+: converted,
        }
      ),
    },
    with_worker_log_delivery(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        worker_log_delivery: value,
      }
    ),
    with_worker_log_delivery_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        worker_log_delivery+: converted,
      }
    ),
  },
  plugin:: {
    local block = self,
    new():: (
      {}
    ),
    custom_plugin:: {
      local block = self,
      new(arn, revision):: (
        {}
        + block.with_arn(arn)
        + block.with_revision(revision)
      ),
      with_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"arn" expected to be of type "string"';
        {
          arn: converted,
        }
      ),
      with_revision(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"revision" expected to be of type "number"';
        {
          revision: converted,
        }
      ),
    },
    with_custom_plugin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_plugin: value,
      }
    ),
    with_custom_plugin_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_plugin+: converted,
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
  worker_configuration:: {
    local block = self,
    new(arn, revision):: (
      {}
      + block.with_arn(arn)
      + block.with_revision(revision)
    ),
    with_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"arn" expected to be of type "string"';
      {
        arn: converted,
      }
    ),
    with_revision(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"revision" expected to be of type "number"';
      {
        revision: converted,
      }
    ),
  },
  with_capacity(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capacity: value,
    }
  ),
  with_kafka_cluster(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kafka_cluster: value,
    }
  ),
  with_kafka_cluster_client_authentication(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kafka_cluster_client_authentication: value,
    }
  ),
  with_kafka_cluster_encryption_in_transit(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kafka_cluster_encryption_in_transit: value,
    }
  ),
  with_log_delivery(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_delivery: value,
    }
  ),
  with_plugin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      plugin: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_worker_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      worker_configuration: value,
    }
  ),
  with_capacity_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capacity+: converted,
    }
  ),
  with_kafka_cluster_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kafka_cluster+: converted,
    }
  ),
  with_kafka_cluster_client_authentication_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kafka_cluster_client_authentication+: converted,
    }
  ),
  with_kafka_cluster_encryption_in_transit_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kafka_cluster_encryption_in_transit+: converted,
    }
  ),
  with_log_delivery_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_delivery+: converted,
    }
  ),
  with_plugin_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      plugin+: converted,
    }
  ),
  with_worker_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      worker_configuration+: converted,
    }
  ),
}
