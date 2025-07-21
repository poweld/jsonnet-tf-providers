{
  local block = self,
  new(destination, name):: (
    {}
    + block.with_destination(destination)
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_destination(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination" expected to be of type "string"';
    {
      destination: converted,
    }
  ),
  with_destination_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination_id" expected to be of type "string"';
    {
      destination_id: converted,
    }
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
  with_version_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"version_id" expected to be of type "string"';
    {
      version_id: converted,
    }
  ),
  elasticsearch_configuration:: {
    local block = self,
    new(index_name, role_arn):: (
      {}
      + block.with_index_name(index_name)
      + block.with_role_arn(role_arn)
    ),
    with_buffering_interval(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"buffering_interval" expected to be of type "number"';
      {
        buffering_interval: converted,
      }
    ),
    with_buffering_size(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"buffering_size" expected to be of type "number"';
      {
        buffering_size: converted,
      }
    ),
    with_cluster_endpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"cluster_endpoint" expected to be of type "string"';
      {
        cluster_endpoint: converted,
      }
    ),
    with_domain_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"domain_arn" expected to be of type "string"';
      {
        domain_arn: converted,
      }
    ),
    with_index_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"index_name" expected to be of type "string"';
      {
        index_name: converted,
      }
    ),
    with_index_rotation_period(value):: (
      local converted = value;
      assert std.isString(converted) : '"index_rotation_period" expected to be of type "string"';
      {
        index_rotation_period: converted,
      }
    ),
    with_retry_duration(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"retry_duration" expected to be of type "number"';
      {
        retry_duration: converted,
      }
    ),
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    with_s3_backup_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_backup_mode" expected to be of type "string"';
      {
        s3_backup_mode: converted,
      }
    ),
    with_type_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"type_name" expected to be of type "string"';
      {
        type_name: converted,
      }
    ),
    cloudwatch_logging_options:: {
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
      with_log_group_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
        {
          log_group_name: converted,
        }
      ),
      with_log_stream_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
        {
          log_stream_name: converted,
        }
      ),
    },
    processing_configuration:: {
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
      processors:: {
        local block = self,
        new(type):: (
          {}
          + block.with_type(type)
        ),
        with_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
        parameters:: {
          local block = self,
          new(parameter_name, parameter_value):: (
            {}
            + block.with_parameter_name(parameter_name)
            + block.with_parameter_value(parameter_value)
          ),
          with_parameter_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"parameter_name" expected to be of type "string"';
            {
              parameter_name: converted,
            }
          ),
          with_parameter_value(value):: (
            local converted = value;
            assert std.isString(converted) : '"parameter_value" expected to be of type "string"';
            {
              parameter_value: converted,
            }
          ),
        },
        with_parameters(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters: value,
          }
        ),
        with_parameters_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters+: converted,
          }
        ),
      },
      with_processors(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          processors: value,
        }
      ),
      with_processors_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          processors+: converted,
        }
      ),
    },
    s3_configuration:: {
      local block = self,
      new(bucket_arn, role_arn):: (
        {}
        + block.with_bucket_arn(bucket_arn)
        + block.with_role_arn(role_arn)
      ),
      with_bucket_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_arn" expected to be of type "string"';
        {
          bucket_arn: converted,
        }
      ),
      with_buffering_interval(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_interval" expected to be of type "number"';
        {
          buffering_interval: converted,
        }
      ),
      with_buffering_size(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_size" expected to be of type "number"';
        {
          buffering_size: converted,
        }
      ),
      with_compression_format(value):: (
        local converted = value;
        assert std.isString(converted) : '"compression_format" expected to be of type "string"';
        {
          compression_format: converted,
        }
      ),
      with_error_output_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"error_output_prefix" expected to be of type "string"';
        {
          error_output_prefix: converted,
        }
      ),
      with_kms_key_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
        {
          kms_key_arn: converted,
        }
      ),
      with_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"prefix" expected to be of type "string"';
        {
          prefix: converted,
        }
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      cloudwatch_logging_options:: {
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
        with_log_group_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
          {
            log_group_name: converted,
          }
        ),
        with_log_stream_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
          {
            log_stream_name: converted,
          }
        ),
      },
      with_cloudwatch_logging_options(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options: value,
        }
      ),
      with_cloudwatch_logging_options_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options+: converted,
        }
      ),
    },
    vpc_config:: {
      local block = self,
      new(role_arn, security_group_ids, subnet_ids):: (
        {}
        + block.with_role_arn(role_arn)
        + block.with_security_group_ids(security_group_ids)
        + block.with_subnet_ids(subnet_ids)
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
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
    with_cloudwatch_logging_options(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logging_options: value,
      }
    ),
    with_processing_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration: value,
      }
    ),
    with_s3_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration: value,
      }
    ),
    with_vpc_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vpc_config: value,
      }
    ),
    with_cloudwatch_logging_options_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logging_options+: converted,
      }
    ),
    with_processing_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration+: converted,
      }
    ),
    with_s3_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration+: converted,
      }
    ),
    with_vpc_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vpc_config+: converted,
      }
    ),
  },
  extended_s3_configuration:: {
    local block = self,
    new(bucket_arn, role_arn):: (
      {}
      + block.with_bucket_arn(bucket_arn)
      + block.with_role_arn(role_arn)
    ),
    with_bucket_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"bucket_arn" expected to be of type "string"';
      {
        bucket_arn: converted,
      }
    ),
    with_buffering_interval(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"buffering_interval" expected to be of type "number"';
      {
        buffering_interval: converted,
      }
    ),
    with_buffering_size(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"buffering_size" expected to be of type "number"';
      {
        buffering_size: converted,
      }
    ),
    with_compression_format(value):: (
      local converted = value;
      assert std.isString(converted) : '"compression_format" expected to be of type "string"';
      {
        compression_format: converted,
      }
    ),
    with_custom_time_zone(value):: (
      local converted = value;
      assert std.isString(converted) : '"custom_time_zone" expected to be of type "string"';
      {
        custom_time_zone: converted,
      }
    ),
    with_error_output_prefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"error_output_prefix" expected to be of type "string"';
      {
        error_output_prefix: converted,
      }
    ),
    with_file_extension(value):: (
      local converted = value;
      assert std.isString(converted) : '"file_extension" expected to be of type "string"';
      {
        file_extension: converted,
      }
    ),
    with_kms_key_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
      {
        kms_key_arn: converted,
      }
    ),
    with_prefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"prefix" expected to be of type "string"';
      {
        prefix: converted,
      }
    ),
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    with_s3_backup_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_backup_mode" expected to be of type "string"';
      {
        s3_backup_mode: converted,
      }
    ),
    cloudwatch_logging_options:: {
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
      with_log_group_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
        {
          log_group_name: converted,
        }
      ),
      with_log_stream_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
        {
          log_stream_name: converted,
        }
      ),
    },
    data_format_conversion_configuration:: {
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
      input_format_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        deserializer:: {
          local block = self,
          new():: (
            {}
          ),
          hive_json_ser_de:: {
            local block = self,
            new():: (
              {}
            ),
            with_timestamp_formats(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"timestamp_formats" expected to be of type "list"';
              {
                timestamp_formats: converted,
              }
            ),
            with_timestamp_formats_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"timestamp_formats" expected to be of type "list"';
              {
                timestamp_formats+: converted,
              }
            ),
          },
          open_x_json_ser_de:: {
            local block = self,
            new():: (
              {}
            ),
            with_case_insensitive(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"case_insensitive" expected to be of type "bool"';
              {
                case_insensitive: converted,
              }
            ),
            with_column_to_json_key_mappings(value):: (
              local converted = value;
              assert std.isObject(converted) : '"column_to_json_key_mappings" expected to be of type "map"';
              {
                column_to_json_key_mappings: converted,
              }
            ),
            with_convert_dots_in_json_keys_to_underscores(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"convert_dots_in_json_keys_to_underscores" expected to be of type "bool"';
              {
                convert_dots_in_json_keys_to_underscores: converted,
              }
            ),
          },
          with_hive_json_ser_de(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              hive_json_ser_de: value,
            }
          ),
          with_open_x_json_ser_de(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              open_x_json_ser_de: value,
            }
          ),
          with_hive_json_ser_de_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              hive_json_ser_de+: converted,
            }
          ),
          with_open_x_json_ser_de_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              open_x_json_ser_de+: converted,
            }
          ),
        },
        with_deserializer(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            deserializer: value,
          }
        ),
        with_deserializer_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            deserializer+: converted,
          }
        ),
      },
      output_format_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        serializer:: {
          local block = self,
          new():: (
            {}
          ),
          orc_ser_de:: {
            local block = self,
            new():: (
              {}
            ),
            with_block_size_bytes(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"block_size_bytes" expected to be of type "number"';
              {
                block_size_bytes: converted,
              }
            ),
            with_bloom_filter_columns(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"bloom_filter_columns" expected to be of type "list"';
              {
                bloom_filter_columns: converted,
              }
            ),
            with_bloom_filter_columns_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"bloom_filter_columns" expected to be of type "list"';
              {
                bloom_filter_columns+: converted,
              }
            ),
            with_bloom_filter_false_positive_probability(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"bloom_filter_false_positive_probability" expected to be of type "number"';
              {
                bloom_filter_false_positive_probability: converted,
              }
            ),
            with_compression(value):: (
              local converted = value;
              assert std.isString(converted) : '"compression" expected to be of type "string"';
              {
                compression: converted,
              }
            ),
            with_dictionary_key_threshold(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"dictionary_key_threshold" expected to be of type "number"';
              {
                dictionary_key_threshold: converted,
              }
            ),
            with_enable_padding(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"enable_padding" expected to be of type "bool"';
              {
                enable_padding: converted,
              }
            ),
            with_format_version(value):: (
              local converted = value;
              assert std.isString(converted) : '"format_version" expected to be of type "string"';
              {
                format_version: converted,
              }
            ),
            with_padding_tolerance(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"padding_tolerance" expected to be of type "number"';
              {
                padding_tolerance: converted,
              }
            ),
            with_row_index_stride(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"row_index_stride" expected to be of type "number"';
              {
                row_index_stride: converted,
              }
            ),
            with_stripe_size_bytes(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"stripe_size_bytes" expected to be of type "number"';
              {
                stripe_size_bytes: converted,
              }
            ),
          },
          parquet_ser_de:: {
            local block = self,
            new():: (
              {}
            ),
            with_block_size_bytes(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"block_size_bytes" expected to be of type "number"';
              {
                block_size_bytes: converted,
              }
            ),
            with_compression(value):: (
              local converted = value;
              assert std.isString(converted) : '"compression" expected to be of type "string"';
              {
                compression: converted,
              }
            ),
            with_enable_dictionary_compression(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"enable_dictionary_compression" expected to be of type "bool"';
              {
                enable_dictionary_compression: converted,
              }
            ),
            with_max_padding_bytes(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"max_padding_bytes" expected to be of type "number"';
              {
                max_padding_bytes: converted,
              }
            ),
            with_page_size_bytes(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"page_size_bytes" expected to be of type "number"';
              {
                page_size_bytes: converted,
              }
            ),
            with_writer_version(value):: (
              local converted = value;
              assert std.isString(converted) : '"writer_version" expected to be of type "string"';
              {
                writer_version: converted,
              }
            ),
          },
          with_orc_ser_de(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              orc_ser_de: value,
            }
          ),
          with_parquet_ser_de(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              parquet_ser_de: value,
            }
          ),
          with_orc_ser_de_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              orc_ser_de+: converted,
            }
          ),
          with_parquet_ser_de_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              parquet_ser_de+: converted,
            }
          ),
        },
        with_serializer(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            serializer: value,
          }
        ),
        with_serializer_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            serializer+: converted,
          }
        ),
      },
      schema_configuration:: {
        local block = self,
        new(database_name, role_arn, table_name):: (
          {}
          + block.with_database_name(database_name)
          + block.with_role_arn(role_arn)
          + block.with_table_name(table_name)
        ),
        with_catalog_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"catalog_id" expected to be of type "string"';
          {
            catalog_id: converted,
          }
        ),
        with_database_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"database_name" expected to be of type "string"';
          {
            database_name: converted,
          }
        ),
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
        with_table_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"table_name" expected to be of type "string"';
          {
            table_name: converted,
          }
        ),
        with_version_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"version_id" expected to be of type "string"';
          {
            version_id: converted,
          }
        ),
      },
      with_input_format_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          input_format_configuration: value,
        }
      ),
      with_output_format_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          output_format_configuration: value,
        }
      ),
      with_schema_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          schema_configuration: value,
        }
      ),
      with_input_format_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          input_format_configuration+: converted,
        }
      ),
      with_output_format_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          output_format_configuration+: converted,
        }
      ),
      with_schema_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          schema_configuration+: converted,
        }
      ),
    },
    dynamic_partitioning_configuration:: {
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
      with_retry_duration(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"retry_duration" expected to be of type "number"';
        {
          retry_duration: converted,
        }
      ),
    },
    processing_configuration:: {
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
      processors:: {
        local block = self,
        new(type):: (
          {}
          + block.with_type(type)
        ),
        with_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
        parameters:: {
          local block = self,
          new(parameter_name, parameter_value):: (
            {}
            + block.with_parameter_name(parameter_name)
            + block.with_parameter_value(parameter_value)
          ),
          with_parameter_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"parameter_name" expected to be of type "string"';
            {
              parameter_name: converted,
            }
          ),
          with_parameter_value(value):: (
            local converted = value;
            assert std.isString(converted) : '"parameter_value" expected to be of type "string"';
            {
              parameter_value: converted,
            }
          ),
        },
        with_parameters(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters: value,
          }
        ),
        with_parameters_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters+: converted,
          }
        ),
      },
      with_processors(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          processors: value,
        }
      ),
      with_processors_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          processors+: converted,
        }
      ),
    },
    s3_backup_configuration:: {
      local block = self,
      new(bucket_arn, role_arn):: (
        {}
        + block.with_bucket_arn(bucket_arn)
        + block.with_role_arn(role_arn)
      ),
      with_bucket_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_arn" expected to be of type "string"';
        {
          bucket_arn: converted,
        }
      ),
      with_buffering_interval(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_interval" expected to be of type "number"';
        {
          buffering_interval: converted,
        }
      ),
      with_buffering_size(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_size" expected to be of type "number"';
        {
          buffering_size: converted,
        }
      ),
      with_compression_format(value):: (
        local converted = value;
        assert std.isString(converted) : '"compression_format" expected to be of type "string"';
        {
          compression_format: converted,
        }
      ),
      with_error_output_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"error_output_prefix" expected to be of type "string"';
        {
          error_output_prefix: converted,
        }
      ),
      with_kms_key_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
        {
          kms_key_arn: converted,
        }
      ),
      with_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"prefix" expected to be of type "string"';
        {
          prefix: converted,
        }
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      cloudwatch_logging_options:: {
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
        with_log_group_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
          {
            log_group_name: converted,
          }
        ),
        with_log_stream_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
          {
            log_stream_name: converted,
          }
        ),
      },
      with_cloudwatch_logging_options(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options: value,
        }
      ),
      with_cloudwatch_logging_options_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options+: converted,
        }
      ),
    },
    with_cloudwatch_logging_options(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logging_options: value,
      }
    ),
    with_data_format_conversion_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_format_conversion_configuration: value,
      }
    ),
    with_dynamic_partitioning_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dynamic_partitioning_configuration: value,
      }
    ),
    with_processing_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration: value,
      }
    ),
    with_s3_backup_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_backup_configuration: value,
      }
    ),
    with_cloudwatch_logging_options_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logging_options+: converted,
      }
    ),
    with_data_format_conversion_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_format_conversion_configuration+: converted,
      }
    ),
    with_dynamic_partitioning_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dynamic_partitioning_configuration+: converted,
      }
    ),
    with_processing_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration+: converted,
      }
    ),
    with_s3_backup_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_backup_configuration+: converted,
      }
    ),
  },
  http_endpoint_configuration:: {
    local block = self,
    new(url):: (
      {}
      + block.with_url(url)
    ),
    with_access_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"access_key" expected to be of type "string"';
      {
        access_key: converted,
      }
    ),
    with_buffering_interval(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"buffering_interval" expected to be of type "number"';
      {
        buffering_interval: converted,
      }
    ),
    with_buffering_size(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"buffering_size" expected to be of type "number"';
      {
        buffering_size: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_retry_duration(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"retry_duration" expected to be of type "number"';
      {
        retry_duration: converted,
      }
    ),
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    with_s3_backup_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_backup_mode" expected to be of type "string"';
      {
        s3_backup_mode: converted,
      }
    ),
    with_url(value):: (
      local converted = value;
      assert std.isString(converted) : '"url" expected to be of type "string"';
      {
        url: converted,
      }
    ),
    cloudwatch_logging_options:: {
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
      with_log_group_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
        {
          log_group_name: converted,
        }
      ),
      with_log_stream_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
        {
          log_stream_name: converted,
        }
      ),
    },
    processing_configuration:: {
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
      processors:: {
        local block = self,
        new(type):: (
          {}
          + block.with_type(type)
        ),
        with_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
        parameters:: {
          local block = self,
          new(parameter_name, parameter_value):: (
            {}
            + block.with_parameter_name(parameter_name)
            + block.with_parameter_value(parameter_value)
          ),
          with_parameter_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"parameter_name" expected to be of type "string"';
            {
              parameter_name: converted,
            }
          ),
          with_parameter_value(value):: (
            local converted = value;
            assert std.isString(converted) : '"parameter_value" expected to be of type "string"';
            {
              parameter_value: converted,
            }
          ),
        },
        with_parameters(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters: value,
          }
        ),
        with_parameters_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters+: converted,
          }
        ),
      },
      with_processors(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          processors: value,
        }
      ),
      with_processors_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          processors+: converted,
        }
      ),
    },
    request_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      with_content_encoding(value):: (
        local converted = value;
        assert std.isString(converted) : '"content_encoding" expected to be of type "string"';
        {
          content_encoding: converted,
        }
      ),
      common_attributes:: {
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
      with_common_attributes(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          common_attributes: value,
        }
      ),
      with_common_attributes_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          common_attributes+: converted,
        }
      ),
    },
    s3_configuration:: {
      local block = self,
      new(bucket_arn, role_arn):: (
        {}
        + block.with_bucket_arn(bucket_arn)
        + block.with_role_arn(role_arn)
      ),
      with_bucket_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_arn" expected to be of type "string"';
        {
          bucket_arn: converted,
        }
      ),
      with_buffering_interval(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_interval" expected to be of type "number"';
        {
          buffering_interval: converted,
        }
      ),
      with_buffering_size(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_size" expected to be of type "number"';
        {
          buffering_size: converted,
        }
      ),
      with_compression_format(value):: (
        local converted = value;
        assert std.isString(converted) : '"compression_format" expected to be of type "string"';
        {
          compression_format: converted,
        }
      ),
      with_error_output_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"error_output_prefix" expected to be of type "string"';
        {
          error_output_prefix: converted,
        }
      ),
      with_kms_key_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
        {
          kms_key_arn: converted,
        }
      ),
      with_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"prefix" expected to be of type "string"';
        {
          prefix: converted,
        }
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      cloudwatch_logging_options:: {
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
        with_log_group_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
          {
            log_group_name: converted,
          }
        ),
        with_log_stream_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
          {
            log_stream_name: converted,
          }
        ),
      },
      with_cloudwatch_logging_options(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options: value,
        }
      ),
      with_cloudwatch_logging_options_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options+: converted,
        }
      ),
    },
    secrets_manager_configuration:: {
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
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      with_secret_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"secret_arn" expected to be of type "string"';
        {
          secret_arn: converted,
        }
      ),
    },
    with_cloudwatch_logging_options(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logging_options: value,
      }
    ),
    with_processing_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration: value,
      }
    ),
    with_request_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        request_configuration: value,
      }
    ),
    with_s3_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration: value,
      }
    ),
    with_secrets_manager_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        secrets_manager_configuration: value,
      }
    ),
    with_cloudwatch_logging_options_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logging_options+: converted,
      }
    ),
    with_processing_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration+: converted,
      }
    ),
    with_request_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        request_configuration+: converted,
      }
    ),
    with_s3_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration+: converted,
      }
    ),
    with_secrets_manager_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        secrets_manager_configuration+: converted,
      }
    ),
  },
  iceberg_configuration:: {
    local block = self,
    new(catalog_arn, role_arn):: (
      {}
      + block.with_catalog_arn(catalog_arn)
      + block.with_role_arn(role_arn)
    ),
    with_buffering_interval(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"buffering_interval" expected to be of type "number"';
      {
        buffering_interval: converted,
      }
    ),
    with_buffering_size(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"buffering_size" expected to be of type "number"';
      {
        buffering_size: converted,
      }
    ),
    with_catalog_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"catalog_arn" expected to be of type "string"';
      {
        catalog_arn: converted,
      }
    ),
    with_retry_duration(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"retry_duration" expected to be of type "number"';
      {
        retry_duration: converted,
      }
    ),
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    with_s3_backup_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_backup_mode" expected to be of type "string"';
      {
        s3_backup_mode: converted,
      }
    ),
    cloudwatch_logging_options:: {
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
      with_log_group_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
        {
          log_group_name: converted,
        }
      ),
      with_log_stream_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
        {
          log_stream_name: converted,
        }
      ),
    },
    destination_table_configuration:: {
      local block = self,
      new(database_name, table_name):: (
        {}
        + block.with_database_name(database_name)
        + block.with_table_name(table_name)
      ),
      with_database_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"database_name" expected to be of type "string"';
        {
          database_name: converted,
        }
      ),
      with_s3_error_output_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_error_output_prefix" expected to be of type "string"';
        {
          s3_error_output_prefix: converted,
        }
      ),
      with_table_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"table_name" expected to be of type "string"';
        {
          table_name: converted,
        }
      ),
      with_unique_keys(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"unique_keys" expected to be of type "list"';
        {
          unique_keys: converted,
        }
      ),
      with_unique_keys_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"unique_keys" expected to be of type "list"';
        {
          unique_keys+: converted,
        }
      ),
    },
    processing_configuration:: {
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
      processors:: {
        local block = self,
        new(type):: (
          {}
          + block.with_type(type)
        ),
        with_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
        parameters:: {
          local block = self,
          new(parameter_name, parameter_value):: (
            {}
            + block.with_parameter_name(parameter_name)
            + block.with_parameter_value(parameter_value)
          ),
          with_parameter_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"parameter_name" expected to be of type "string"';
            {
              parameter_name: converted,
            }
          ),
          with_parameter_value(value):: (
            local converted = value;
            assert std.isString(converted) : '"parameter_value" expected to be of type "string"';
            {
              parameter_value: converted,
            }
          ),
        },
        with_parameters(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters: value,
          }
        ),
        with_parameters_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters+: converted,
          }
        ),
      },
      with_processors(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          processors: value,
        }
      ),
      with_processors_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          processors+: converted,
        }
      ),
    },
    s3_configuration:: {
      local block = self,
      new(bucket_arn, role_arn):: (
        {}
        + block.with_bucket_arn(bucket_arn)
        + block.with_role_arn(role_arn)
      ),
      with_bucket_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_arn" expected to be of type "string"';
        {
          bucket_arn: converted,
        }
      ),
      with_buffering_interval(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_interval" expected to be of type "number"';
        {
          buffering_interval: converted,
        }
      ),
      with_buffering_size(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_size" expected to be of type "number"';
        {
          buffering_size: converted,
        }
      ),
      with_compression_format(value):: (
        local converted = value;
        assert std.isString(converted) : '"compression_format" expected to be of type "string"';
        {
          compression_format: converted,
        }
      ),
      with_error_output_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"error_output_prefix" expected to be of type "string"';
        {
          error_output_prefix: converted,
        }
      ),
      with_kms_key_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
        {
          kms_key_arn: converted,
        }
      ),
      with_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"prefix" expected to be of type "string"';
        {
          prefix: converted,
        }
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      cloudwatch_logging_options:: {
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
        with_log_group_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
          {
            log_group_name: converted,
          }
        ),
        with_log_stream_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
          {
            log_stream_name: converted,
          }
        ),
      },
      with_cloudwatch_logging_options(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options: value,
        }
      ),
      with_cloudwatch_logging_options_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options+: converted,
        }
      ),
    },
    with_cloudwatch_logging_options(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logging_options: value,
      }
    ),
    with_destination_table_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        destination_table_configuration: value,
      }
    ),
    with_processing_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration: value,
      }
    ),
    with_s3_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration: value,
      }
    ),
    with_cloudwatch_logging_options_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logging_options+: converted,
      }
    ),
    with_destination_table_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        destination_table_configuration+: converted,
      }
    ),
    with_processing_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration+: converted,
      }
    ),
    with_s3_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration+: converted,
      }
    ),
  },
  kinesis_source_configuration:: {
    local block = self,
    new(kinesis_stream_arn, role_arn):: (
      {}
      + block.with_kinesis_stream_arn(kinesis_stream_arn)
      + block.with_role_arn(role_arn)
    ),
    with_kinesis_stream_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"kinesis_stream_arn" expected to be of type "string"';
      {
        kinesis_stream_arn: converted,
      }
    ),
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
  },
  msk_source_configuration:: {
    local block = self,
    new(msk_cluster_arn, topic_name):: (
      {}
      + block.with_msk_cluster_arn(msk_cluster_arn)
      + block.with_topic_name(topic_name)
    ),
    with_msk_cluster_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"msk_cluster_arn" expected to be of type "string"';
      {
        msk_cluster_arn: converted,
      }
    ),
    with_read_from_timestamp(value):: (
      local converted = value;
      assert std.isString(converted) : '"read_from_timestamp" expected to be of type "string"';
      {
        read_from_timestamp: converted,
      }
    ),
    with_topic_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"topic_name" expected to be of type "string"';
      {
        topic_name: converted,
      }
    ),
    authentication_configuration:: {
      local block = self,
      new(connectivity, role_arn):: (
        {}
        + block.with_connectivity(connectivity)
        + block.with_role_arn(role_arn)
      ),
      with_connectivity(value):: (
        local converted = value;
        assert std.isString(converted) : '"connectivity" expected to be of type "string"';
        {
          connectivity: converted,
        }
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
    },
    with_authentication_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        authentication_configuration: value,
      }
    ),
    with_authentication_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        authentication_configuration+: converted,
      }
    ),
  },
  opensearch_configuration:: {
    local block = self,
    new(index_name, role_arn):: (
      {}
      + block.with_index_name(index_name)
      + block.with_role_arn(role_arn)
    ),
    with_buffering_interval(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"buffering_interval" expected to be of type "number"';
      {
        buffering_interval: converted,
      }
    ),
    with_buffering_size(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"buffering_size" expected to be of type "number"';
      {
        buffering_size: converted,
      }
    ),
    with_cluster_endpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"cluster_endpoint" expected to be of type "string"';
      {
        cluster_endpoint: converted,
      }
    ),
    with_domain_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"domain_arn" expected to be of type "string"';
      {
        domain_arn: converted,
      }
    ),
    with_index_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"index_name" expected to be of type "string"';
      {
        index_name: converted,
      }
    ),
    with_index_rotation_period(value):: (
      local converted = value;
      assert std.isString(converted) : '"index_rotation_period" expected to be of type "string"';
      {
        index_rotation_period: converted,
      }
    ),
    with_retry_duration(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"retry_duration" expected to be of type "number"';
      {
        retry_duration: converted,
      }
    ),
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    with_s3_backup_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_backup_mode" expected to be of type "string"';
      {
        s3_backup_mode: converted,
      }
    ),
    with_type_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"type_name" expected to be of type "string"';
      {
        type_name: converted,
      }
    ),
    cloudwatch_logging_options:: {
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
      with_log_group_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
        {
          log_group_name: converted,
        }
      ),
      with_log_stream_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
        {
          log_stream_name: converted,
        }
      ),
    },
    document_id_options:: {
      local block = self,
      new(default_document_id_format):: (
        {}
        + block.with_default_document_id_format(default_document_id_format)
      ),
      with_default_document_id_format(value):: (
        local converted = value;
        assert std.isString(converted) : '"default_document_id_format" expected to be of type "string"';
        {
          default_document_id_format: converted,
        }
      ),
    },
    processing_configuration:: {
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
      processors:: {
        local block = self,
        new(type):: (
          {}
          + block.with_type(type)
        ),
        with_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
        parameters:: {
          local block = self,
          new(parameter_name, parameter_value):: (
            {}
            + block.with_parameter_name(parameter_name)
            + block.with_parameter_value(parameter_value)
          ),
          with_parameter_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"parameter_name" expected to be of type "string"';
            {
              parameter_name: converted,
            }
          ),
          with_parameter_value(value):: (
            local converted = value;
            assert std.isString(converted) : '"parameter_value" expected to be of type "string"';
            {
              parameter_value: converted,
            }
          ),
        },
        with_parameters(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters: value,
          }
        ),
        with_parameters_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters+: converted,
          }
        ),
      },
      with_processors(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          processors: value,
        }
      ),
      with_processors_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          processors+: converted,
        }
      ),
    },
    s3_configuration:: {
      local block = self,
      new(bucket_arn, role_arn):: (
        {}
        + block.with_bucket_arn(bucket_arn)
        + block.with_role_arn(role_arn)
      ),
      with_bucket_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_arn" expected to be of type "string"';
        {
          bucket_arn: converted,
        }
      ),
      with_buffering_interval(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_interval" expected to be of type "number"';
        {
          buffering_interval: converted,
        }
      ),
      with_buffering_size(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_size" expected to be of type "number"';
        {
          buffering_size: converted,
        }
      ),
      with_compression_format(value):: (
        local converted = value;
        assert std.isString(converted) : '"compression_format" expected to be of type "string"';
        {
          compression_format: converted,
        }
      ),
      with_error_output_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"error_output_prefix" expected to be of type "string"';
        {
          error_output_prefix: converted,
        }
      ),
      with_kms_key_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
        {
          kms_key_arn: converted,
        }
      ),
      with_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"prefix" expected to be of type "string"';
        {
          prefix: converted,
        }
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      cloudwatch_logging_options:: {
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
        with_log_group_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
          {
            log_group_name: converted,
          }
        ),
        with_log_stream_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
          {
            log_stream_name: converted,
          }
        ),
      },
      with_cloudwatch_logging_options(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options: value,
        }
      ),
      with_cloudwatch_logging_options_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options+: converted,
        }
      ),
    },
    vpc_config:: {
      local block = self,
      new(role_arn, security_group_ids, subnet_ids):: (
        {}
        + block.with_role_arn(role_arn)
        + block.with_security_group_ids(security_group_ids)
        + block.with_subnet_ids(subnet_ids)
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
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
    with_cloudwatch_logging_options(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logging_options: value,
      }
    ),
    with_document_id_options(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        document_id_options: value,
      }
    ),
    with_processing_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration: value,
      }
    ),
    with_s3_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration: value,
      }
    ),
    with_vpc_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vpc_config: value,
      }
    ),
    with_cloudwatch_logging_options_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logging_options+: converted,
      }
    ),
    with_document_id_options_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        document_id_options+: converted,
      }
    ),
    with_processing_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration+: converted,
      }
    ),
    with_s3_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration+: converted,
      }
    ),
    with_vpc_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vpc_config+: converted,
      }
    ),
  },
  opensearchserverless_configuration:: {
    local block = self,
    new(collection_endpoint, index_name, role_arn):: (
      {}
      + block.with_collection_endpoint(collection_endpoint)
      + block.with_index_name(index_name)
      + block.with_role_arn(role_arn)
    ),
    with_buffering_interval(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"buffering_interval" expected to be of type "number"';
      {
        buffering_interval: converted,
      }
    ),
    with_buffering_size(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"buffering_size" expected to be of type "number"';
      {
        buffering_size: converted,
      }
    ),
    with_collection_endpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"collection_endpoint" expected to be of type "string"';
      {
        collection_endpoint: converted,
      }
    ),
    with_index_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"index_name" expected to be of type "string"';
      {
        index_name: converted,
      }
    ),
    with_retry_duration(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"retry_duration" expected to be of type "number"';
      {
        retry_duration: converted,
      }
    ),
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    with_s3_backup_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_backup_mode" expected to be of type "string"';
      {
        s3_backup_mode: converted,
      }
    ),
    cloudwatch_logging_options:: {
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
      with_log_group_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
        {
          log_group_name: converted,
        }
      ),
      with_log_stream_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
        {
          log_stream_name: converted,
        }
      ),
    },
    processing_configuration:: {
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
      processors:: {
        local block = self,
        new(type):: (
          {}
          + block.with_type(type)
        ),
        with_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
        parameters:: {
          local block = self,
          new(parameter_name, parameter_value):: (
            {}
            + block.with_parameter_name(parameter_name)
            + block.with_parameter_value(parameter_value)
          ),
          with_parameter_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"parameter_name" expected to be of type "string"';
            {
              parameter_name: converted,
            }
          ),
          with_parameter_value(value):: (
            local converted = value;
            assert std.isString(converted) : '"parameter_value" expected to be of type "string"';
            {
              parameter_value: converted,
            }
          ),
        },
        with_parameters(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters: value,
          }
        ),
        with_parameters_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters+: converted,
          }
        ),
      },
      with_processors(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          processors: value,
        }
      ),
      with_processors_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          processors+: converted,
        }
      ),
    },
    s3_configuration:: {
      local block = self,
      new(bucket_arn, role_arn):: (
        {}
        + block.with_bucket_arn(bucket_arn)
        + block.with_role_arn(role_arn)
      ),
      with_bucket_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_arn" expected to be of type "string"';
        {
          bucket_arn: converted,
        }
      ),
      with_buffering_interval(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_interval" expected to be of type "number"';
        {
          buffering_interval: converted,
        }
      ),
      with_buffering_size(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_size" expected to be of type "number"';
        {
          buffering_size: converted,
        }
      ),
      with_compression_format(value):: (
        local converted = value;
        assert std.isString(converted) : '"compression_format" expected to be of type "string"';
        {
          compression_format: converted,
        }
      ),
      with_error_output_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"error_output_prefix" expected to be of type "string"';
        {
          error_output_prefix: converted,
        }
      ),
      with_kms_key_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
        {
          kms_key_arn: converted,
        }
      ),
      with_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"prefix" expected to be of type "string"';
        {
          prefix: converted,
        }
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      cloudwatch_logging_options:: {
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
        with_log_group_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
          {
            log_group_name: converted,
          }
        ),
        with_log_stream_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
          {
            log_stream_name: converted,
          }
        ),
      },
      with_cloudwatch_logging_options(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options: value,
        }
      ),
      with_cloudwatch_logging_options_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options+: converted,
        }
      ),
    },
    vpc_config:: {
      local block = self,
      new(role_arn, security_group_ids, subnet_ids):: (
        {}
        + block.with_role_arn(role_arn)
        + block.with_security_group_ids(security_group_ids)
        + block.with_subnet_ids(subnet_ids)
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
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
    with_cloudwatch_logging_options(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logging_options: value,
      }
    ),
    with_processing_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration: value,
      }
    ),
    with_s3_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration: value,
      }
    ),
    with_vpc_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vpc_config: value,
      }
    ),
    with_cloudwatch_logging_options_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logging_options+: converted,
      }
    ),
    with_processing_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration+: converted,
      }
    ),
    with_s3_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration+: converted,
      }
    ),
    with_vpc_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vpc_config+: converted,
      }
    ),
  },
  redshift_configuration:: {
    local block = self,
    new(cluster_jdbcurl, data_table_name, role_arn):: (
      {}
      + block.with_cluster_jdbcurl(cluster_jdbcurl)
      + block.with_data_table_name(data_table_name)
      + block.with_role_arn(role_arn)
    ),
    with_cluster_jdbcurl(value):: (
      local converted = value;
      assert std.isString(converted) : '"cluster_jdbcurl" expected to be of type "string"';
      {
        cluster_jdbcurl: converted,
      }
    ),
    with_copy_options(value):: (
      local converted = value;
      assert std.isString(converted) : '"copy_options" expected to be of type "string"';
      {
        copy_options: converted,
      }
    ),
    with_data_table_columns(value):: (
      local converted = value;
      assert std.isString(converted) : '"data_table_columns" expected to be of type "string"';
      {
        data_table_columns: converted,
      }
    ),
    with_data_table_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"data_table_name" expected to be of type "string"';
      {
        data_table_name: converted,
      }
    ),
    with_password(value):: (
      local converted = value;
      assert std.isString(converted) : '"password" expected to be of type "string"';
      {
        password: converted,
      }
    ),
    with_retry_duration(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"retry_duration" expected to be of type "number"';
      {
        retry_duration: converted,
      }
    ),
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    with_s3_backup_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_backup_mode" expected to be of type "string"';
      {
        s3_backup_mode: converted,
      }
    ),
    with_username(value):: (
      local converted = value;
      assert std.isString(converted) : '"username" expected to be of type "string"';
      {
        username: converted,
      }
    ),
    cloudwatch_logging_options:: {
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
      with_log_group_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
        {
          log_group_name: converted,
        }
      ),
      with_log_stream_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
        {
          log_stream_name: converted,
        }
      ),
    },
    processing_configuration:: {
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
      processors:: {
        local block = self,
        new(type):: (
          {}
          + block.with_type(type)
        ),
        with_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
        parameters:: {
          local block = self,
          new(parameter_name, parameter_value):: (
            {}
            + block.with_parameter_name(parameter_name)
            + block.with_parameter_value(parameter_value)
          ),
          with_parameter_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"parameter_name" expected to be of type "string"';
            {
              parameter_name: converted,
            }
          ),
          with_parameter_value(value):: (
            local converted = value;
            assert std.isString(converted) : '"parameter_value" expected to be of type "string"';
            {
              parameter_value: converted,
            }
          ),
        },
        with_parameters(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters: value,
          }
        ),
        with_parameters_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters+: converted,
          }
        ),
      },
      with_processors(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          processors: value,
        }
      ),
      with_processors_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          processors+: converted,
        }
      ),
    },
    s3_backup_configuration:: {
      local block = self,
      new(bucket_arn, role_arn):: (
        {}
        + block.with_bucket_arn(bucket_arn)
        + block.with_role_arn(role_arn)
      ),
      with_bucket_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_arn" expected to be of type "string"';
        {
          bucket_arn: converted,
        }
      ),
      with_buffering_interval(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_interval" expected to be of type "number"';
        {
          buffering_interval: converted,
        }
      ),
      with_buffering_size(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_size" expected to be of type "number"';
        {
          buffering_size: converted,
        }
      ),
      with_compression_format(value):: (
        local converted = value;
        assert std.isString(converted) : '"compression_format" expected to be of type "string"';
        {
          compression_format: converted,
        }
      ),
      with_error_output_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"error_output_prefix" expected to be of type "string"';
        {
          error_output_prefix: converted,
        }
      ),
      with_kms_key_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
        {
          kms_key_arn: converted,
        }
      ),
      with_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"prefix" expected to be of type "string"';
        {
          prefix: converted,
        }
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      cloudwatch_logging_options:: {
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
        with_log_group_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
          {
            log_group_name: converted,
          }
        ),
        with_log_stream_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
          {
            log_stream_name: converted,
          }
        ),
      },
      with_cloudwatch_logging_options(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options: value,
        }
      ),
      with_cloudwatch_logging_options_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options+: converted,
        }
      ),
    },
    s3_configuration:: {
      local block = self,
      new(bucket_arn, role_arn):: (
        {}
        + block.with_bucket_arn(bucket_arn)
        + block.with_role_arn(role_arn)
      ),
      with_bucket_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_arn" expected to be of type "string"';
        {
          bucket_arn: converted,
        }
      ),
      with_buffering_interval(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_interval" expected to be of type "number"';
        {
          buffering_interval: converted,
        }
      ),
      with_buffering_size(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_size" expected to be of type "number"';
        {
          buffering_size: converted,
        }
      ),
      with_compression_format(value):: (
        local converted = value;
        assert std.isString(converted) : '"compression_format" expected to be of type "string"';
        {
          compression_format: converted,
        }
      ),
      with_error_output_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"error_output_prefix" expected to be of type "string"';
        {
          error_output_prefix: converted,
        }
      ),
      with_kms_key_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
        {
          kms_key_arn: converted,
        }
      ),
      with_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"prefix" expected to be of type "string"';
        {
          prefix: converted,
        }
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      cloudwatch_logging_options:: {
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
        with_log_group_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
          {
            log_group_name: converted,
          }
        ),
        with_log_stream_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
          {
            log_stream_name: converted,
          }
        ),
      },
      with_cloudwatch_logging_options(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options: value,
        }
      ),
      with_cloudwatch_logging_options_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options+: converted,
        }
      ),
    },
    secrets_manager_configuration:: {
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
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      with_secret_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"secret_arn" expected to be of type "string"';
        {
          secret_arn: converted,
        }
      ),
    },
    with_cloudwatch_logging_options(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logging_options: value,
      }
    ),
    with_processing_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration: value,
      }
    ),
    with_s3_backup_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_backup_configuration: value,
      }
    ),
    with_s3_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration: value,
      }
    ),
    with_secrets_manager_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        secrets_manager_configuration: value,
      }
    ),
    with_cloudwatch_logging_options_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logging_options+: converted,
      }
    ),
    with_processing_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration+: converted,
      }
    ),
    with_s3_backup_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_backup_configuration+: converted,
      }
    ),
    with_s3_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration+: converted,
      }
    ),
    with_secrets_manager_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        secrets_manager_configuration+: converted,
      }
    ),
  },
  server_side_encryption:: {
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
    with_key_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"key_arn" expected to be of type "string"';
      {
        key_arn: converted,
      }
    ),
    with_key_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"key_type" expected to be of type "string"';
      {
        key_type: converted,
      }
    ),
  },
  snowflake_configuration:: {
    local block = self,
    new(account_url, database, role_arn, schema, table):: (
      {}
      + block.with_account_url(account_url)
      + block.with_database(database)
      + block.with_role_arn(role_arn)
      + block.with_schema(schema)
      + block.with_table(table)
    ),
    with_account_url(value):: (
      local converted = value;
      assert std.isString(converted) : '"account_url" expected to be of type "string"';
      {
        account_url: converted,
      }
    ),
    with_buffering_interval(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"buffering_interval" expected to be of type "number"';
      {
        buffering_interval: converted,
      }
    ),
    with_buffering_size(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"buffering_size" expected to be of type "number"';
      {
        buffering_size: converted,
      }
    ),
    with_content_column_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"content_column_name" expected to be of type "string"';
      {
        content_column_name: converted,
      }
    ),
    with_data_loading_option(value):: (
      local converted = value;
      assert std.isString(converted) : '"data_loading_option" expected to be of type "string"';
      {
        data_loading_option: converted,
      }
    ),
    with_database(value):: (
      local converted = value;
      assert std.isString(converted) : '"database" expected to be of type "string"';
      {
        database: converted,
      }
    ),
    with_key_passphrase(value):: (
      local converted = value;
      assert std.isString(converted) : '"key_passphrase" expected to be of type "string"';
      {
        key_passphrase: converted,
      }
    ),
    with_metadata_column_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"metadata_column_name" expected to be of type "string"';
      {
        metadata_column_name: converted,
      }
    ),
    with_private_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"private_key" expected to be of type "string"';
      {
        private_key: converted,
      }
    ),
    with_retry_duration(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"retry_duration" expected to be of type "number"';
      {
        retry_duration: converted,
      }
    ),
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    with_s3_backup_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_backup_mode" expected to be of type "string"';
      {
        s3_backup_mode: converted,
      }
    ),
    with_schema(value):: (
      local converted = value;
      assert std.isString(converted) : '"schema" expected to be of type "string"';
      {
        schema: converted,
      }
    ),
    with_table(value):: (
      local converted = value;
      assert std.isString(converted) : '"table" expected to be of type "string"';
      {
        table: converted,
      }
    ),
    with_user(value):: (
      local converted = value;
      assert std.isString(converted) : '"user" expected to be of type "string"';
      {
        user: converted,
      }
    ),
    cloudwatch_logging_options:: {
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
      with_log_group_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
        {
          log_group_name: converted,
        }
      ),
      with_log_stream_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
        {
          log_stream_name: converted,
        }
      ),
    },
    processing_configuration:: {
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
      processors:: {
        local block = self,
        new(type):: (
          {}
          + block.with_type(type)
        ),
        with_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
        parameters:: {
          local block = self,
          new(parameter_name, parameter_value):: (
            {}
            + block.with_parameter_name(parameter_name)
            + block.with_parameter_value(parameter_value)
          ),
          with_parameter_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"parameter_name" expected to be of type "string"';
            {
              parameter_name: converted,
            }
          ),
          with_parameter_value(value):: (
            local converted = value;
            assert std.isString(converted) : '"parameter_value" expected to be of type "string"';
            {
              parameter_value: converted,
            }
          ),
        },
        with_parameters(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters: value,
          }
        ),
        with_parameters_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters+: converted,
          }
        ),
      },
      with_processors(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          processors: value,
        }
      ),
      with_processors_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          processors+: converted,
        }
      ),
    },
    s3_configuration:: {
      local block = self,
      new(bucket_arn, role_arn):: (
        {}
        + block.with_bucket_arn(bucket_arn)
        + block.with_role_arn(role_arn)
      ),
      with_bucket_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_arn" expected to be of type "string"';
        {
          bucket_arn: converted,
        }
      ),
      with_buffering_interval(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_interval" expected to be of type "number"';
        {
          buffering_interval: converted,
        }
      ),
      with_buffering_size(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_size" expected to be of type "number"';
        {
          buffering_size: converted,
        }
      ),
      with_compression_format(value):: (
        local converted = value;
        assert std.isString(converted) : '"compression_format" expected to be of type "string"';
        {
          compression_format: converted,
        }
      ),
      with_error_output_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"error_output_prefix" expected to be of type "string"';
        {
          error_output_prefix: converted,
        }
      ),
      with_kms_key_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
        {
          kms_key_arn: converted,
        }
      ),
      with_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"prefix" expected to be of type "string"';
        {
          prefix: converted,
        }
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      cloudwatch_logging_options:: {
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
        with_log_group_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
          {
            log_group_name: converted,
          }
        ),
        with_log_stream_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
          {
            log_stream_name: converted,
          }
        ),
      },
      with_cloudwatch_logging_options(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options: value,
        }
      ),
      with_cloudwatch_logging_options_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options+: converted,
        }
      ),
    },
    secrets_manager_configuration:: {
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
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      with_secret_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"secret_arn" expected to be of type "string"';
        {
          secret_arn: converted,
        }
      ),
    },
    snowflake_role_configuration:: {
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
      with_snowflake_role(value):: (
        local converted = value;
        assert std.isString(converted) : '"snowflake_role" expected to be of type "string"';
        {
          snowflake_role: converted,
        }
      ),
    },
    snowflake_vpc_configuration:: {
      local block = self,
      new(private_link_vpce_id):: (
        {}
        + block.with_private_link_vpce_id(private_link_vpce_id)
      ),
      with_private_link_vpce_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"private_link_vpce_id" expected to be of type "string"';
        {
          private_link_vpce_id: converted,
        }
      ),
    },
    with_cloudwatch_logging_options(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logging_options: value,
      }
    ),
    with_processing_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration: value,
      }
    ),
    with_s3_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration: value,
      }
    ),
    with_secrets_manager_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        secrets_manager_configuration: value,
      }
    ),
    with_snowflake_role_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        snowflake_role_configuration: value,
      }
    ),
    with_snowflake_vpc_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        snowflake_vpc_configuration: value,
      }
    ),
    with_cloudwatch_logging_options_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logging_options+: converted,
      }
    ),
    with_processing_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration+: converted,
      }
    ),
    with_s3_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration+: converted,
      }
    ),
    with_secrets_manager_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        secrets_manager_configuration+: converted,
      }
    ),
    with_snowflake_role_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        snowflake_role_configuration+: converted,
      }
    ),
    with_snowflake_vpc_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        snowflake_vpc_configuration+: converted,
      }
    ),
  },
  splunk_configuration:: {
    local block = self,
    new(hec_endpoint):: (
      {}
      + block.with_hec_endpoint(hec_endpoint)
    ),
    with_buffering_interval(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"buffering_interval" expected to be of type "number"';
      {
        buffering_interval: converted,
      }
    ),
    with_buffering_size(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"buffering_size" expected to be of type "number"';
      {
        buffering_size: converted,
      }
    ),
    with_hec_acknowledgment_timeout(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"hec_acknowledgment_timeout" expected to be of type "number"';
      {
        hec_acknowledgment_timeout: converted,
      }
    ),
    with_hec_endpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"hec_endpoint" expected to be of type "string"';
      {
        hec_endpoint: converted,
      }
    ),
    with_hec_endpoint_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"hec_endpoint_type" expected to be of type "string"';
      {
        hec_endpoint_type: converted,
      }
    ),
    with_hec_token(value):: (
      local converted = value;
      assert std.isString(converted) : '"hec_token" expected to be of type "string"';
      {
        hec_token: converted,
      }
    ),
    with_retry_duration(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"retry_duration" expected to be of type "number"';
      {
        retry_duration: converted,
      }
    ),
    with_s3_backup_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_backup_mode" expected to be of type "string"';
      {
        s3_backup_mode: converted,
      }
    ),
    cloudwatch_logging_options:: {
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
      with_log_group_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
        {
          log_group_name: converted,
        }
      ),
      with_log_stream_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
        {
          log_stream_name: converted,
        }
      ),
    },
    processing_configuration:: {
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
      processors:: {
        local block = self,
        new(type):: (
          {}
          + block.with_type(type)
        ),
        with_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
        parameters:: {
          local block = self,
          new(parameter_name, parameter_value):: (
            {}
            + block.with_parameter_name(parameter_name)
            + block.with_parameter_value(parameter_value)
          ),
          with_parameter_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"parameter_name" expected to be of type "string"';
            {
              parameter_name: converted,
            }
          ),
          with_parameter_value(value):: (
            local converted = value;
            assert std.isString(converted) : '"parameter_value" expected to be of type "string"';
            {
              parameter_value: converted,
            }
          ),
        },
        with_parameters(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters: value,
          }
        ),
        with_parameters_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters+: converted,
          }
        ),
      },
      with_processors(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          processors: value,
        }
      ),
      with_processors_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          processors+: converted,
        }
      ),
    },
    s3_configuration:: {
      local block = self,
      new(bucket_arn, role_arn):: (
        {}
        + block.with_bucket_arn(bucket_arn)
        + block.with_role_arn(role_arn)
      ),
      with_bucket_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_arn" expected to be of type "string"';
        {
          bucket_arn: converted,
        }
      ),
      with_buffering_interval(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_interval" expected to be of type "number"';
        {
          buffering_interval: converted,
        }
      ),
      with_buffering_size(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_size" expected to be of type "number"';
        {
          buffering_size: converted,
        }
      ),
      with_compression_format(value):: (
        local converted = value;
        assert std.isString(converted) : '"compression_format" expected to be of type "string"';
        {
          compression_format: converted,
        }
      ),
      with_error_output_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"error_output_prefix" expected to be of type "string"';
        {
          error_output_prefix: converted,
        }
      ),
      with_kms_key_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
        {
          kms_key_arn: converted,
        }
      ),
      with_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"prefix" expected to be of type "string"';
        {
          prefix: converted,
        }
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      cloudwatch_logging_options:: {
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
        with_log_group_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
          {
            log_group_name: converted,
          }
        ),
        with_log_stream_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
          {
            log_stream_name: converted,
          }
        ),
      },
      with_cloudwatch_logging_options(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options: value,
        }
      ),
      with_cloudwatch_logging_options_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options+: converted,
        }
      ),
    },
    secrets_manager_configuration:: {
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
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      with_secret_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"secret_arn" expected to be of type "string"';
        {
          secret_arn: converted,
        }
      ),
    },
    with_cloudwatch_logging_options(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logging_options: value,
      }
    ),
    with_processing_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration: value,
      }
    ),
    with_s3_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration: value,
      }
    ),
    with_secrets_manager_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        secrets_manager_configuration: value,
      }
    ),
    with_cloudwatch_logging_options_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logging_options+: converted,
      }
    ),
    with_processing_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration+: converted,
      }
    ),
    with_s3_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration+: converted,
      }
    ),
    with_secrets_manager_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        secrets_manager_configuration+: converted,
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
  with_elasticsearch_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      elasticsearch_configuration: value,
    }
  ),
  with_extended_s3_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      extended_s3_configuration: value,
    }
  ),
  with_http_endpoint_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      http_endpoint_configuration: value,
    }
  ),
  with_iceberg_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      iceberg_configuration: value,
    }
  ),
  with_kinesis_source_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kinesis_source_configuration: value,
    }
  ),
  with_msk_source_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      msk_source_configuration: value,
    }
  ),
  with_opensearch_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      opensearch_configuration: value,
    }
  ),
  with_opensearchserverless_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      opensearchserverless_configuration: value,
    }
  ),
  with_redshift_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      redshift_configuration: value,
    }
  ),
  with_server_side_encryption(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      server_side_encryption: value,
    }
  ),
  with_snowflake_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      snowflake_configuration: value,
    }
  ),
  with_splunk_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      splunk_configuration: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_elasticsearch_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      elasticsearch_configuration+: converted,
    }
  ),
  with_extended_s3_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      extended_s3_configuration+: converted,
    }
  ),
  with_http_endpoint_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      http_endpoint_configuration+: converted,
    }
  ),
  with_iceberg_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      iceberg_configuration+: converted,
    }
  ),
  with_kinesis_source_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kinesis_source_configuration+: converted,
    }
  ),
  with_msk_source_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      msk_source_configuration+: converted,
    }
  ),
  with_opensearch_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      opensearch_configuration+: converted,
    }
  ),
  with_opensearchserverless_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      opensearchserverless_configuration+: converted,
    }
  ),
  with_redshift_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      redshift_configuration+: converted,
    }
  ),
  with_server_side_encryption_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      server_side_encryption+: converted,
    }
  ),
  with_snowflake_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      snowflake_configuration+: converted,
    }
  ),
  with_splunk_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      splunk_configuration+: converted,
    }
  ),
}
