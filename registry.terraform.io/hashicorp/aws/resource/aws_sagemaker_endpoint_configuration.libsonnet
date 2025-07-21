{
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
  async_inference_config:: {
    local block = self,
    new():: (
      {}
    ),
    client_config:: {
      local block = self,
      new():: (
        {}
      ),
      with_max_concurrent_invocations_per_instance(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"max_concurrent_invocations_per_instance" expected to be of type "number"';
        {
          max_concurrent_invocations_per_instance: converted,
        }
      ),
    },
    output_config:: {
      local block = self,
      new(s3_output_path):: (
        {}
        + block.with_s3_output_path(s3_output_path)
      ),
      with_kms_key_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
        {
          kms_key_id: converted,
        }
      ),
      with_s3_failure_path(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_failure_path" expected to be of type "string"';
        {
          s3_failure_path: converted,
        }
      ),
      with_s3_output_path(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_output_path" expected to be of type "string"';
        {
          s3_output_path: converted,
        }
      ),
      notification_config:: {
        local block = self,
        new():: (
          {}
        ),
        with_error_topic(value):: (
          local converted = value;
          assert std.isString(converted) : '"error_topic" expected to be of type "string"';
          {
            error_topic: converted,
          }
        ),
        with_include_inference_response_in(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"include_inference_response_in" expected to be of type "set"';
          {
            include_inference_response_in: converted,
          }
        ),
        with_include_inference_response_in_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"include_inference_response_in" expected to be of type "set"';
          {
            include_inference_response_in+: converted,
          }
        ),
        with_success_topic(value):: (
          local converted = value;
          assert std.isString(converted) : '"success_topic" expected to be of type "string"';
          {
            success_topic: converted,
          }
        ),
      },
      with_notification_config(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          notification_config: value,
        }
      ),
      with_notification_config_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          notification_config+: converted,
        }
      ),
    },
    with_client_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        client_config: value,
      }
    ),
    with_output_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        output_config: value,
      }
    ),
    with_client_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        client_config+: converted,
      }
    ),
    with_output_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        output_config+: converted,
      }
    ),
  },
  data_capture_config:: {
    local block = self,
    new(destination_s3_uri, initial_sampling_percentage):: (
      {}
      + block.with_destination_s3_uri(destination_s3_uri)
      + block.with_initial_sampling_percentage(initial_sampling_percentage)
    ),
    with_destination_s3_uri(value):: (
      local converted = value;
      assert std.isString(converted) : '"destination_s3_uri" expected to be of type "string"';
      {
        destination_s3_uri: converted,
      }
    ),
    with_enable_capture(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_capture" expected to be of type "bool"';
      {
        enable_capture: converted,
      }
    ),
    with_initial_sampling_percentage(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"initial_sampling_percentage" expected to be of type "number"';
      {
        initial_sampling_percentage: converted,
      }
    ),
    with_kms_key_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
      {
        kms_key_id: converted,
      }
    ),
    capture_content_type_header:: {
      local block = self,
      new():: (
        {}
      ),
      with_csv_content_types(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"csv_content_types" expected to be of type "set"';
        {
          csv_content_types: converted,
        }
      ),
      with_csv_content_types_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"csv_content_types" expected to be of type "set"';
        {
          csv_content_types+: converted,
        }
      ),
      with_json_content_types(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"json_content_types" expected to be of type "set"';
        {
          json_content_types: converted,
        }
      ),
      with_json_content_types_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"json_content_types" expected to be of type "set"';
        {
          json_content_types+: converted,
        }
      ),
    },
    capture_options:: {
      local block = self,
      new(capture_mode):: (
        {}
        + block.with_capture_mode(capture_mode)
      ),
      with_capture_mode(value):: (
        local converted = value;
        assert std.isString(converted) : '"capture_mode" expected to be of type "string"';
        {
          capture_mode: converted,
        }
      ),
    },
    with_capture_content_type_header(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        capture_content_type_header: value,
      }
    ),
    with_capture_options(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        capture_options: value,
      }
    ),
    with_capture_content_type_header_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        capture_content_type_header+: converted,
      }
    ),
    with_capture_options_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        capture_options+: converted,
      }
    ),
  },
  production_variants:: {
    local block = self,
    new(model_name):: (
      {}
      + block.with_model_name(model_name)
    ),
    with_accelerator_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"accelerator_type" expected to be of type "string"';
      {
        accelerator_type: converted,
      }
    ),
    with_container_startup_health_check_timeout_in_seconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"container_startup_health_check_timeout_in_seconds" expected to be of type "number"';
      {
        container_startup_health_check_timeout_in_seconds: converted,
      }
    ),
    with_enable_ssm_access(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_ssm_access" expected to be of type "bool"';
      {
        enable_ssm_access: converted,
      }
    ),
    with_inference_ami_version(value):: (
      local converted = value;
      assert std.isString(converted) : '"inference_ami_version" expected to be of type "string"';
      {
        inference_ami_version: converted,
      }
    ),
    with_initial_instance_count(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"initial_instance_count" expected to be of type "number"';
      {
        initial_instance_count: converted,
      }
    ),
    with_initial_variant_weight(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"initial_variant_weight" expected to be of type "number"';
      {
        initial_variant_weight: converted,
      }
    ),
    with_instance_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"instance_type" expected to be of type "string"';
      {
        instance_type: converted,
      }
    ),
    with_model_data_download_timeout_in_seconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"model_data_download_timeout_in_seconds" expected to be of type "number"';
      {
        model_data_download_timeout_in_seconds: converted,
      }
    ),
    with_model_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"model_name" expected to be of type "string"';
      {
        model_name: converted,
      }
    ),
    with_variant_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"variant_name" expected to be of type "string"';
      {
        variant_name: converted,
      }
    ),
    with_volume_size_in_gb(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"volume_size_in_gb" expected to be of type "number"';
      {
        volume_size_in_gb: converted,
      }
    ),
    core_dump_config:: {
      local block = self,
      new(destination_s3_uri):: (
        {}
        + block.with_destination_s3_uri(destination_s3_uri)
      ),
      with_destination_s3_uri(value):: (
        local converted = value;
        assert std.isString(converted) : '"destination_s3_uri" expected to be of type "string"';
        {
          destination_s3_uri: converted,
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
    managed_instance_scaling:: {
      local block = self,
      new():: (
        {}
      ),
      with_max_instance_count(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"max_instance_count" expected to be of type "number"';
        {
          max_instance_count: converted,
        }
      ),
      with_min_instance_count(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"min_instance_count" expected to be of type "number"';
        {
          min_instance_count: converted,
        }
      ),
      with_status(value):: (
        local converted = value;
        assert std.isString(converted) : '"status" expected to be of type "string"';
        {
          status: converted,
        }
      ),
    },
    routing_config:: {
      local block = self,
      new(routing_strategy):: (
        {}
        + block.with_routing_strategy(routing_strategy)
      ),
      with_routing_strategy(value):: (
        local converted = value;
        assert std.isString(converted) : '"routing_strategy" expected to be of type "string"';
        {
          routing_strategy: converted,
        }
      ),
    },
    serverless_config:: {
      local block = self,
      new(max_concurrency, memory_size_in_mb):: (
        {}
        + block.with_max_concurrency(max_concurrency)
        + block.with_memory_size_in_mb(memory_size_in_mb)
      ),
      with_max_concurrency(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"max_concurrency" expected to be of type "number"';
        {
          max_concurrency: converted,
        }
      ),
      with_memory_size_in_mb(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"memory_size_in_mb" expected to be of type "number"';
        {
          memory_size_in_mb: converted,
        }
      ),
      with_provisioned_concurrency(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"provisioned_concurrency" expected to be of type "number"';
        {
          provisioned_concurrency: converted,
        }
      ),
    },
    with_core_dump_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        core_dump_config: value,
      }
    ),
    with_managed_instance_scaling(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        managed_instance_scaling: value,
      }
    ),
    with_routing_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        routing_config: value,
      }
    ),
    with_serverless_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        serverless_config: value,
      }
    ),
    with_core_dump_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        core_dump_config+: converted,
      }
    ),
    with_managed_instance_scaling_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        managed_instance_scaling+: converted,
      }
    ),
    with_routing_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        routing_config+: converted,
      }
    ),
    with_serverless_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        serverless_config+: converted,
      }
    ),
  },
  shadow_production_variants:: {
    local block = self,
    new(model_name):: (
      {}
      + block.with_model_name(model_name)
    ),
    with_accelerator_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"accelerator_type" expected to be of type "string"';
      {
        accelerator_type: converted,
      }
    ),
    with_container_startup_health_check_timeout_in_seconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"container_startup_health_check_timeout_in_seconds" expected to be of type "number"';
      {
        container_startup_health_check_timeout_in_seconds: converted,
      }
    ),
    with_enable_ssm_access(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_ssm_access" expected to be of type "bool"';
      {
        enable_ssm_access: converted,
      }
    ),
    with_inference_ami_version(value):: (
      local converted = value;
      assert std.isString(converted) : '"inference_ami_version" expected to be of type "string"';
      {
        inference_ami_version: converted,
      }
    ),
    with_initial_instance_count(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"initial_instance_count" expected to be of type "number"';
      {
        initial_instance_count: converted,
      }
    ),
    with_initial_variant_weight(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"initial_variant_weight" expected to be of type "number"';
      {
        initial_variant_weight: converted,
      }
    ),
    with_instance_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"instance_type" expected to be of type "string"';
      {
        instance_type: converted,
      }
    ),
    with_model_data_download_timeout_in_seconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"model_data_download_timeout_in_seconds" expected to be of type "number"';
      {
        model_data_download_timeout_in_seconds: converted,
      }
    ),
    with_model_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"model_name" expected to be of type "string"';
      {
        model_name: converted,
      }
    ),
    with_variant_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"variant_name" expected to be of type "string"';
      {
        variant_name: converted,
      }
    ),
    with_volume_size_in_gb(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"volume_size_in_gb" expected to be of type "number"';
      {
        volume_size_in_gb: converted,
      }
    ),
    core_dump_config:: {
      local block = self,
      new(destination_s3_uri, kms_key_id):: (
        {}
        + block.with_destination_s3_uri(destination_s3_uri)
        + block.with_kms_key_id(kms_key_id)
      ),
      with_destination_s3_uri(value):: (
        local converted = value;
        assert std.isString(converted) : '"destination_s3_uri" expected to be of type "string"';
        {
          destination_s3_uri: converted,
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
    managed_instance_scaling:: {
      local block = self,
      new():: (
        {}
      ),
      with_max_instance_count(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"max_instance_count" expected to be of type "number"';
        {
          max_instance_count: converted,
        }
      ),
      with_min_instance_count(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"min_instance_count" expected to be of type "number"';
        {
          min_instance_count: converted,
        }
      ),
      with_status(value):: (
        local converted = value;
        assert std.isString(converted) : '"status" expected to be of type "string"';
        {
          status: converted,
        }
      ),
    },
    routing_config:: {
      local block = self,
      new(routing_strategy):: (
        {}
        + block.with_routing_strategy(routing_strategy)
      ),
      with_routing_strategy(value):: (
        local converted = value;
        assert std.isString(converted) : '"routing_strategy" expected to be of type "string"';
        {
          routing_strategy: converted,
        }
      ),
    },
    serverless_config:: {
      local block = self,
      new(max_concurrency, memory_size_in_mb):: (
        {}
        + block.with_max_concurrency(max_concurrency)
        + block.with_memory_size_in_mb(memory_size_in_mb)
      ),
      with_max_concurrency(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"max_concurrency" expected to be of type "number"';
        {
          max_concurrency: converted,
        }
      ),
      with_memory_size_in_mb(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"memory_size_in_mb" expected to be of type "number"';
        {
          memory_size_in_mb: converted,
        }
      ),
      with_provisioned_concurrency(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"provisioned_concurrency" expected to be of type "number"';
        {
          provisioned_concurrency: converted,
        }
      ),
    },
    with_core_dump_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        core_dump_config: value,
      }
    ),
    with_managed_instance_scaling(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        managed_instance_scaling: value,
      }
    ),
    with_routing_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        routing_config: value,
      }
    ),
    with_serverless_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        serverless_config: value,
      }
    ),
    with_core_dump_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        core_dump_config+: converted,
      }
    ),
    with_managed_instance_scaling_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        managed_instance_scaling+: converted,
      }
    ),
    with_routing_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        routing_config+: converted,
      }
    ),
    with_serverless_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        serverless_config+: converted,
      }
    ),
  },
  with_async_inference_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      async_inference_config: value,
    }
  ),
  with_data_capture_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_capture_config: value,
    }
  ),
  with_production_variants(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      production_variants: value,
    }
  ),
  with_shadow_production_variants(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      shadow_production_variants: value,
    }
  ),
  with_async_inference_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      async_inference_config+: converted,
    }
  ),
  with_data_capture_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_capture_config+: converted,
    }
  ),
  with_production_variants_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      production_variants+: converted,
    }
  ),
  with_shadow_production_variants_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      shadow_production_variants+: converted,
    }
  ),
}
