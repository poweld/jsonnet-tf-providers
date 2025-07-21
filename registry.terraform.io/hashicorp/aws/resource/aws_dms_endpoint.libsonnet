{
  local block = self,
  new(endpoint_id, endpoint_type, engine_name):: (
    {}
    + block.with_endpoint_id(endpoint_id)
    + block.with_endpoint_type(endpoint_type)
    + block.with_engine_name(engine_name)
  ),
  with_certificate_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_arn" expected to be of type "string"';
    {
      certificate_arn: converted,
    }
  ),
  with_database_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"database_name" expected to be of type "string"';
    {
      database_name: converted,
    }
  ),
  with_endpoint_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_arn" expected to be of type "string"';
    {
      endpoint_arn: converted,
    }
  ),
  with_endpoint_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_id" expected to be of type "string"';
    {
      endpoint_id: converted,
    }
  ),
  with_endpoint_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_type" expected to be of type "string"';
    {
      endpoint_type: converted,
    }
  ),
  with_engine_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_name" expected to be of type "string"';
    {
      engine_name: converted,
    }
  ),
  with_extra_connection_attributes(value):: (
    local converted = value;
    assert std.isString(converted) : '"extra_connection_attributes" expected to be of type "string"';
    {
      extra_connection_attributes: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_kms_key_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
    {
      kms_key_arn: converted,
    }
  ),
  with_password(value):: (
    local converted = value;
    assert std.isString(converted) : '"password" expected to be of type "string"';
    {
      password: converted,
    }
  ),
  with_pause_replication_tasks(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"pause_replication_tasks" expected to be of type "bool"';
    {
      pause_replication_tasks: converted,
    }
  ),
  with_port(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"port" expected to be of type "number"';
    {
      port: converted,
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
  with_secrets_manager_access_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"secrets_manager_access_role_arn" expected to be of type "string"';
    {
      secrets_manager_access_role_arn: converted,
    }
  ),
  with_secrets_manager_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"secrets_manager_arn" expected to be of type "string"';
    {
      secrets_manager_arn: converted,
    }
  ),
  with_server_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"server_name" expected to be of type "string"';
    {
      server_name: converted,
    }
  ),
  with_service_access_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_access_role" expected to be of type "string"';
    {
      service_access_role: converted,
    }
  ),
  with_ssl_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"ssl_mode" expected to be of type "string"';
    {
      ssl_mode: converted,
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
  with_username(value):: (
    local converted = value;
    assert std.isString(converted) : '"username" expected to be of type "string"';
    {
      username: converted,
    }
  ),
  elasticsearch_settings:: {
    local block = self,
    new(endpoint_uri, service_access_role_arn):: (
      {}
      + block.with_endpoint_uri(endpoint_uri)
      + block.with_service_access_role_arn(service_access_role_arn)
    ),
    with_endpoint_uri(value):: (
      local converted = value;
      assert std.isString(converted) : '"endpoint_uri" expected to be of type "string"';
      {
        endpoint_uri: converted,
      }
    ),
    with_error_retry_duration(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"error_retry_duration" expected to be of type "number"';
      {
        error_retry_duration: converted,
      }
    ),
    with_full_load_error_percentage(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"full_load_error_percentage" expected to be of type "number"';
      {
        full_load_error_percentage: converted,
      }
    ),
    with_service_access_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"service_access_role_arn" expected to be of type "string"';
      {
        service_access_role_arn: converted,
      }
    ),
    with_use_new_mapping_type(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"use_new_mapping_type" expected to be of type "bool"';
      {
        use_new_mapping_type: converted,
      }
    ),
  },
  kafka_settings:: {
    local block = self,
    new(broker):: (
      {}
      + block.with_broker(broker)
    ),
    with_broker(value):: (
      local converted = value;
      assert std.isString(converted) : '"broker" expected to be of type "string"';
      {
        broker: converted,
      }
    ),
    with_include_control_details(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_control_details" expected to be of type "bool"';
      {
        include_control_details: converted,
      }
    ),
    with_include_null_and_empty(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_null_and_empty" expected to be of type "bool"';
      {
        include_null_and_empty: converted,
      }
    ),
    with_include_partition_value(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_partition_value" expected to be of type "bool"';
      {
        include_partition_value: converted,
      }
    ),
    with_include_table_alter_operations(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_table_alter_operations" expected to be of type "bool"';
      {
        include_table_alter_operations: converted,
      }
    ),
    with_include_transaction_details(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_transaction_details" expected to be of type "bool"';
      {
        include_transaction_details: converted,
      }
    ),
    with_message_format(value):: (
      local converted = value;
      assert std.isString(converted) : '"message_format" expected to be of type "string"';
      {
        message_format: converted,
      }
    ),
    with_message_max_bytes(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"message_max_bytes" expected to be of type "number"';
      {
        message_max_bytes: converted,
      }
    ),
    with_no_hex_prefix(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"no_hex_prefix" expected to be of type "bool"';
      {
        no_hex_prefix: converted,
      }
    ),
    with_partition_include_schema_table(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"partition_include_schema_table" expected to be of type "bool"';
      {
        partition_include_schema_table: converted,
      }
    ),
    with_sasl_mechanism(value):: (
      local converted = value;
      assert std.isString(converted) : '"sasl_mechanism" expected to be of type "string"';
      {
        sasl_mechanism: converted,
      }
    ),
    with_sasl_password(value):: (
      local converted = value;
      assert std.isString(converted) : '"sasl_password" expected to be of type "string"';
      {
        sasl_password: converted,
      }
    ),
    with_sasl_username(value):: (
      local converted = value;
      assert std.isString(converted) : '"sasl_username" expected to be of type "string"';
      {
        sasl_username: converted,
      }
    ),
    with_security_protocol(value):: (
      local converted = value;
      assert std.isString(converted) : '"security_protocol" expected to be of type "string"';
      {
        security_protocol: converted,
      }
    ),
    with_ssl_ca_certificate_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"ssl_ca_certificate_arn" expected to be of type "string"';
      {
        ssl_ca_certificate_arn: converted,
      }
    ),
    with_ssl_client_certificate_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"ssl_client_certificate_arn" expected to be of type "string"';
      {
        ssl_client_certificate_arn: converted,
      }
    ),
    with_ssl_client_key_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"ssl_client_key_arn" expected to be of type "string"';
      {
        ssl_client_key_arn: converted,
      }
    ),
    with_ssl_client_key_password(value):: (
      local converted = value;
      assert std.isString(converted) : '"ssl_client_key_password" expected to be of type "string"';
      {
        ssl_client_key_password: converted,
      }
    ),
    with_topic(value):: (
      local converted = value;
      assert std.isString(converted) : '"topic" expected to be of type "string"';
      {
        topic: converted,
      }
    ),
  },
  kinesis_settings:: {
    local block = self,
    new():: (
      {}
    ),
    with_include_control_details(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_control_details" expected to be of type "bool"';
      {
        include_control_details: converted,
      }
    ),
    with_include_null_and_empty(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_null_and_empty" expected to be of type "bool"';
      {
        include_null_and_empty: converted,
      }
    ),
    with_include_partition_value(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_partition_value" expected to be of type "bool"';
      {
        include_partition_value: converted,
      }
    ),
    with_include_table_alter_operations(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_table_alter_operations" expected to be of type "bool"';
      {
        include_table_alter_operations: converted,
      }
    ),
    with_include_transaction_details(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_transaction_details" expected to be of type "bool"';
      {
        include_transaction_details: converted,
      }
    ),
    with_message_format(value):: (
      local converted = value;
      assert std.isString(converted) : '"message_format" expected to be of type "string"';
      {
        message_format: converted,
      }
    ),
    with_partition_include_schema_table(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"partition_include_schema_table" expected to be of type "bool"';
      {
        partition_include_schema_table: converted,
      }
    ),
    with_service_access_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"service_access_role_arn" expected to be of type "string"';
      {
        service_access_role_arn: converted,
      }
    ),
    with_stream_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"stream_arn" expected to be of type "string"';
      {
        stream_arn: converted,
      }
    ),
    with_use_large_integer_value(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"use_large_integer_value" expected to be of type "bool"';
      {
        use_large_integer_value: converted,
      }
    ),
  },
  mongodb_settings:: {
    local block = self,
    new():: (
      {}
    ),
    with_auth_mechanism(value):: (
      local converted = value;
      assert std.isString(converted) : '"auth_mechanism" expected to be of type "string"';
      {
        auth_mechanism: converted,
      }
    ),
    with_auth_source(value):: (
      local converted = value;
      assert std.isString(converted) : '"auth_source" expected to be of type "string"';
      {
        auth_source: converted,
      }
    ),
    with_auth_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"auth_type" expected to be of type "string"';
      {
        auth_type: converted,
      }
    ),
    with_docs_to_investigate(value):: (
      local converted = value;
      assert std.isString(converted) : '"docs_to_investigate" expected to be of type "string"';
      {
        docs_to_investigate: converted,
      }
    ),
    with_extract_doc_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"extract_doc_id" expected to be of type "string"';
      {
        extract_doc_id: converted,
      }
    ),
    with_nesting_level(value):: (
      local converted = value;
      assert std.isString(converted) : '"nesting_level" expected to be of type "string"';
      {
        nesting_level: converted,
      }
    ),
  },
  postgres_settings:: {
    local block = self,
    new():: (
      {}
    ),
    with_after_connect_script(value):: (
      local converted = value;
      assert std.isString(converted) : '"after_connect_script" expected to be of type "string"';
      {
        after_connect_script: converted,
      }
    ),
    with_babelfish_database_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"babelfish_database_name" expected to be of type "string"';
      {
        babelfish_database_name: converted,
      }
    ),
    with_capture_ddls(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"capture_ddls" expected to be of type "bool"';
      {
        capture_ddls: converted,
      }
    ),
    with_database_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"database_mode" expected to be of type "string"';
      {
        database_mode: converted,
      }
    ),
    with_ddl_artifacts_schema(value):: (
      local converted = value;
      assert std.isString(converted) : '"ddl_artifacts_schema" expected to be of type "string"';
      {
        ddl_artifacts_schema: converted,
      }
    ),
    with_execute_timeout(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"execute_timeout" expected to be of type "number"';
      {
        execute_timeout: converted,
      }
    ),
    with_fail_tasks_on_lob_truncation(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"fail_tasks_on_lob_truncation" expected to be of type "bool"';
      {
        fail_tasks_on_lob_truncation: converted,
      }
    ),
    with_heartbeat_enable(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"heartbeat_enable" expected to be of type "bool"';
      {
        heartbeat_enable: converted,
      }
    ),
    with_heartbeat_frequency(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"heartbeat_frequency" expected to be of type "number"';
      {
        heartbeat_frequency: converted,
      }
    ),
    with_heartbeat_schema(value):: (
      local converted = value;
      assert std.isString(converted) : '"heartbeat_schema" expected to be of type "string"';
      {
        heartbeat_schema: converted,
      }
    ),
    with_map_boolean_as_boolean(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"map_boolean_as_boolean" expected to be of type "bool"';
      {
        map_boolean_as_boolean: converted,
      }
    ),
    with_map_jsonb_as_clob(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"map_jsonb_as_clob" expected to be of type "bool"';
      {
        map_jsonb_as_clob: converted,
      }
    ),
    with_map_long_varchar_as(value):: (
      local converted = value;
      assert std.isString(converted) : '"map_long_varchar_as" expected to be of type "string"';
      {
        map_long_varchar_as: converted,
      }
    ),
    with_max_file_size(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_file_size" expected to be of type "number"';
      {
        max_file_size: converted,
      }
    ),
    with_plugin_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"plugin_name" expected to be of type "string"';
      {
        plugin_name: converted,
      }
    ),
    with_slot_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"slot_name" expected to be of type "string"';
      {
        slot_name: converted,
      }
    ),
  },
  redis_settings:: {
    local block = self,
    new(auth_type, port, server_name):: (
      {}
      + block.with_auth_type(auth_type)
      + block.with_port(port)
      + block.with_server_name(server_name)
    ),
    with_auth_password(value):: (
      local converted = value;
      assert std.isString(converted) : '"auth_password" expected to be of type "string"';
      {
        auth_password: converted,
      }
    ),
    with_auth_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"auth_type" expected to be of type "string"';
      {
        auth_type: converted,
      }
    ),
    with_auth_user_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"auth_user_name" expected to be of type "string"';
      {
        auth_user_name: converted,
      }
    ),
    with_port(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"port" expected to be of type "number"';
      {
        port: converted,
      }
    ),
    with_server_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"server_name" expected to be of type "string"';
      {
        server_name: converted,
      }
    ),
    with_ssl_ca_certificate_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"ssl_ca_certificate_arn" expected to be of type "string"';
      {
        ssl_ca_certificate_arn: converted,
      }
    ),
    with_ssl_security_protocol(value):: (
      local converted = value;
      assert std.isString(converted) : '"ssl_security_protocol" expected to be of type "string"';
      {
        ssl_security_protocol: converted,
      }
    ),
  },
  redshift_settings:: {
    local block = self,
    new():: (
      {}
    ),
    with_bucket_folder(value):: (
      local converted = value;
      assert std.isString(converted) : '"bucket_folder" expected to be of type "string"';
      {
        bucket_folder: converted,
      }
    ),
    with_bucket_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
      {
        bucket_name: converted,
      }
    ),
    with_encryption_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"encryption_mode" expected to be of type "string"';
      {
        encryption_mode: converted,
      }
    ),
    with_server_side_encryption_kms_key_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"server_side_encryption_kms_key_id" expected to be of type "string"';
      {
        server_side_encryption_kms_key_id: converted,
      }
    ),
    with_service_access_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"service_access_role_arn" expected to be of type "string"';
      {
        service_access_role_arn: converted,
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
  },
  with_elasticsearch_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      elasticsearch_settings: value,
    }
  ),
  with_kafka_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kafka_settings: value,
    }
  ),
  with_kinesis_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kinesis_settings: value,
    }
  ),
  with_mongodb_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      mongodb_settings: value,
    }
  ),
  with_postgres_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      postgres_settings: value,
    }
  ),
  with_redis_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      redis_settings: value,
    }
  ),
  with_redshift_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      redshift_settings: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_elasticsearch_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      elasticsearch_settings+: converted,
    }
  ),
  with_kafka_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kafka_settings+: converted,
    }
  ),
  with_kinesis_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kinesis_settings+: converted,
    }
  ),
  with_mongodb_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      mongodb_settings+: converted,
    }
  ),
  with_postgres_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      postgres_settings+: converted,
    }
  ),
  with_redis_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      redis_settings+: converted,
    }
  ),
  with_redshift_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      redshift_settings+: converted,
    }
  ),
}
