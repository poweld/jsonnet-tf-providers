{
  local block = self,
  new(execution_role_arn):: (
    {}
    + block.with_execution_role_arn(execution_role_arn)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_enable_network_isolation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_network_isolation" expected to be of type "bool"';
    {
      enable_network_isolation: converted,
    }
  ),
  with_execution_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"execution_role_arn" expected to be of type "string"';
    {
      execution_role_arn: converted,
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
  container:: {
    local block = self,
    new():: (
      {}
    ),
    with_container_hostname(value):: (
      local converted = value;
      assert std.isString(converted) : '"container_hostname" expected to be of type "string"';
      {
        container_hostname: converted,
      }
    ),
    with_environment(value):: (
      local converted = value;
      assert std.isObject(converted) : '"environment" expected to be of type "map"';
      {
        environment: converted,
      }
    ),
    with_image(value):: (
      local converted = value;
      assert std.isString(converted) : '"image" expected to be of type "string"';
      {
        image: converted,
      }
    ),
    with_inference_specification_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"inference_specification_name" expected to be of type "string"';
      {
        inference_specification_name: converted,
      }
    ),
    with_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"mode" expected to be of type "string"';
      {
        mode: converted,
      }
    ),
    with_model_data_url(value):: (
      local converted = value;
      assert std.isString(converted) : '"model_data_url" expected to be of type "string"';
      {
        model_data_url: converted,
      }
    ),
    with_model_package_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"model_package_name" expected to be of type "string"';
      {
        model_package_name: converted,
      }
    ),
    image_config:: {
      local block = self,
      new(repository_access_mode):: (
        {}
        + block.with_repository_access_mode(repository_access_mode)
      ),
      with_repository_access_mode(value):: (
        local converted = value;
        assert std.isString(converted) : '"repository_access_mode" expected to be of type "string"';
        {
          repository_access_mode: converted,
        }
      ),
      repository_auth_config:: {
        local block = self,
        new(repository_credentials_provider_arn):: (
          {}
          + block.with_repository_credentials_provider_arn(repository_credentials_provider_arn)
        ),
        with_repository_credentials_provider_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"repository_credentials_provider_arn" expected to be of type "string"';
          {
            repository_credentials_provider_arn: converted,
          }
        ),
      },
      with_repository_auth_config(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          repository_auth_config: value,
        }
      ),
      with_repository_auth_config_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          repository_auth_config+: converted,
        }
      ),
    },
    model_data_source:: {
      local block = self,
      new():: (
        {}
      ),
      s3_data_source:: {
        local block = self,
        new(compression_type, s3_data_type, s3_uri):: (
          {}
          + block.with_compression_type(compression_type)
          + block.with_s3_data_type(s3_data_type)
          + block.with_s3_uri(s3_uri)
        ),
        with_compression_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"compression_type" expected to be of type "string"';
          {
            compression_type: converted,
          }
        ),
        with_s3_data_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_data_type" expected to be of type "string"';
          {
            s3_data_type: converted,
          }
        ),
        with_s3_uri(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_uri" expected to be of type "string"';
          {
            s3_uri: converted,
          }
        ),
        model_access_config:: {
          local block = self,
          new(accept_eula):: (
            {}
            + block.with_accept_eula(accept_eula)
          ),
          with_accept_eula(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"accept_eula" expected to be of type "bool"';
            {
              accept_eula: converted,
            }
          ),
        },
        with_model_access_config(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            model_access_config: value,
          }
        ),
        with_model_access_config_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            model_access_config+: converted,
          }
        ),
      },
      with_s3_data_source(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_data_source: value,
        }
      ),
      with_s3_data_source_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_data_source+: converted,
        }
      ),
    },
    multi_model_config:: {
      local block = self,
      new():: (
        {}
      ),
      with_model_cache_setting(value):: (
        local converted = value;
        assert std.isString(converted) : '"model_cache_setting" expected to be of type "string"';
        {
          model_cache_setting: converted,
        }
      ),
    },
    with_image_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        image_config: value,
      }
    ),
    with_model_data_source(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        model_data_source: value,
      }
    ),
    with_multi_model_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        multi_model_config: value,
      }
    ),
    with_image_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        image_config+: converted,
      }
    ),
    with_model_data_source_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        model_data_source+: converted,
      }
    ),
    with_multi_model_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        multi_model_config+: converted,
      }
    ),
  },
  inference_execution_config:: {
    local block = self,
    new(mode):: (
      {}
      + block.with_mode(mode)
    ),
    with_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"mode" expected to be of type "string"';
      {
        mode: converted,
      }
    ),
  },
  primary_container:: {
    local block = self,
    new():: (
      {}
    ),
    with_container_hostname(value):: (
      local converted = value;
      assert std.isString(converted) : '"container_hostname" expected to be of type "string"';
      {
        container_hostname: converted,
      }
    ),
    with_environment(value):: (
      local converted = value;
      assert std.isObject(converted) : '"environment" expected to be of type "map"';
      {
        environment: converted,
      }
    ),
    with_image(value):: (
      local converted = value;
      assert std.isString(converted) : '"image" expected to be of type "string"';
      {
        image: converted,
      }
    ),
    with_inference_specification_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"inference_specification_name" expected to be of type "string"';
      {
        inference_specification_name: converted,
      }
    ),
    with_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"mode" expected to be of type "string"';
      {
        mode: converted,
      }
    ),
    with_model_data_url(value):: (
      local converted = value;
      assert std.isString(converted) : '"model_data_url" expected to be of type "string"';
      {
        model_data_url: converted,
      }
    ),
    with_model_package_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"model_package_name" expected to be of type "string"';
      {
        model_package_name: converted,
      }
    ),
    image_config:: {
      local block = self,
      new(repository_access_mode):: (
        {}
        + block.with_repository_access_mode(repository_access_mode)
      ),
      with_repository_access_mode(value):: (
        local converted = value;
        assert std.isString(converted) : '"repository_access_mode" expected to be of type "string"';
        {
          repository_access_mode: converted,
        }
      ),
      repository_auth_config:: {
        local block = self,
        new(repository_credentials_provider_arn):: (
          {}
          + block.with_repository_credentials_provider_arn(repository_credentials_provider_arn)
        ),
        with_repository_credentials_provider_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"repository_credentials_provider_arn" expected to be of type "string"';
          {
            repository_credentials_provider_arn: converted,
          }
        ),
      },
      with_repository_auth_config(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          repository_auth_config: value,
        }
      ),
      with_repository_auth_config_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          repository_auth_config+: converted,
        }
      ),
    },
    model_data_source:: {
      local block = self,
      new():: (
        {}
      ),
      s3_data_source:: {
        local block = self,
        new(compression_type, s3_data_type, s3_uri):: (
          {}
          + block.with_compression_type(compression_type)
          + block.with_s3_data_type(s3_data_type)
          + block.with_s3_uri(s3_uri)
        ),
        with_compression_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"compression_type" expected to be of type "string"';
          {
            compression_type: converted,
          }
        ),
        with_s3_data_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_data_type" expected to be of type "string"';
          {
            s3_data_type: converted,
          }
        ),
        with_s3_uri(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_uri" expected to be of type "string"';
          {
            s3_uri: converted,
          }
        ),
        model_access_config:: {
          local block = self,
          new(accept_eula):: (
            {}
            + block.with_accept_eula(accept_eula)
          ),
          with_accept_eula(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"accept_eula" expected to be of type "bool"';
            {
              accept_eula: converted,
            }
          ),
        },
        with_model_access_config(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            model_access_config: value,
          }
        ),
        with_model_access_config_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            model_access_config+: converted,
          }
        ),
      },
      with_s3_data_source(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_data_source: value,
        }
      ),
      with_s3_data_source_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_data_source+: converted,
        }
      ),
    },
    multi_model_config:: {
      local block = self,
      new():: (
        {}
      ),
      with_model_cache_setting(value):: (
        local converted = value;
        assert std.isString(converted) : '"model_cache_setting" expected to be of type "string"';
        {
          model_cache_setting: converted,
        }
      ),
    },
    with_image_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        image_config: value,
      }
    ),
    with_model_data_source(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        model_data_source: value,
      }
    ),
    with_multi_model_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        multi_model_config: value,
      }
    ),
    with_image_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        image_config+: converted,
      }
    ),
    with_model_data_source_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        model_data_source+: converted,
      }
    ),
    with_multi_model_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        multi_model_config+: converted,
      }
    ),
  },
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
  with_container(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      container: value,
    }
  ),
  with_inference_execution_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      inference_execution_config: value,
    }
  ),
  with_primary_container(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      primary_container: value,
    }
  ),
  with_vpc_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config: value,
    }
  ),
  with_container_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      container+: converted,
    }
  ),
  with_inference_execution_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      inference_execution_config+: converted,
    }
  ),
  with_primary_container_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      primary_container+: converted,
    }
  ),
  with_vpc_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config+: converted,
    }
  ),
}
