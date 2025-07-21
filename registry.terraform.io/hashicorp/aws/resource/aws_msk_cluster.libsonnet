{
  local block = self,
  new(cluster_name, kafka_version, number_of_broker_nodes):: (
    {}
    + block.with_cluster_name(cluster_name)
    + block.with_kafka_version(kafka_version)
    + block.with_number_of_broker_nodes(number_of_broker_nodes)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_bootstrap_brokers(value):: (
    local converted = value;
    assert std.isString(converted) : '"bootstrap_brokers" expected to be of type "string"';
    {
      bootstrap_brokers: converted,
    }
  ),
  with_bootstrap_brokers_public_sasl_iam(value):: (
    local converted = value;
    assert std.isString(converted) : '"bootstrap_brokers_public_sasl_iam" expected to be of type "string"';
    {
      bootstrap_brokers_public_sasl_iam: converted,
    }
  ),
  with_bootstrap_brokers_public_sasl_scram(value):: (
    local converted = value;
    assert std.isString(converted) : '"bootstrap_brokers_public_sasl_scram" expected to be of type "string"';
    {
      bootstrap_brokers_public_sasl_scram: converted,
    }
  ),
  with_bootstrap_brokers_public_tls(value):: (
    local converted = value;
    assert std.isString(converted) : '"bootstrap_brokers_public_tls" expected to be of type "string"';
    {
      bootstrap_brokers_public_tls: converted,
    }
  ),
  with_bootstrap_brokers_sasl_iam(value):: (
    local converted = value;
    assert std.isString(converted) : '"bootstrap_brokers_sasl_iam" expected to be of type "string"';
    {
      bootstrap_brokers_sasl_iam: converted,
    }
  ),
  with_bootstrap_brokers_sasl_scram(value):: (
    local converted = value;
    assert std.isString(converted) : '"bootstrap_brokers_sasl_scram" expected to be of type "string"';
    {
      bootstrap_brokers_sasl_scram: converted,
    }
  ),
  with_bootstrap_brokers_tls(value):: (
    local converted = value;
    assert std.isString(converted) : '"bootstrap_brokers_tls" expected to be of type "string"';
    {
      bootstrap_brokers_tls: converted,
    }
  ),
  with_bootstrap_brokers_vpc_connectivity_sasl_iam(value):: (
    local converted = value;
    assert std.isString(converted) : '"bootstrap_brokers_vpc_connectivity_sasl_iam" expected to be of type "string"';
    {
      bootstrap_brokers_vpc_connectivity_sasl_iam: converted,
    }
  ),
  with_bootstrap_brokers_vpc_connectivity_sasl_scram(value):: (
    local converted = value;
    assert std.isString(converted) : '"bootstrap_brokers_vpc_connectivity_sasl_scram" expected to be of type "string"';
    {
      bootstrap_brokers_vpc_connectivity_sasl_scram: converted,
    }
  ),
  with_bootstrap_brokers_vpc_connectivity_tls(value):: (
    local converted = value;
    assert std.isString(converted) : '"bootstrap_brokers_vpc_connectivity_tls" expected to be of type "string"';
    {
      bootstrap_brokers_vpc_connectivity_tls: converted,
    }
  ),
  with_cluster_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_name" expected to be of type "string"';
    {
      cluster_name: converted,
    }
  ),
  with_cluster_uuid(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_uuid" expected to be of type "string"';
    {
      cluster_uuid: converted,
    }
  ),
  with_current_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"current_version" expected to be of type "string"';
    {
      current_version: converted,
    }
  ),
  with_enhanced_monitoring(value):: (
    local converted = value;
    assert std.isString(converted) : '"enhanced_monitoring" expected to be of type "string"';
    {
      enhanced_monitoring: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_kafka_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"kafka_version" expected to be of type "string"';
    {
      kafka_version: converted,
    }
  ),
  with_number_of_broker_nodes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"number_of_broker_nodes" expected to be of type "number"';
    {
      number_of_broker_nodes: converted,
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
  with_storage_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"storage_mode" expected to be of type "string"';
    {
      storage_mode: converted,
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
  with_zookeeper_connect_string(value):: (
    local converted = value;
    assert std.isString(converted) : '"zookeeper_connect_string" expected to be of type "string"';
    {
      zookeeper_connect_string: converted,
    }
  ),
  with_zookeeper_connect_string_tls(value):: (
    local converted = value;
    assert std.isString(converted) : '"zookeeper_connect_string_tls" expected to be of type "string"';
    {
      zookeeper_connect_string_tls: converted,
    }
  ),
  broker_node_group_info:: {
    local block = self,
    new(client_subnets, instance_type, security_groups):: (
      {}
      + block.with_client_subnets(client_subnets)
      + block.with_instance_type(instance_type)
      + block.with_security_groups(security_groups)
    ),
    with_az_distribution(value):: (
      local converted = value;
      assert std.isString(converted) : '"az_distribution" expected to be of type "string"';
      {
        az_distribution: converted,
      }
    ),
    with_client_subnets(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"client_subnets" expected to be of type "set"';
      {
        client_subnets: converted,
      }
    ),
    with_client_subnets_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"client_subnets" expected to be of type "set"';
      {
        client_subnets+: converted,
      }
    ),
    with_instance_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"instance_type" expected to be of type "string"';
      {
        instance_type: converted,
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
    connectivity_info:: {
      local block = self,
      new():: (
        {}
      ),
      public_access:: {
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
      vpc_connectivity:: {
        local block = self,
        new():: (
          {}
        ),
        client_authentication:: {
          local block = self,
          new():: (
            {}
          ),
          with_tls(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"tls" expected to be of type "bool"';
            {
              tls: converted,
            }
          ),
          sasl:: {
            local block = self,
            new():: (
              {}
            ),
            with_iam(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"iam" expected to be of type "bool"';
              {
                iam: converted,
              }
            ),
            with_scram(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"scram" expected to be of type "bool"';
              {
                scram: converted,
              }
            ),
          },
          with_sasl(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              sasl: value,
            }
          ),
          with_sasl_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              sasl+: converted,
            }
          ),
        },
        with_client_authentication(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            client_authentication: value,
          }
        ),
        with_client_authentication_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            client_authentication+: converted,
          }
        ),
      },
      with_public_access(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          public_access: value,
        }
      ),
      with_vpc_connectivity(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          vpc_connectivity: value,
        }
      ),
      with_public_access_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          public_access+: converted,
        }
      ),
      with_vpc_connectivity_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          vpc_connectivity+: converted,
        }
      ),
    },
    storage_info:: {
      local block = self,
      new():: (
        {}
      ),
      ebs_storage_info:: {
        local block = self,
        new():: (
          {}
        ),
        with_volume_size(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"volume_size" expected to be of type "number"';
          {
            volume_size: converted,
          }
        ),
        provisioned_throughput:: {
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
          with_volume_throughput(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"volume_throughput" expected to be of type "number"';
            {
              volume_throughput: converted,
            }
          ),
        },
        with_provisioned_throughput(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            provisioned_throughput: value,
          }
        ),
        with_provisioned_throughput_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            provisioned_throughput+: converted,
          }
        ),
      },
      with_ebs_storage_info(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          ebs_storage_info: value,
        }
      ),
      with_ebs_storage_info_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          ebs_storage_info+: converted,
        }
      ),
    },
    with_connectivity_info(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        connectivity_info: value,
      }
    ),
    with_storage_info(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        storage_info: value,
      }
    ),
    with_connectivity_info_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        connectivity_info+: converted,
      }
    ),
    with_storage_info_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        storage_info+: converted,
      }
    ),
  },
  client_authentication:: {
    local block = self,
    new():: (
      {}
    ),
    with_unauthenticated(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"unauthenticated" expected to be of type "bool"';
      {
        unauthenticated: converted,
      }
    ),
    sasl:: {
      local block = self,
      new():: (
        {}
      ),
      with_iam(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"iam" expected to be of type "bool"';
        {
          iam: converted,
        }
      ),
      with_scram(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"scram" expected to be of type "bool"';
        {
          scram: converted,
        }
      ),
    },
    tls:: {
      local block = self,
      new():: (
        {}
      ),
      with_certificate_authority_arns(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"certificate_authority_arns" expected to be of type "set"';
        {
          certificate_authority_arns: converted,
        }
      ),
      with_certificate_authority_arns_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"certificate_authority_arns" expected to be of type "set"';
        {
          certificate_authority_arns+: converted,
        }
      ),
    },
    with_sasl(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sasl: value,
      }
    ),
    with_tls(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        tls: value,
      }
    ),
    with_sasl_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sasl+: converted,
      }
    ),
    with_tls_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        tls+: converted,
      }
    ),
  },
  configuration_info:: {
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
  encryption_info:: {
    local block = self,
    new():: (
      {}
    ),
    with_encryption_at_rest_kms_key_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"encryption_at_rest_kms_key_arn" expected to be of type "string"';
      {
        encryption_at_rest_kms_key_arn: converted,
      }
    ),
    encryption_in_transit:: {
      local block = self,
      new():: (
        {}
      ),
      with_client_broker(value):: (
        local converted = value;
        assert std.isString(converted) : '"client_broker" expected to be of type "string"';
        {
          client_broker: converted,
        }
      ),
      with_in_cluster(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"in_cluster" expected to be of type "bool"';
        {
          in_cluster: converted,
        }
      ),
    },
    with_encryption_in_transit(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        encryption_in_transit: value,
      }
    ),
    with_encryption_in_transit_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        encryption_in_transit+: converted,
      }
    ),
  },
  logging_info:: {
    local block = self,
    new():: (
      {}
    ),
    broker_logs:: {
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
    with_broker_logs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        broker_logs: value,
      }
    ),
    with_broker_logs_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        broker_logs+: converted,
      }
    ),
  },
  open_monitoring:: {
    local block = self,
    new():: (
      {}
    ),
    prometheus:: {
      local block = self,
      new():: (
        {}
      ),
      jmx_exporter:: {
        local block = self,
        new(enabled_in_broker):: (
          {}
          + block.with_enabled_in_broker(enabled_in_broker)
        ),
        with_enabled_in_broker(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"enabled_in_broker" expected to be of type "bool"';
          {
            enabled_in_broker: converted,
          }
        ),
      },
      node_exporter:: {
        local block = self,
        new(enabled_in_broker):: (
          {}
          + block.with_enabled_in_broker(enabled_in_broker)
        ),
        with_enabled_in_broker(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"enabled_in_broker" expected to be of type "bool"';
          {
            enabled_in_broker: converted,
          }
        ),
      },
      with_jmx_exporter(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          jmx_exporter: value,
        }
      ),
      with_node_exporter(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          node_exporter: value,
        }
      ),
      with_jmx_exporter_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          jmx_exporter+: converted,
        }
      ),
      with_node_exporter_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          node_exporter+: converted,
        }
      ),
    },
    with_prometheus(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        prometheus: value,
      }
    ),
    with_prometheus_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        prometheus+: converted,
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
  with_broker_node_group_info(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      broker_node_group_info: value,
    }
  ),
  with_client_authentication(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      client_authentication: value,
    }
  ),
  with_configuration_info(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration_info: value,
    }
  ),
  with_encryption_info(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_info: value,
    }
  ),
  with_logging_info(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_info: value,
    }
  ),
  with_open_monitoring(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      open_monitoring: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_broker_node_group_info_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      broker_node_group_info+: converted,
    }
  ),
  with_client_authentication_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      client_authentication+: converted,
    }
  ),
  with_configuration_info_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration_info+: converted,
    }
  ),
  with_encryption_info_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_info+: converted,
    }
  ),
  with_logging_info_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_info+: converted,
    }
  ),
  with_open_monitoring_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      open_monitoring+: converted,
    }
  ),
}
