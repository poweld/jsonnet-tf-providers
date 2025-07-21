{
  local block = self,
  new(role_arn):: (
    {}
    + block.with_role_arn(role_arn)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
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
  with_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
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
  data_quality_app_specification:: {
    local block = self,
    new(image_uri):: (
      {}
      + block.with_image_uri(image_uri)
    ),
    with_environment(value):: (
      local converted = value;
      assert std.isObject(converted) : '"environment" expected to be of type "map"';
      {
        environment: converted,
      }
    ),
    with_image_uri(value):: (
      local converted = value;
      assert std.isString(converted) : '"image_uri" expected to be of type "string"';
      {
        image_uri: converted,
      }
    ),
    with_post_analytics_processor_source_uri(value):: (
      local converted = value;
      assert std.isString(converted) : '"post_analytics_processor_source_uri" expected to be of type "string"';
      {
        post_analytics_processor_source_uri: converted,
      }
    ),
    with_record_preprocessor_source_uri(value):: (
      local converted = value;
      assert std.isString(converted) : '"record_preprocessor_source_uri" expected to be of type "string"';
      {
        record_preprocessor_source_uri: converted,
      }
    ),
  },
  data_quality_baseline_config:: {
    local block = self,
    new():: (
      {}
    ),
    constraints_resource:: {
      local block = self,
      new():: (
        {}
      ),
      with_s3_uri(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_uri" expected to be of type "string"';
        {
          s3_uri: converted,
        }
      ),
    },
    statistics_resource:: {
      local block = self,
      new():: (
        {}
      ),
      with_s3_uri(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_uri" expected to be of type "string"';
        {
          s3_uri: converted,
        }
      ),
    },
    with_constraints_resource(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        constraints_resource: value,
      }
    ),
    with_statistics_resource(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        statistics_resource: value,
      }
    ),
    with_constraints_resource_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        constraints_resource+: converted,
      }
    ),
    with_statistics_resource_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        statistics_resource+: converted,
      }
    ),
  },
  data_quality_job_input:: {
    local block = self,
    new():: (
      {}
    ),
    batch_transform_input:: {
      local block = self,
      new(data_captured_destination_s3_uri):: (
        {}
        + block.with_data_captured_destination_s3_uri(data_captured_destination_s3_uri)
      ),
      with_data_captured_destination_s3_uri(value):: (
        local converted = value;
        assert std.isString(converted) : '"data_captured_destination_s3_uri" expected to be of type "string"';
        {
          data_captured_destination_s3_uri: converted,
        }
      ),
      with_local_path(value):: (
        local converted = value;
        assert std.isString(converted) : '"local_path" expected to be of type "string"';
        {
          local_path: converted,
        }
      ),
      with_s3_data_distribution_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_data_distribution_type" expected to be of type "string"';
        {
          s3_data_distribution_type: converted,
        }
      ),
      with_s3_input_mode(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_input_mode" expected to be of type "string"';
        {
          s3_input_mode: converted,
        }
      ),
      dataset_format:: {
        local block = self,
        new():: (
          {}
        ),
        csv:: {
          local block = self,
          new():: (
            {}
          ),
          with_header(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"header" expected to be of type "bool"';
            {
              header: converted,
            }
          ),
        },
        json:: {
          local block = self,
          new():: (
            {}
          ),
          with_line(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"line" expected to be of type "bool"';
            {
              line: converted,
            }
          ),
        },
        with_csv(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            csv: value,
          }
        ),
        with_json(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            json: value,
          }
        ),
        with_csv_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            csv+: converted,
          }
        ),
        with_json_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            json+: converted,
          }
        ),
      },
      with_dataset_format(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dataset_format: value,
        }
      ),
      with_dataset_format_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dataset_format+: converted,
        }
      ),
    },
    endpoint_input:: {
      local block = self,
      new(endpoint_name):: (
        {}
        + block.with_endpoint_name(endpoint_name)
      ),
      with_endpoint_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"endpoint_name" expected to be of type "string"';
        {
          endpoint_name: converted,
        }
      ),
      with_local_path(value):: (
        local converted = value;
        assert std.isString(converted) : '"local_path" expected to be of type "string"';
        {
          local_path: converted,
        }
      ),
      with_s3_data_distribution_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_data_distribution_type" expected to be of type "string"';
        {
          s3_data_distribution_type: converted,
        }
      ),
      with_s3_input_mode(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_input_mode" expected to be of type "string"';
        {
          s3_input_mode: converted,
        }
      ),
    },
    with_batch_transform_input(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        batch_transform_input: value,
      }
    ),
    with_endpoint_input(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        endpoint_input: value,
      }
    ),
    with_batch_transform_input_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        batch_transform_input+: converted,
      }
    ),
    with_endpoint_input_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        endpoint_input+: converted,
      }
    ),
  },
  data_quality_job_output_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_kms_key_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
      {
        kms_key_id: converted,
      }
    ),
    monitoring_outputs:: {
      local block = self,
      new():: (
        {}
      ),
      s3_output:: {
        local block = self,
        new(s3_uri):: (
          {}
          + block.with_s3_uri(s3_uri)
        ),
        with_local_path(value):: (
          local converted = value;
          assert std.isString(converted) : '"local_path" expected to be of type "string"';
          {
            local_path: converted,
          }
        ),
        with_s3_upload_mode(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_upload_mode" expected to be of type "string"';
          {
            s3_upload_mode: converted,
          }
        ),
        with_s3_uri(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_uri" expected to be of type "string"';
          {
            s3_uri: converted,
          }
        ),
      },
      with_s3_output(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_output: value,
        }
      ),
      with_s3_output_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_output+: converted,
        }
      ),
    },
    with_monitoring_outputs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        monitoring_outputs: value,
      }
    ),
    with_monitoring_outputs_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        monitoring_outputs+: converted,
      }
    ),
  },
  job_resources:: {
    local block = self,
    new():: (
      {}
    ),
    cluster_config:: {
      local block = self,
      new(instance_count, instance_type, volume_size_in_gb):: (
        {}
        + block.with_instance_count(instance_count)
        + block.with_instance_type(instance_type)
        + block.with_volume_size_in_gb(volume_size_in_gb)
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
      with_volume_kms_key_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"volume_kms_key_id" expected to be of type "string"';
        {
          volume_kms_key_id: converted,
        }
      ),
      with_volume_size_in_gb(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"volume_size_in_gb" expected to be of type "number"';
        {
          volume_size_in_gb: converted,
        }
      ),
    },
    with_cluster_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cluster_config: value,
      }
    ),
    with_cluster_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cluster_config+: converted,
      }
    ),
  },
  network_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_enable_inter_container_traffic_encryption(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_inter_container_traffic_encryption" expected to be of type "bool"';
      {
        enable_inter_container_traffic_encryption: converted,
      }
    ),
    with_enable_network_isolation(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_network_isolation" expected to be of type "bool"';
      {
        enable_network_isolation: converted,
      }
    ),
    vpc_config:: {
      local block = self,
      new(security_group_ids, subnets):: (
        {}
        + block.with_security_group_ids(security_group_ids)
        + block.with_subnets(subnets)
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
    with_vpc_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vpc_config: value,
      }
    ),
    with_vpc_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vpc_config+: converted,
      }
    ),
  },
  stopping_condition:: {
    local block = self,
    new():: (
      {}
    ),
    with_max_runtime_in_seconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_runtime_in_seconds" expected to be of type "number"';
      {
        max_runtime_in_seconds: converted,
      }
    ),
  },
  with_data_quality_app_specification(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_quality_app_specification: value,
    }
  ),
  with_data_quality_baseline_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_quality_baseline_config: value,
    }
  ),
  with_data_quality_job_input(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_quality_job_input: value,
    }
  ),
  with_data_quality_job_output_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_quality_job_output_config: value,
    }
  ),
  with_job_resources(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      job_resources: value,
    }
  ),
  with_network_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_config: value,
    }
  ),
  with_stopping_condition(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      stopping_condition: value,
    }
  ),
  with_data_quality_app_specification_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_quality_app_specification+: converted,
    }
  ),
  with_data_quality_baseline_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_quality_baseline_config+: converted,
    }
  ),
  with_data_quality_job_input_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_quality_job_input+: converted,
    }
  ),
  with_data_quality_job_output_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_quality_job_output_config+: converted,
    }
  ),
  with_job_resources_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      job_resources+: converted,
    }
  ),
  with_network_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_config+: converted,
    }
  ),
  with_stopping_condition_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      stopping_condition+: converted,
    }
  ),
}
