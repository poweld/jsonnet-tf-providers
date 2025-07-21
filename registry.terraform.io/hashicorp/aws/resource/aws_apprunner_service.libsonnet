{
  local block = self,
  new(service_name):: (
    {}
    + block.with_service_name(service_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_auto_scaling_configuration_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"auto_scaling_configuration_arn" expected to be of type "string"';
    {
      auto_scaling_configuration_arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  with_service_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_id" expected to be of type "string"';
    {
      service_id: converted,
    }
  ),
  with_service_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_name" expected to be of type "string"';
    {
      service_name: converted,
    }
  ),
  with_service_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_url" expected to be of type "string"';
    {
      service_url: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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
  encryption_configuration:: {
    local block = self,
    new(kms_key):: (
      {}
      + block.with_kms_key(kms_key)
    ),
    with_kms_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key" expected to be of type "string"';
      {
        kms_key: converted,
      }
    ),
  },
  health_check_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_healthy_threshold(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"healthy_threshold" expected to be of type "number"';
      {
        healthy_threshold: converted,
      }
    ),
    with_interval(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"interval" expected to be of type "number"';
      {
        interval: converted,
      }
    ),
    with_path(value):: (
      local converted = value;
      assert std.isString(converted) : '"path" expected to be of type "string"';
      {
        path: converted,
      }
    ),
    with_protocol(value):: (
      local converted = value;
      assert std.isString(converted) : '"protocol" expected to be of type "string"';
      {
        protocol: converted,
      }
    ),
    with_timeout(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"timeout" expected to be of type "number"';
      {
        timeout: converted,
      }
    ),
    with_unhealthy_threshold(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"unhealthy_threshold" expected to be of type "number"';
      {
        unhealthy_threshold: converted,
      }
    ),
  },
  instance_configuration:: {
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
    with_instance_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"instance_role_arn" expected to be of type "string"';
      {
        instance_role_arn: converted,
      }
    ),
    with_memory(value):: (
      local converted = value;
      assert std.isString(converted) : '"memory" expected to be of type "string"';
      {
        memory: converted,
      }
    ),
  },
  network_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_ip_address_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"ip_address_type" expected to be of type "string"';
      {
        ip_address_type: converted,
      }
    ),
    egress_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      with_egress_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"egress_type" expected to be of type "string"';
        {
          egress_type: converted,
        }
      ),
      with_vpc_connector_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"vpc_connector_arn" expected to be of type "string"';
        {
          vpc_connector_arn: converted,
        }
      ),
    },
    ingress_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      with_is_publicly_accessible(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"is_publicly_accessible" expected to be of type "bool"';
        {
          is_publicly_accessible: converted,
        }
      ),
    },
    with_egress_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        egress_configuration: value,
      }
    ),
    with_ingress_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ingress_configuration: value,
      }
    ),
    with_egress_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        egress_configuration+: converted,
      }
    ),
    with_ingress_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ingress_configuration+: converted,
      }
    ),
  },
  observability_configuration:: {
    local block = self,
    new(observability_enabled):: (
      {}
      + block.with_observability_enabled(observability_enabled)
    ),
    with_observability_configuration_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"observability_configuration_arn" expected to be of type "string"';
      {
        observability_configuration_arn: converted,
      }
    ),
    with_observability_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"observability_enabled" expected to be of type "bool"';
      {
        observability_enabled: converted,
      }
    ),
  },
  source_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_auto_deployments_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"auto_deployments_enabled" expected to be of type "bool"';
      {
        auto_deployments_enabled: converted,
      }
    ),
    authentication_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      with_access_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"access_role_arn" expected to be of type "string"';
        {
          access_role_arn: converted,
        }
      ),
      with_connection_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"connection_arn" expected to be of type "string"';
        {
          connection_arn: converted,
        }
      ),
    },
    code_repository:: {
      local block = self,
      new(repository_url):: (
        {}
        + block.with_repository_url(repository_url)
      ),
      with_repository_url(value):: (
        local converted = value;
        assert std.isString(converted) : '"repository_url" expected to be of type "string"';
        {
          repository_url: converted,
        }
      ),
      with_source_directory(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_directory" expected to be of type "string"';
        {
          source_directory: converted,
        }
      ),
      code_configuration:: {
        local block = self,
        new(configuration_source):: (
          {}
          + block.with_configuration_source(configuration_source)
        ),
        with_configuration_source(value):: (
          local converted = value;
          assert std.isString(converted) : '"configuration_source" expected to be of type "string"';
          {
            configuration_source: converted,
          }
        ),
        code_configuration_values:: {
          local block = self,
          new(runtime):: (
            {}
            + block.with_runtime(runtime)
          ),
          with_build_command(value):: (
            local converted = value;
            assert std.isString(converted) : '"build_command" expected to be of type "string"';
            {
              build_command: converted,
            }
          ),
          with_port(value):: (
            local converted = value;
            assert std.isString(converted) : '"port" expected to be of type "string"';
            {
              port: converted,
            }
          ),
          with_runtime(value):: (
            local converted = value;
            assert std.isString(converted) : '"runtime" expected to be of type "string"';
            {
              runtime: converted,
            }
          ),
          with_runtime_environment_secrets(value):: (
            local converted = value;
            assert std.isObject(converted) : '"runtime_environment_secrets" expected to be of type "map"';
            {
              runtime_environment_secrets: converted,
            }
          ),
          with_runtime_environment_variables(value):: (
            local converted = value;
            assert std.isObject(converted) : '"runtime_environment_variables" expected to be of type "map"';
            {
              runtime_environment_variables: converted,
            }
          ),
          with_start_command(value):: (
            local converted = value;
            assert std.isString(converted) : '"start_command" expected to be of type "string"';
            {
              start_command: converted,
            }
          ),
        },
        with_code_configuration_values(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            code_configuration_values: value,
          }
        ),
        with_code_configuration_values_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            code_configuration_values+: converted,
          }
        ),
      },
      source_code_version:: {
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
      with_code_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          code_configuration: value,
        }
      ),
      with_source_code_version(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          source_code_version: value,
        }
      ),
      with_code_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          code_configuration+: converted,
        }
      ),
      with_source_code_version_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          source_code_version+: converted,
        }
      ),
    },
    image_repository:: {
      local block = self,
      new(image_identifier, image_repository_type):: (
        {}
        + block.with_image_identifier(image_identifier)
        + block.with_image_repository_type(image_repository_type)
      ),
      with_image_identifier(value):: (
        local converted = value;
        assert std.isString(converted) : '"image_identifier" expected to be of type "string"';
        {
          image_identifier: converted,
        }
      ),
      with_image_repository_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"image_repository_type" expected to be of type "string"';
        {
          image_repository_type: converted,
        }
      ),
      image_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        with_port(value):: (
          local converted = value;
          assert std.isString(converted) : '"port" expected to be of type "string"';
          {
            port: converted,
          }
        ),
        with_runtime_environment_secrets(value):: (
          local converted = value;
          assert std.isObject(converted) : '"runtime_environment_secrets" expected to be of type "map"';
          {
            runtime_environment_secrets: converted,
          }
        ),
        with_runtime_environment_variables(value):: (
          local converted = value;
          assert std.isObject(converted) : '"runtime_environment_variables" expected to be of type "map"';
          {
            runtime_environment_variables: converted,
          }
        ),
        with_start_command(value):: (
          local converted = value;
          assert std.isString(converted) : '"start_command" expected to be of type "string"';
          {
            start_command: converted,
          }
        ),
      },
      with_image_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          image_configuration: value,
        }
      ),
      with_image_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          image_configuration+: converted,
        }
      ),
    },
    with_authentication_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        authentication_configuration: value,
      }
    ),
    with_code_repository(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_repository: value,
      }
    ),
    with_image_repository(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        image_repository: value,
      }
    ),
    with_authentication_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        authentication_configuration+: converted,
      }
    ),
    with_code_repository_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_repository+: converted,
      }
    ),
    with_image_repository_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        image_repository+: converted,
      }
    ),
  },
  with_encryption_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_configuration: value,
    }
  ),
  with_health_check_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      health_check_configuration: value,
    }
  ),
  with_instance_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_configuration: value,
    }
  ),
  with_network_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_configuration: value,
    }
  ),
  with_observability_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      observability_configuration: value,
    }
  ),
  with_source_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source_configuration: value,
    }
  ),
  with_encryption_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_configuration+: converted,
    }
  ),
  with_health_check_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      health_check_configuration+: converted,
    }
  ),
  with_instance_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_configuration+: converted,
    }
  ),
  with_network_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_configuration+: converted,
    }
  ),
  with_observability_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      observability_configuration+: converted,
    }
  ),
  with_source_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source_configuration+: converted,
    }
  ),
}
