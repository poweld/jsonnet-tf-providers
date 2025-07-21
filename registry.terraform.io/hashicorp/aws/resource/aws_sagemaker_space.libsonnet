{
  local block = self,
  new(domain_id, space_name):: (
    {}
    + block.with_domain_id(domain_id)
    + block.with_space_name(space_name)
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
  with_home_efs_file_system_uid(value):: (
    local converted = value;
    assert std.isString(converted) : '"home_efs_file_system_uid" expected to be of type "string"';
    {
      home_efs_file_system_uid: converted,
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
  with_space_display_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"space_display_name" expected to be of type "string"';
    {
      space_display_name: converted,
    }
  ),
  with_space_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"space_name" expected to be of type "string"';
    {
      space_name: converted,
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
  with_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"url" expected to be of type "string"';
    {
      url: converted,
    }
  ),
  ownership_settings:: {
    local block = self,
    new(owner_user_profile_name):: (
      {}
      + block.with_owner_user_profile_name(owner_user_profile_name)
    ),
    with_owner_user_profile_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"owner_user_profile_name" expected to be of type "string"';
      {
        owner_user_profile_name: converted,
      }
    ),
  },
  space_settings:: {
    local block = self,
    new():: (
      {}
    ),
    with_app_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"app_type" expected to be of type "string"';
      {
        app_type: converted,
      }
    ),
    code_editor_app_settings:: {
      local block = self,
      new():: (
        {}
      ),
      app_lifecycle_management:: {
        local block = self,
        new():: (
          {}
        ),
        idle_settings:: {
          local block = self,
          new():: (
            {}
          ),
          with_idle_timeout_in_minutes(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"idle_timeout_in_minutes" expected to be of type "number"';
            {
              idle_timeout_in_minutes: converted,
            }
          ),
        },
        with_idle_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            idle_settings: value,
          }
        ),
        with_idle_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            idle_settings+: converted,
          }
        ),
      },
      default_resource_spec:: {
        local block = self,
        new():: (
          {}
        ),
        with_instance_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"instance_type" expected to be of type "string"';
          {
            instance_type: converted,
          }
        ),
        with_lifecycle_config_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"lifecycle_config_arn" expected to be of type "string"';
          {
            lifecycle_config_arn: converted,
          }
        ),
        with_sagemaker_image_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"sagemaker_image_arn" expected to be of type "string"';
          {
            sagemaker_image_arn: converted,
          }
        ),
        with_sagemaker_image_version_alias(value):: (
          local converted = value;
          assert std.isString(converted) : '"sagemaker_image_version_alias" expected to be of type "string"';
          {
            sagemaker_image_version_alias: converted,
          }
        ),
        with_sagemaker_image_version_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"sagemaker_image_version_arn" expected to be of type "string"';
          {
            sagemaker_image_version_arn: converted,
          }
        ),
      },
      with_app_lifecycle_management(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          app_lifecycle_management: value,
        }
      ),
      with_default_resource_spec(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_resource_spec: value,
        }
      ),
      with_app_lifecycle_management_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          app_lifecycle_management+: converted,
        }
      ),
      with_default_resource_spec_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_resource_spec+: converted,
        }
      ),
    },
    custom_file_system:: {
      local block = self,
      new():: (
        {}
      ),
      efs_file_system:: {
        local block = self,
        new(file_system_id):: (
          {}
          + block.with_file_system_id(file_system_id)
        ),
        with_file_system_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"file_system_id" expected to be of type "string"';
          {
            file_system_id: converted,
          }
        ),
      },
      with_efs_file_system(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          efs_file_system: value,
        }
      ),
      with_efs_file_system_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          efs_file_system+: converted,
        }
      ),
    },
    jupyter_lab_app_settings:: {
      local block = self,
      new():: (
        {}
      ),
      app_lifecycle_management:: {
        local block = self,
        new():: (
          {}
        ),
        idle_settings:: {
          local block = self,
          new():: (
            {}
          ),
          with_idle_timeout_in_minutes(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"idle_timeout_in_minutes" expected to be of type "number"';
            {
              idle_timeout_in_minutes: converted,
            }
          ),
        },
        with_idle_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            idle_settings: value,
          }
        ),
        with_idle_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            idle_settings+: converted,
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
      },
      default_resource_spec:: {
        local block = self,
        new():: (
          {}
        ),
        with_instance_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"instance_type" expected to be of type "string"';
          {
            instance_type: converted,
          }
        ),
        with_lifecycle_config_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"lifecycle_config_arn" expected to be of type "string"';
          {
            lifecycle_config_arn: converted,
          }
        ),
        with_sagemaker_image_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"sagemaker_image_arn" expected to be of type "string"';
          {
            sagemaker_image_arn: converted,
          }
        ),
        with_sagemaker_image_version_alias(value):: (
          local converted = value;
          assert std.isString(converted) : '"sagemaker_image_version_alias" expected to be of type "string"';
          {
            sagemaker_image_version_alias: converted,
          }
        ),
        with_sagemaker_image_version_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"sagemaker_image_version_arn" expected to be of type "string"';
          {
            sagemaker_image_version_arn: converted,
          }
        ),
      },
      with_app_lifecycle_management(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          app_lifecycle_management: value,
        }
      ),
      with_code_repository(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          code_repository: value,
        }
      ),
      with_default_resource_spec(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_resource_spec: value,
        }
      ),
      with_app_lifecycle_management_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          app_lifecycle_management+: converted,
        }
      ),
      with_code_repository_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          code_repository+: converted,
        }
      ),
      with_default_resource_spec_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_resource_spec+: converted,
        }
      ),
    },
    jupyter_server_app_settings:: {
      local block = self,
      new():: (
        {}
      ),
      with_lifecycle_config_arns(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"lifecycle_config_arns" expected to be of type "set"';
        {
          lifecycle_config_arns: converted,
        }
      ),
      with_lifecycle_config_arns_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"lifecycle_config_arns" expected to be of type "set"';
        {
          lifecycle_config_arns+: converted,
        }
      ),
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
      },
      default_resource_spec:: {
        local block = self,
        new():: (
          {}
        ),
        with_instance_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"instance_type" expected to be of type "string"';
          {
            instance_type: converted,
          }
        ),
        with_lifecycle_config_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"lifecycle_config_arn" expected to be of type "string"';
          {
            lifecycle_config_arn: converted,
          }
        ),
        with_sagemaker_image_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"sagemaker_image_arn" expected to be of type "string"';
          {
            sagemaker_image_arn: converted,
          }
        ),
        with_sagemaker_image_version_alias(value):: (
          local converted = value;
          assert std.isString(converted) : '"sagemaker_image_version_alias" expected to be of type "string"';
          {
            sagemaker_image_version_alias: converted,
          }
        ),
        with_sagemaker_image_version_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"sagemaker_image_version_arn" expected to be of type "string"';
          {
            sagemaker_image_version_arn: converted,
          }
        ),
      },
      with_code_repository(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          code_repository: value,
        }
      ),
      with_default_resource_spec(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_resource_spec: value,
        }
      ),
      with_code_repository_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          code_repository+: converted,
        }
      ),
      with_default_resource_spec_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_resource_spec+: converted,
        }
      ),
    },
    kernel_gateway_app_settings:: {
      local block = self,
      new():: (
        {}
      ),
      with_lifecycle_config_arns(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"lifecycle_config_arns" expected to be of type "set"';
        {
          lifecycle_config_arns: converted,
        }
      ),
      with_lifecycle_config_arns_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"lifecycle_config_arns" expected to be of type "set"';
        {
          lifecycle_config_arns+: converted,
        }
      ),
      custom_image:: {
        local block = self,
        new(app_image_config_name, image_name):: (
          {}
          + block.with_app_image_config_name(app_image_config_name)
          + block.with_image_name(image_name)
        ),
        with_app_image_config_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"app_image_config_name" expected to be of type "string"';
          {
            app_image_config_name: converted,
          }
        ),
        with_image_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"image_name" expected to be of type "string"';
          {
            image_name: converted,
          }
        ),
        with_image_version_number(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"image_version_number" expected to be of type "number"';
          {
            image_version_number: converted,
          }
        ),
      },
      default_resource_spec:: {
        local block = self,
        new():: (
          {}
        ),
        with_instance_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"instance_type" expected to be of type "string"';
          {
            instance_type: converted,
          }
        ),
        with_lifecycle_config_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"lifecycle_config_arn" expected to be of type "string"';
          {
            lifecycle_config_arn: converted,
          }
        ),
        with_sagemaker_image_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"sagemaker_image_arn" expected to be of type "string"';
          {
            sagemaker_image_arn: converted,
          }
        ),
        with_sagemaker_image_version_alias(value):: (
          local converted = value;
          assert std.isString(converted) : '"sagemaker_image_version_alias" expected to be of type "string"';
          {
            sagemaker_image_version_alias: converted,
          }
        ),
        with_sagemaker_image_version_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"sagemaker_image_version_arn" expected to be of type "string"';
          {
            sagemaker_image_version_arn: converted,
          }
        ),
      },
      with_custom_image(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          custom_image: value,
        }
      ),
      with_default_resource_spec(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_resource_spec: value,
        }
      ),
      with_custom_image_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          custom_image+: converted,
        }
      ),
      with_default_resource_spec_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_resource_spec+: converted,
        }
      ),
    },
    space_storage_settings:: {
      local block = self,
      new():: (
        {}
      ),
      ebs_storage_settings:: {
        local block = self,
        new(ebs_volume_size_in_gb):: (
          {}
          + block.with_ebs_volume_size_in_gb(ebs_volume_size_in_gb)
        ),
        with_ebs_volume_size_in_gb(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"ebs_volume_size_in_gb" expected to be of type "number"';
          {
            ebs_volume_size_in_gb: converted,
          }
        ),
      },
      with_ebs_storage_settings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          ebs_storage_settings: value,
        }
      ),
      with_ebs_storage_settings_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          ebs_storage_settings+: converted,
        }
      ),
    },
    with_code_editor_app_settings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_editor_app_settings: value,
      }
    ),
    with_custom_file_system(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_file_system: value,
      }
    ),
    with_jupyter_lab_app_settings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        jupyter_lab_app_settings: value,
      }
    ),
    with_jupyter_server_app_settings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        jupyter_server_app_settings: value,
      }
    ),
    with_kernel_gateway_app_settings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kernel_gateway_app_settings: value,
      }
    ),
    with_space_storage_settings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        space_storage_settings: value,
      }
    ),
    with_code_editor_app_settings_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_editor_app_settings+: converted,
      }
    ),
    with_custom_file_system_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_file_system+: converted,
      }
    ),
    with_jupyter_lab_app_settings_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        jupyter_lab_app_settings+: converted,
      }
    ),
    with_jupyter_server_app_settings_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        jupyter_server_app_settings+: converted,
      }
    ),
    with_kernel_gateway_app_settings_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kernel_gateway_app_settings+: converted,
      }
    ),
    with_space_storage_settings_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        space_storage_settings+: converted,
      }
    ),
  },
  space_sharing_settings:: {
    local block = self,
    new(sharing_type):: (
      {}
      + block.with_sharing_type(sharing_type)
    ),
    with_sharing_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"sharing_type" expected to be of type "string"';
      {
        sharing_type: converted,
      }
    ),
  },
  with_ownership_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ownership_settings: value,
    }
  ),
  with_space_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      space_settings: value,
    }
  ),
  with_space_sharing_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      space_sharing_settings: value,
    }
  ),
  with_ownership_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ownership_settings+: converted,
    }
  ),
  with_space_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      space_settings+: converted,
    }
  ),
  with_space_sharing_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      space_sharing_settings+: converted,
    }
  ),
}
