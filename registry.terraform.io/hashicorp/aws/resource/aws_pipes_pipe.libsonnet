{
  local block = self,
  new(role_arn, source, target):: (
    {}
    + block.with_role_arn(role_arn)
    + block.with_source(source)
    + block.with_target(target)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_desired_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"desired_state" expected to be of type "string"';
    {
      desired_state: converted,
    }
  ),
  with_enrichment(value):: (
    local converted = value;
    assert std.isString(converted) : '"enrichment" expected to be of type "string"';
    {
      enrichment: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_kms_key_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_identifier" expected to be of type "string"';
    {
      kms_key_identifier: converted,
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
  with_source(value):: (
    local converted = value;
    assert std.isString(converted) : '"source" expected to be of type "string"';
    {
      source: converted,
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
  with_target(value):: (
    local converted = value;
    assert std.isString(converted) : '"target" expected to be of type "string"';
    {
      target: converted,
    }
  ),
  enrichment_parameters:: {
    local block = self,
    new():: (
      {}
    ),
    with_input_template(value):: (
      local converted = value;
      assert std.isString(converted) : '"input_template" expected to be of type "string"';
      {
        input_template: converted,
      }
    ),
    http_parameters:: {
      local block = self,
      new():: (
        {}
      ),
      with_header_parameters(value):: (
        local converted = value;
        assert std.isObject(converted) : '"header_parameters" expected to be of type "map"';
        {
          header_parameters: converted,
        }
      ),
      with_path_parameter_values(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"path_parameter_values" expected to be of type "list"';
        {
          path_parameter_values: converted,
        }
      ),
      with_path_parameter_values_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"path_parameter_values" expected to be of type "list"';
        {
          path_parameter_values+: converted,
        }
      ),
      with_query_string_parameters(value):: (
        local converted = value;
        assert std.isObject(converted) : '"query_string_parameters" expected to be of type "map"';
        {
          query_string_parameters: converted,
        }
      ),
    },
    with_http_parameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http_parameters: value,
      }
    ),
    with_http_parameters_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http_parameters+: converted,
      }
    ),
  },
  log_configuration:: {
    local block = self,
    new(level):: (
      {}
      + block.with_level(level)
    ),
    with_include_execution_data(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"include_execution_data" expected to be of type "set"';
      {
        include_execution_data: converted,
      }
    ),
    with_include_execution_data_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"include_execution_data" expected to be of type "set"';
      {
        include_execution_data+: converted,
      }
    ),
    with_level(value):: (
      local converted = value;
      assert std.isString(converted) : '"level" expected to be of type "string"';
      {
        level: converted,
      }
    ),
    cloudwatch_logs_log_destination:: {
      local block = self,
      new(log_group_arn):: (
        {}
        + block.with_log_group_arn(log_group_arn)
      ),
      with_log_group_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_group_arn" expected to be of type "string"';
        {
          log_group_arn: converted,
        }
      ),
    },
    firehose_log_destination:: {
      local block = self,
      new(delivery_stream_arn):: (
        {}
        + block.with_delivery_stream_arn(delivery_stream_arn)
      ),
      with_delivery_stream_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"delivery_stream_arn" expected to be of type "string"';
        {
          delivery_stream_arn: converted,
        }
      ),
    },
    s3_log_destination:: {
      local block = self,
      new(bucket_name, bucket_owner):: (
        {}
        + block.with_bucket_name(bucket_name)
        + block.with_bucket_owner(bucket_owner)
      ),
      with_bucket_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
        {
          bucket_name: converted,
        }
      ),
      with_bucket_owner(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_owner" expected to be of type "string"';
        {
          bucket_owner: converted,
        }
      ),
      with_output_format(value):: (
        local converted = value;
        assert std.isString(converted) : '"output_format" expected to be of type "string"';
        {
          output_format: converted,
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
    with_cloudwatch_logs_log_destination(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logs_log_destination: value,
      }
    ),
    with_firehose_log_destination(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        firehose_log_destination: value,
      }
    ),
    with_s3_log_destination(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_log_destination: value,
      }
    ),
    with_cloudwatch_logs_log_destination_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logs_log_destination+: converted,
      }
    ),
    with_firehose_log_destination_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        firehose_log_destination+: converted,
      }
    ),
    with_s3_log_destination_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_log_destination+: converted,
      }
    ),
  },
  source_parameters:: {
    local block = self,
    new():: (
      {}
    ),
    activemq_broker_parameters:: {
      local block = self,
      new(queue_name):: (
        {}
        + block.with_queue_name(queue_name)
      ),
      with_batch_size(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"batch_size" expected to be of type "number"';
        {
          batch_size: converted,
        }
      ),
      with_maximum_batching_window_in_seconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"maximum_batching_window_in_seconds" expected to be of type "number"';
        {
          maximum_batching_window_in_seconds: converted,
        }
      ),
      with_queue_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"queue_name" expected to be of type "string"';
        {
          queue_name: converted,
        }
      ),
      credentials:: {
        local block = self,
        new(basic_auth):: (
          {}
          + block.with_basic_auth(basic_auth)
        ),
        with_basic_auth(value):: (
          local converted = value;
          assert std.isString(converted) : '"basic_auth" expected to be of type "string"';
          {
            basic_auth: converted,
          }
        ),
      },
      with_credentials(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          credentials: value,
        }
      ),
      with_credentials_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          credentials+: converted,
        }
      ),
    },
    dynamodb_stream_parameters:: {
      local block = self,
      new(starting_position):: (
        {}
        + block.with_starting_position(starting_position)
      ),
      with_batch_size(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"batch_size" expected to be of type "number"';
        {
          batch_size: converted,
        }
      ),
      with_maximum_batching_window_in_seconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"maximum_batching_window_in_seconds" expected to be of type "number"';
        {
          maximum_batching_window_in_seconds: converted,
        }
      ),
      with_maximum_record_age_in_seconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"maximum_record_age_in_seconds" expected to be of type "number"';
        {
          maximum_record_age_in_seconds: converted,
        }
      ),
      with_maximum_retry_attempts(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"maximum_retry_attempts" expected to be of type "number"';
        {
          maximum_retry_attempts: converted,
        }
      ),
      with_on_partial_batch_item_failure(value):: (
        local converted = value;
        assert std.isString(converted) : '"on_partial_batch_item_failure" expected to be of type "string"';
        {
          on_partial_batch_item_failure: converted,
        }
      ),
      with_parallelization_factor(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"parallelization_factor" expected to be of type "number"';
        {
          parallelization_factor: converted,
        }
      ),
      with_starting_position(value):: (
        local converted = value;
        assert std.isString(converted) : '"starting_position" expected to be of type "string"';
        {
          starting_position: converted,
        }
      ),
      dead_letter_config:: {
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
      },
      with_dead_letter_config(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dead_letter_config: value,
        }
      ),
      with_dead_letter_config_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dead_letter_config+: converted,
        }
      ),
    },
    filter_criteria:: {
      local block = self,
      new():: (
        {}
      ),
      filter:: {
        local block = self,
        new(pattern):: (
          {}
          + block.with_pattern(pattern)
        ),
        with_pattern(value):: (
          local converted = value;
          assert std.isString(converted) : '"pattern" expected to be of type "string"';
          {
            pattern: converted,
          }
        ),
      },
      with_filter(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          filter: value,
        }
      ),
      with_filter_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          filter+: converted,
        }
      ),
    },
    kinesis_stream_parameters:: {
      local block = self,
      new(starting_position):: (
        {}
        + block.with_starting_position(starting_position)
      ),
      with_batch_size(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"batch_size" expected to be of type "number"';
        {
          batch_size: converted,
        }
      ),
      with_maximum_batching_window_in_seconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"maximum_batching_window_in_seconds" expected to be of type "number"';
        {
          maximum_batching_window_in_seconds: converted,
        }
      ),
      with_maximum_record_age_in_seconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"maximum_record_age_in_seconds" expected to be of type "number"';
        {
          maximum_record_age_in_seconds: converted,
        }
      ),
      with_maximum_retry_attempts(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"maximum_retry_attempts" expected to be of type "number"';
        {
          maximum_retry_attempts: converted,
        }
      ),
      with_on_partial_batch_item_failure(value):: (
        local converted = value;
        assert std.isString(converted) : '"on_partial_batch_item_failure" expected to be of type "string"';
        {
          on_partial_batch_item_failure: converted,
        }
      ),
      with_parallelization_factor(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"parallelization_factor" expected to be of type "number"';
        {
          parallelization_factor: converted,
        }
      ),
      with_starting_position(value):: (
        local converted = value;
        assert std.isString(converted) : '"starting_position" expected to be of type "string"';
        {
          starting_position: converted,
        }
      ),
      with_starting_position_timestamp(value):: (
        local converted = value;
        assert std.isString(converted) : '"starting_position_timestamp" expected to be of type "string"';
        {
          starting_position_timestamp: converted,
        }
      ),
      dead_letter_config:: {
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
      },
      with_dead_letter_config(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dead_letter_config: value,
        }
      ),
      with_dead_letter_config_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dead_letter_config+: converted,
        }
      ),
    },
    managed_streaming_kafka_parameters:: {
      local block = self,
      new(topic_name):: (
        {}
        + block.with_topic_name(topic_name)
      ),
      with_batch_size(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"batch_size" expected to be of type "number"';
        {
          batch_size: converted,
        }
      ),
      with_consumer_group_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"consumer_group_id" expected to be of type "string"';
        {
          consumer_group_id: converted,
        }
      ),
      with_maximum_batching_window_in_seconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"maximum_batching_window_in_seconds" expected to be of type "number"';
        {
          maximum_batching_window_in_seconds: converted,
        }
      ),
      with_starting_position(value):: (
        local converted = value;
        assert std.isString(converted) : '"starting_position" expected to be of type "string"';
        {
          starting_position: converted,
        }
      ),
      with_topic_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"topic_name" expected to be of type "string"';
        {
          topic_name: converted,
        }
      ),
      credentials:: {
        local block = self,
        new():: (
          {}
        ),
        with_client_certificate_tls_auth(value):: (
          local converted = value;
          assert std.isString(converted) : '"client_certificate_tls_auth" expected to be of type "string"';
          {
            client_certificate_tls_auth: converted,
          }
        ),
        with_sasl_scram_512_auth(value):: (
          local converted = value;
          assert std.isString(converted) : '"sasl_scram_512_auth" expected to be of type "string"';
          {
            sasl_scram_512_auth: converted,
          }
        ),
      },
      with_credentials(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          credentials: value,
        }
      ),
      with_credentials_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          credentials+: converted,
        }
      ),
    },
    rabbitmq_broker_parameters:: {
      local block = self,
      new(queue_name):: (
        {}
        + block.with_queue_name(queue_name)
      ),
      with_batch_size(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"batch_size" expected to be of type "number"';
        {
          batch_size: converted,
        }
      ),
      with_maximum_batching_window_in_seconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"maximum_batching_window_in_seconds" expected to be of type "number"';
        {
          maximum_batching_window_in_seconds: converted,
        }
      ),
      with_queue_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"queue_name" expected to be of type "string"';
        {
          queue_name: converted,
        }
      ),
      with_virtual_host(value):: (
        local converted = value;
        assert std.isString(converted) : '"virtual_host" expected to be of type "string"';
        {
          virtual_host: converted,
        }
      ),
      credentials:: {
        local block = self,
        new(basic_auth):: (
          {}
          + block.with_basic_auth(basic_auth)
        ),
        with_basic_auth(value):: (
          local converted = value;
          assert std.isString(converted) : '"basic_auth" expected to be of type "string"';
          {
            basic_auth: converted,
          }
        ),
      },
      with_credentials(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          credentials: value,
        }
      ),
      with_credentials_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          credentials+: converted,
        }
      ),
    },
    self_managed_kafka_parameters:: {
      local block = self,
      new(topic_name):: (
        {}
        + block.with_topic_name(topic_name)
      ),
      with_additional_bootstrap_servers(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"additional_bootstrap_servers" expected to be of type "set"';
        {
          additional_bootstrap_servers: converted,
        }
      ),
      with_additional_bootstrap_servers_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"additional_bootstrap_servers" expected to be of type "set"';
        {
          additional_bootstrap_servers+: converted,
        }
      ),
      with_batch_size(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"batch_size" expected to be of type "number"';
        {
          batch_size: converted,
        }
      ),
      with_consumer_group_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"consumer_group_id" expected to be of type "string"';
        {
          consumer_group_id: converted,
        }
      ),
      with_maximum_batching_window_in_seconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"maximum_batching_window_in_seconds" expected to be of type "number"';
        {
          maximum_batching_window_in_seconds: converted,
        }
      ),
      with_server_root_ca_certificate(value):: (
        local converted = value;
        assert std.isString(converted) : '"server_root_ca_certificate" expected to be of type "string"';
        {
          server_root_ca_certificate: converted,
        }
      ),
      with_starting_position(value):: (
        local converted = value;
        assert std.isString(converted) : '"starting_position" expected to be of type "string"';
        {
          starting_position: converted,
        }
      ),
      with_topic_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"topic_name" expected to be of type "string"';
        {
          topic_name: converted,
        }
      ),
      credentials:: {
        local block = self,
        new():: (
          {}
        ),
        with_basic_auth(value):: (
          local converted = value;
          assert std.isString(converted) : '"basic_auth" expected to be of type "string"';
          {
            basic_auth: converted,
          }
        ),
        with_client_certificate_tls_auth(value):: (
          local converted = value;
          assert std.isString(converted) : '"client_certificate_tls_auth" expected to be of type "string"';
          {
            client_certificate_tls_auth: converted,
          }
        ),
        with_sasl_scram_256_auth(value):: (
          local converted = value;
          assert std.isString(converted) : '"sasl_scram_256_auth" expected to be of type "string"';
          {
            sasl_scram_256_auth: converted,
          }
        ),
        with_sasl_scram_512_auth(value):: (
          local converted = value;
          assert std.isString(converted) : '"sasl_scram_512_auth" expected to be of type "string"';
          {
            sasl_scram_512_auth: converted,
          }
        ),
      },
      vpc:: {
        local block = self,
        new():: (
          {}
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
      with_credentials(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          credentials: value,
        }
      ),
      with_vpc(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          vpc: value,
        }
      ),
      with_credentials_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          credentials+: converted,
        }
      ),
      with_vpc_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          vpc+: converted,
        }
      ),
    },
    sqs_queue_parameters:: {
      local block = self,
      new():: (
        {}
      ),
      with_batch_size(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"batch_size" expected to be of type "number"';
        {
          batch_size: converted,
        }
      ),
      with_maximum_batching_window_in_seconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"maximum_batching_window_in_seconds" expected to be of type "number"';
        {
          maximum_batching_window_in_seconds: converted,
        }
      ),
    },
    with_activemq_broker_parameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        activemq_broker_parameters: value,
      }
    ),
    with_dynamodb_stream_parameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dynamodb_stream_parameters: value,
      }
    ),
    with_filter_criteria(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filter_criteria: value,
      }
    ),
    with_kinesis_stream_parameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_stream_parameters: value,
      }
    ),
    with_managed_streaming_kafka_parameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        managed_streaming_kafka_parameters: value,
      }
    ),
    with_rabbitmq_broker_parameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rabbitmq_broker_parameters: value,
      }
    ),
    with_self_managed_kafka_parameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        self_managed_kafka_parameters: value,
      }
    ),
    with_sqs_queue_parameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sqs_queue_parameters: value,
      }
    ),
    with_activemq_broker_parameters_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        activemq_broker_parameters+: converted,
      }
    ),
    with_dynamodb_stream_parameters_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dynamodb_stream_parameters+: converted,
      }
    ),
    with_filter_criteria_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filter_criteria+: converted,
      }
    ),
    with_kinesis_stream_parameters_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_stream_parameters+: converted,
      }
    ),
    with_managed_streaming_kafka_parameters_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        managed_streaming_kafka_parameters+: converted,
      }
    ),
    with_rabbitmq_broker_parameters_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rabbitmq_broker_parameters+: converted,
      }
    ),
    with_self_managed_kafka_parameters_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        self_managed_kafka_parameters+: converted,
      }
    ),
    with_sqs_queue_parameters_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sqs_queue_parameters+: converted,
      }
    ),
  },
  target_parameters:: {
    local block = self,
    new():: (
      {}
    ),
    with_input_template(value):: (
      local converted = value;
      assert std.isString(converted) : '"input_template" expected to be of type "string"';
      {
        input_template: converted,
      }
    ),
    batch_job_parameters:: {
      local block = self,
      new(job_definition, job_name):: (
        {}
        + block.with_job_definition(job_definition)
        + block.with_job_name(job_name)
      ),
      with_job_definition(value):: (
        local converted = value;
        assert std.isString(converted) : '"job_definition" expected to be of type "string"';
        {
          job_definition: converted,
        }
      ),
      with_job_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"job_name" expected to be of type "string"';
        {
          job_name: converted,
        }
      ),
      with_parameters(value):: (
        local converted = value;
        assert std.isObject(converted) : '"parameters" expected to be of type "map"';
        {
          parameters: converted,
        }
      ),
      array_properties:: {
        local block = self,
        new():: (
          {}
        ),
        with_size(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"size" expected to be of type "number"';
          {
            size: converted,
          }
        ),
      },
      container_overrides:: {
        local block = self,
        new():: (
          {}
        ),
        with_command(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"command" expected to be of type "list"';
          {
            command: converted,
          }
        ),
        with_command_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"command" expected to be of type "list"';
          {
            command+: converted,
          }
        ),
        with_instance_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"instance_type" expected to be of type "string"';
          {
            instance_type: converted,
          }
        ),
        environment:: {
          local block = self,
          new():: (
            {}
          ),
          with_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"name" expected to be of type "string"';
            {
              name: converted,
            }
          ),
          with_value(value):: (
            local converted = value;
            assert std.isString(converted) : '"value" expected to be of type "string"';
            {
              value: converted,
            }
          ),
        },
        resource_requirement:: {
          local block = self,
          new(type, value):: (
            {}
            + block.with_type(type)
            + block.with_value(value)
          ),
          with_type(value):: (
            local converted = value;
            assert std.isString(converted) : '"type" expected to be of type "string"';
            {
              type: converted,
            }
          ),
          with_value(value):: (
            local converted = value;
            assert std.isString(converted) : '"value" expected to be of type "string"';
            {
              value: converted,
            }
          ),
        },
        with_environment(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            environment: value,
          }
        ),
        with_resource_requirement(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            resource_requirement: value,
          }
        ),
        with_environment_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            environment+: converted,
          }
        ),
        with_resource_requirement_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            resource_requirement+: converted,
          }
        ),
      },
      depends_on:: {
        local block = self,
        new():: (
          {}
        ),
        with_job_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"job_id" expected to be of type "string"';
          {
            job_id: converted,
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
      retry_strategy:: {
        local block = self,
        new():: (
          {}
        ),
        with_attempts(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"attempts" expected to be of type "number"';
          {
            attempts: converted,
          }
        ),
      },
      with_array_properties(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          array_properties: value,
        }
      ),
      with_container_overrides(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          container_overrides: value,
        }
      ),
      with_depends_on(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          depends_on: value,
        }
      ),
      with_retry_strategy(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          retry_strategy: value,
        }
      ),
      with_array_properties_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          array_properties+: converted,
        }
      ),
      with_container_overrides_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          container_overrides+: converted,
        }
      ),
      with_depends_on_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          depends_on+: converted,
        }
      ),
      with_retry_strategy_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          retry_strategy+: converted,
        }
      ),
    },
    cloudwatch_logs_parameters:: {
      local block = self,
      new():: (
        {}
      ),
      with_log_stream_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
        {
          log_stream_name: converted,
        }
      ),
      with_timestamp(value):: (
        local converted = value;
        assert std.isString(converted) : '"timestamp" expected to be of type "string"';
        {
          timestamp: converted,
        }
      ),
    },
    ecs_task_parameters:: {
      local block = self,
      new(task_definition_arn):: (
        {}
        + block.with_task_definition_arn(task_definition_arn)
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
      with_group(value):: (
        local converted = value;
        assert std.isString(converted) : '"group" expected to be of type "string"';
        {
          group: converted,
        }
      ),
      with_launch_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"launch_type" expected to be of type "string"';
        {
          launch_type: converted,
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
      with_reference_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"reference_id" expected to be of type "string"';
        {
          reference_id: converted,
        }
      ),
      with_tags(value):: (
        local converted = value;
        assert std.isObject(converted) : '"tags" expected to be of type "map"';
        {
          tags: converted,
        }
      ),
      with_task_count(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"task_count" expected to be of type "number"';
        {
          task_count: converted,
        }
      ),
      with_task_definition_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"task_definition_arn" expected to be of type "string"';
        {
          task_definition_arn: converted,
        }
      ),
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
      network_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        aws_vpc_configuration:: {
          local block = self,
          new():: (
            {}
          ),
          with_assign_public_ip(value):: (
            local converted = value;
            assert std.isString(converted) : '"assign_public_ip" expected to be of type "string"';
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
        with_aws_vpc_configuration(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            aws_vpc_configuration: value,
          }
        ),
        with_aws_vpc_configuration_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            aws_vpc_configuration+: converted,
          }
        ),
      },
      overrides:: {
        local block = self,
        new():: (
          {}
        ),
        with_cpu(value):: (
          local converted = value;
          assert std.isString(converted) : '"cpu" expected to be of type "string"';
          {
            cpu: converted,
          }
        ),
        with_execution_role_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"execution_role_arn" expected to be of type "string"';
          {
            execution_role_arn: converted,
          }
        ),
        with_memory(value):: (
          local converted = value;
          assert std.isString(converted) : '"memory" expected to be of type "string"';
          {
            memory: converted,
          }
        ),
        with_task_role_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"task_role_arn" expected to be of type "string"';
          {
            task_role_arn: converted,
          }
        ),
        container_override:: {
          local block = self,
          new():: (
            {}
          ),
          with_command(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"command" expected to be of type "list"';
            {
              command: converted,
            }
          ),
          with_command_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"command" expected to be of type "list"';
            {
              command+: converted,
            }
          ),
          with_cpu(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"cpu" expected to be of type "number"';
            {
              cpu: converted,
            }
          ),
          with_memory(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"memory" expected to be of type "number"';
            {
              memory: converted,
            }
          ),
          with_memory_reservation(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"memory_reservation" expected to be of type "number"';
            {
              memory_reservation: converted,
            }
          ),
          with_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"name" expected to be of type "string"';
            {
              name: converted,
            }
          ),
          environment:: {
            local block = self,
            new():: (
              {}
            ),
            with_name(value):: (
              local converted = value;
              assert std.isString(converted) : '"name" expected to be of type "string"';
              {
                name: converted,
              }
            ),
            with_value(value):: (
              local converted = value;
              assert std.isString(converted) : '"value" expected to be of type "string"';
              {
                value: converted,
              }
            ),
          },
          environment_file:: {
            local block = self,
            new(type, value):: (
              {}
              + block.with_type(type)
              + block.with_value(value)
            ),
            with_type(value):: (
              local converted = value;
              assert std.isString(converted) : '"type" expected to be of type "string"';
              {
                type: converted,
              }
            ),
            with_value(value):: (
              local converted = value;
              assert std.isString(converted) : '"value" expected to be of type "string"';
              {
                value: converted,
              }
            ),
          },
          resource_requirement:: {
            local block = self,
            new(type, value):: (
              {}
              + block.with_type(type)
              + block.with_value(value)
            ),
            with_type(value):: (
              local converted = value;
              assert std.isString(converted) : '"type" expected to be of type "string"';
              {
                type: converted,
              }
            ),
            with_value(value):: (
              local converted = value;
              assert std.isString(converted) : '"value" expected to be of type "string"';
              {
                value: converted,
              }
            ),
          },
          with_environment(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              environment: value,
            }
          ),
          with_environment_file(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              environment_file: value,
            }
          ),
          with_resource_requirement(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              resource_requirement: value,
            }
          ),
          with_environment_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              environment+: converted,
            }
          ),
          with_environment_file_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              environment_file+: converted,
            }
          ),
          with_resource_requirement_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              resource_requirement+: converted,
            }
          ),
        },
        ephemeral_storage:: {
          local block = self,
          new(size_in_gib):: (
            {}
            + block.with_size_in_gib(size_in_gib)
          ),
          with_size_in_gib(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"size_in_gib" expected to be of type "number"';
            {
              size_in_gib: converted,
            }
          ),
        },
        inference_accelerator_override:: {
          local block = self,
          new():: (
            {}
          ),
          with_device_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"device_name" expected to be of type "string"';
            {
              device_name: converted,
            }
          ),
          with_device_type(value):: (
            local converted = value;
            assert std.isString(converted) : '"device_type" expected to be of type "string"';
            {
              device_type: converted,
            }
          ),
        },
        with_container_override(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            container_override: value,
          }
        ),
        with_ephemeral_storage(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            ephemeral_storage: value,
          }
        ),
        with_inference_accelerator_override(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            inference_accelerator_override: value,
          }
        ),
        with_container_override_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            container_override+: converted,
          }
        ),
        with_ephemeral_storage_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            ephemeral_storage+: converted,
          }
        ),
        with_inference_accelerator_override_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            inference_accelerator_override+: converted,
          }
        ),
      },
      placement_constraint:: {
        local block = self,
        new():: (
          {}
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
      placement_strategy:: {
        local block = self,
        new():: (
          {}
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
      with_capacity_provider_strategy(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          capacity_provider_strategy: value,
        }
      ),
      with_network_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          network_configuration: value,
        }
      ),
      with_overrides(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          overrides: value,
        }
      ),
      with_placement_constraint(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          placement_constraint: value,
        }
      ),
      with_placement_strategy(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          placement_strategy: value,
        }
      ),
      with_capacity_provider_strategy_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          capacity_provider_strategy+: converted,
        }
      ),
      with_network_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          network_configuration+: converted,
        }
      ),
      with_overrides_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          overrides+: converted,
        }
      ),
      with_placement_constraint_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          placement_constraint+: converted,
        }
      ),
      with_placement_strategy_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          placement_strategy+: converted,
        }
      ),
    },
    eventbridge_event_bus_parameters:: {
      local block = self,
      new():: (
        {}
      ),
      with_detail_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"detail_type" expected to be of type "string"';
        {
          detail_type: converted,
        }
      ),
      with_endpoint_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"endpoint_id" expected to be of type "string"';
        {
          endpoint_id: converted,
        }
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
      with_source(value):: (
        local converted = value;
        assert std.isString(converted) : '"source" expected to be of type "string"';
        {
          source: converted,
        }
      ),
      with_time(value):: (
        local converted = value;
        assert std.isString(converted) : '"time" expected to be of type "string"';
        {
          time: converted,
        }
      ),
    },
    http_parameters:: {
      local block = self,
      new():: (
        {}
      ),
      with_header_parameters(value):: (
        local converted = value;
        assert std.isObject(converted) : '"header_parameters" expected to be of type "map"';
        {
          header_parameters: converted,
        }
      ),
      with_path_parameter_values(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"path_parameter_values" expected to be of type "list"';
        {
          path_parameter_values: converted,
        }
      ),
      with_path_parameter_values_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"path_parameter_values" expected to be of type "list"';
        {
          path_parameter_values+: converted,
        }
      ),
      with_query_string_parameters(value):: (
        local converted = value;
        assert std.isObject(converted) : '"query_string_parameters" expected to be of type "map"';
        {
          query_string_parameters: converted,
        }
      ),
    },
    kinesis_stream_parameters:: {
      local block = self,
      new(partition_key):: (
        {}
        + block.with_partition_key(partition_key)
      ),
      with_partition_key(value):: (
        local converted = value;
        assert std.isString(converted) : '"partition_key" expected to be of type "string"';
        {
          partition_key: converted,
        }
      ),
    },
    lambda_function_parameters:: {
      local block = self,
      new(invocation_type):: (
        {}
        + block.with_invocation_type(invocation_type)
      ),
      with_invocation_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"invocation_type" expected to be of type "string"';
        {
          invocation_type: converted,
        }
      ),
    },
    redshift_data_parameters:: {
      local block = self,
      new(database, sqls):: (
        {}
        + block.with_database(database)
        + block.with_sqls(sqls)
      ),
      with_database(value):: (
        local converted = value;
        assert std.isString(converted) : '"database" expected to be of type "string"';
        {
          database: converted,
        }
      ),
      with_db_user(value):: (
        local converted = value;
        assert std.isString(converted) : '"db_user" expected to be of type "string"';
        {
          db_user: converted,
        }
      ),
      with_secret_manager_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"secret_manager_arn" expected to be of type "string"';
        {
          secret_manager_arn: converted,
        }
      ),
      with_sqls(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"sqls" expected to be of type "set"';
        {
          sqls: converted,
        }
      ),
      with_sqls_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"sqls" expected to be of type "set"';
        {
          sqls+: converted,
        }
      ),
      with_statement_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"statement_name" expected to be of type "string"';
        {
          statement_name: converted,
        }
      ),
      with_with_event(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"with_event" expected to be of type "bool"';
        {
          with_event: converted,
        }
      ),
    },
    sagemaker_pipeline_parameters:: {
      local block = self,
      new():: (
        {}
      ),
      pipeline_parameter:: {
        local block = self,
        new(name, value):: (
          {}
          + block.with_name(name)
          + block.with_value(value)
        ),
        with_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        with_value(value):: (
          local converted = value;
          assert std.isString(converted) : '"value" expected to be of type "string"';
          {
            value: converted,
          }
        ),
      },
      with_pipeline_parameter(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          pipeline_parameter: value,
        }
      ),
      with_pipeline_parameter_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          pipeline_parameter+: converted,
        }
      ),
    },
    sqs_queue_parameters:: {
      local block = self,
      new():: (
        {}
      ),
      with_message_deduplication_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"message_deduplication_id" expected to be of type "string"';
        {
          message_deduplication_id: converted,
        }
      ),
      with_message_group_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"message_group_id" expected to be of type "string"';
        {
          message_group_id: converted,
        }
      ),
    },
    step_function_state_machine_parameters:: {
      local block = self,
      new(invocation_type):: (
        {}
        + block.with_invocation_type(invocation_type)
      ),
      with_invocation_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"invocation_type" expected to be of type "string"';
        {
          invocation_type: converted,
        }
      ),
    },
    with_batch_job_parameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        batch_job_parameters: value,
      }
    ),
    with_cloudwatch_logs_parameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logs_parameters: value,
      }
    ),
    with_ecs_task_parameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecs_task_parameters: value,
      }
    ),
    with_eventbridge_event_bus_parameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        eventbridge_event_bus_parameters: value,
      }
    ),
    with_http_parameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http_parameters: value,
      }
    ),
    with_kinesis_stream_parameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_stream_parameters: value,
      }
    ),
    with_lambda_function_parameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_function_parameters: value,
      }
    ),
    with_redshift_data_parameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        redshift_data_parameters: value,
      }
    ),
    with_sagemaker_pipeline_parameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sagemaker_pipeline_parameters: value,
      }
    ),
    with_sqs_queue_parameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sqs_queue_parameters: value,
      }
    ),
    with_step_function_state_machine_parameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        step_function_state_machine_parameters: value,
      }
    ),
    with_batch_job_parameters_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        batch_job_parameters+: converted,
      }
    ),
    with_cloudwatch_logs_parameters_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logs_parameters+: converted,
      }
    ),
    with_ecs_task_parameters_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecs_task_parameters+: converted,
      }
    ),
    with_eventbridge_event_bus_parameters_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        eventbridge_event_bus_parameters+: converted,
      }
    ),
    with_http_parameters_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http_parameters+: converted,
      }
    ),
    with_kinesis_stream_parameters_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_stream_parameters+: converted,
      }
    ),
    with_lambda_function_parameters_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_function_parameters+: converted,
      }
    ),
    with_redshift_data_parameters_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        redshift_data_parameters+: converted,
      }
    ),
    with_sagemaker_pipeline_parameters_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sagemaker_pipeline_parameters+: converted,
      }
    ),
    with_sqs_queue_parameters_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sqs_queue_parameters+: converted,
      }
    ),
    with_step_function_state_machine_parameters_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        step_function_state_machine_parameters+: converted,
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
  with_enrichment_parameters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      enrichment_parameters: value,
    }
  ),
  with_log_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_configuration: value,
    }
  ),
  with_source_parameters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source_parameters: value,
    }
  ),
  with_target_parameters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_parameters: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_enrichment_parameters_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      enrichment_parameters+: converted,
    }
  ),
  with_log_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_configuration+: converted,
    }
  ),
  with_source_parameters_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source_parameters+: converted,
    }
  ),
  with_target_parameters_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_parameters+: converted,
    }
  ),
}
