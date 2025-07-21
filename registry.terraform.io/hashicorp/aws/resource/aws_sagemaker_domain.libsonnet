{
  local block = self,
  new(auth_mode, domain_name, subnet_ids, vpc_id):: (
    {}
    + block.with_auth_mode(auth_mode)
    + block.with_domain_name(domain_name)
    + block.with_subnet_ids(subnet_ids)
    + block.with_vpc_id(vpc_id)
  ),
  with_app_network_access_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_network_access_type" expected to be of type "string"';
    {
      app_network_access_type: converted,
    }
  ),
  with_app_security_group_management(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_security_group_management" expected to be of type "string"';
    {
      app_security_group_management: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_auth_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"auth_mode" expected to be of type "string"';
    {
      auth_mode: converted,
    }
  ),
  with_domain_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
    }
  ),
  with_home_efs_file_system_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"home_efs_file_system_id" expected to be of type "string"';
    {
      home_efs_file_system_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_kms_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
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
  with_security_group_id_for_domain_boundary(value):: (
    local converted = value;
    assert std.isString(converted) : '"security_group_id_for_domain_boundary" expected to be of type "string"';
    {
      security_group_id_for_domain_boundary: converted,
    }
  ),
  with_single_sign_on_application_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"single_sign_on_application_arn" expected to be of type "string"';
    {
      single_sign_on_application_arn: converted,
    }
  ),
  with_single_sign_on_managed_application_instance_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"single_sign_on_managed_application_instance_id" expected to be of type "string"';
    {
      single_sign_on_managed_application_instance_id: converted,
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
  with_tag_propagation(value):: (
    local converted = value;
    assert std.isString(converted) : '"tag_propagation" expected to be of type "string"';
    {
      tag_propagation: converted,
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
  with_vpc_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
    {
      vpc_id: converted,
    }
  ),
  default_space_settings:: {
    local block = self,
    new(execution_role):: (
      {}
      + block.with_execution_role(execution_role)
    ),
    with_execution_role(value):: (
      local converted = value;
      assert std.isString(converted) : '"execution_role" expected to be of type "string"';
      {
        execution_role: converted,
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
    custom_file_system_config:: {
      local block = self,
      new():: (
        {}
      ),
      efs_file_system_config:: {
        local block = self,
        new(file_system_id, file_system_path):: (
          {}
          + block.with_file_system_id(file_system_id)
          + block.with_file_system_path(file_system_path)
        ),
        with_file_system_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"file_system_id" expected to be of type "string"';
          {
            file_system_id: converted,
          }
        ),
        with_file_system_path(value):: (
          local converted = value;
          assert std.isString(converted) : '"file_system_path" expected to be of type "string"';
          {
            file_system_path: converted,
          }
        ),
      },
      with_efs_file_system_config(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          efs_file_system_config: value,
        }
      ),
      with_efs_file_system_config_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          efs_file_system_config+: converted,
        }
      ),
    },
    custom_posix_user_config:: {
      local block = self,
      new(gid, uid):: (
        {}
        + block.with_gid(gid)
        + block.with_uid(uid)
      ),
      with_gid(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"gid" expected to be of type "number"';
        {
          gid: converted,
        }
      ),
      with_uid(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"uid" expected to be of type "number"';
        {
          uid: converted,
        }
      ),
    },
    jupyter_lab_app_settings:: {
      local block = self,
      new():: (
        {}
      ),
      with_built_in_lifecycle_config_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"built_in_lifecycle_config_arn" expected to be of type "string"';
        {
          built_in_lifecycle_config_arn: converted,
        }
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
          with_lifecycle_management(value):: (
            local converted = value;
            assert std.isString(converted) : '"lifecycle_management" expected to be of type "string"';
            {
              lifecycle_management: converted,
            }
          ),
          with_max_idle_timeout_in_minutes(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"max_idle_timeout_in_minutes" expected to be of type "number"';
            {
              max_idle_timeout_in_minutes: converted,
            }
          ),
          with_min_idle_timeout_in_minutes(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"min_idle_timeout_in_minutes" expected to be of type "number"';
            {
              min_idle_timeout_in_minutes: converted,
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
      emr_settings:: {
        local block = self,
        new():: (
          {}
        ),
        with_assumable_role_arns(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"assumable_role_arns" expected to be of type "set"';
          {
            assumable_role_arns: converted,
          }
        ),
        with_assumable_role_arns_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"assumable_role_arns" expected to be of type "set"';
          {
            assumable_role_arns+: converted,
          }
        ),
        with_execution_role_arns(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"execution_role_arns" expected to be of type "set"';
          {
            execution_role_arns: converted,
          }
        ),
        with_execution_role_arns_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"execution_role_arns" expected to be of type "set"';
          {
            execution_role_arns+: converted,
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
      with_emr_settings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          emr_settings: value,
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
      with_emr_settings_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          emr_settings+: converted,
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
      default_ebs_storage_settings:: {
        local block = self,
        new(default_ebs_volume_size_in_gb, maximum_ebs_volume_size_in_gb):: (
          {}
          + block.with_default_ebs_volume_size_in_gb(default_ebs_volume_size_in_gb)
          + block.with_maximum_ebs_volume_size_in_gb(maximum_ebs_volume_size_in_gb)
        ),
        with_default_ebs_volume_size_in_gb(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"default_ebs_volume_size_in_gb" expected to be of type "number"';
          {
            default_ebs_volume_size_in_gb: converted,
          }
        ),
        with_maximum_ebs_volume_size_in_gb(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"maximum_ebs_volume_size_in_gb" expected to be of type "number"';
          {
            maximum_ebs_volume_size_in_gb: converted,
          }
        ),
      },
      with_default_ebs_storage_settings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_ebs_storage_settings: value,
        }
      ),
      with_default_ebs_storage_settings_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_ebs_storage_settings+: converted,
        }
      ),
    },
    with_custom_file_system_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_file_system_config: value,
      }
    ),
    with_custom_posix_user_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_posix_user_config: value,
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
    with_custom_file_system_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_file_system_config+: converted,
      }
    ),
    with_custom_posix_user_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_posix_user_config+: converted,
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
  default_user_settings:: {
    local block = self,
    new(execution_role):: (
      {}
      + block.with_execution_role(execution_role)
    ),
    with_auto_mount_home_efs(value):: (
      local converted = value;
      assert std.isString(converted) : '"auto_mount_home_efs" expected to be of type "string"';
      {
        auto_mount_home_efs: converted,
      }
    ),
    with_default_landing_uri(value):: (
      local converted = value;
      assert std.isString(converted) : '"default_landing_uri" expected to be of type "string"';
      {
        default_landing_uri: converted,
      }
    ),
    with_execution_role(value):: (
      local converted = value;
      assert std.isString(converted) : '"execution_role" expected to be of type "string"';
      {
        execution_role: converted,
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
    with_studio_web_portal(value):: (
      local converted = value;
      assert std.isString(converted) : '"studio_web_portal" expected to be of type "string"';
      {
        studio_web_portal: converted,
      }
    ),
    canvas_app_settings:: {
      local block = self,
      new():: (
        {}
      ),
      direct_deploy_settings:: {
        local block = self,
        new():: (
          {}
        ),
        with_status(value):: (
          local converted = value;
          assert std.isString(converted) : '"status" expected to be of type "string"';
          {
            status: converted,
          }
        ),
      },
      emr_serverless_settings:: {
        local block = self,
        new():: (
          {}
        ),
        with_execution_role_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"execution_role_arn" expected to be of type "string"';
          {
            execution_role_arn: converted,
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
      generative_ai_settings:: {
        local block = self,
        new():: (
          {}
        ),
        with_amazon_bedrock_role_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"amazon_bedrock_role_arn" expected to be of type "string"';
          {
            amazon_bedrock_role_arn: converted,
          }
        ),
      },
      identity_provider_oauth_settings:: {
        local block = self,
        new(secret_arn):: (
          {}
          + block.with_secret_arn(secret_arn)
        ),
        with_data_source_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"data_source_name" expected to be of type "string"';
          {
            data_source_name: converted,
          }
        ),
        with_secret_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"secret_arn" expected to be of type "string"';
          {
            secret_arn: converted,
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
      kendra_settings:: {
        local block = self,
        new():: (
          {}
        ),
        with_status(value):: (
          local converted = value;
          assert std.isString(converted) : '"status" expected to be of type "string"';
          {
            status: converted,
          }
        ),
      },
      model_register_settings:: {
        local block = self,
        new():: (
          {}
        ),
        with_cross_account_model_register_role_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"cross_account_model_register_role_arn" expected to be of type "string"';
          {
            cross_account_model_register_role_arn: converted,
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
      time_series_forecasting_settings:: {
        local block = self,
        new():: (
          {}
        ),
        with_amazon_forecast_role_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"amazon_forecast_role_arn" expected to be of type "string"';
          {
            amazon_forecast_role_arn: converted,
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
      workspace_settings:: {
        local block = self,
        new():: (
          {}
        ),
        with_s3_artifact_path(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_artifact_path" expected to be of type "string"';
          {
            s3_artifact_path: converted,
          }
        ),
        with_s3_kms_key_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_kms_key_id" expected to be of type "string"';
          {
            s3_kms_key_id: converted,
          }
        ),
      },
      with_direct_deploy_settings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          direct_deploy_settings: value,
        }
      ),
      with_emr_serverless_settings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          emr_serverless_settings: value,
        }
      ),
      with_generative_ai_settings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          generative_ai_settings: value,
        }
      ),
      with_identity_provider_oauth_settings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          identity_provider_oauth_settings: value,
        }
      ),
      with_kendra_settings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          kendra_settings: value,
        }
      ),
      with_model_register_settings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          model_register_settings: value,
        }
      ),
      with_time_series_forecasting_settings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          time_series_forecasting_settings: value,
        }
      ),
      with_workspace_settings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          workspace_settings: value,
        }
      ),
      with_direct_deploy_settings_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          direct_deploy_settings+: converted,
        }
      ),
      with_emr_serverless_settings_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          emr_serverless_settings+: converted,
        }
      ),
      with_generative_ai_settings_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          generative_ai_settings+: converted,
        }
      ),
      with_identity_provider_oauth_settings_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          identity_provider_oauth_settings+: converted,
        }
      ),
      with_kendra_settings_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          kendra_settings+: converted,
        }
      ),
      with_model_register_settings_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          model_register_settings+: converted,
        }
      ),
      with_time_series_forecasting_settings_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          time_series_forecasting_settings+: converted,
        }
      ),
      with_workspace_settings_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          workspace_settings+: converted,
        }
      ),
    },
    code_editor_app_settings:: {
      local block = self,
      new():: (
        {}
      ),
      with_built_in_lifecycle_config_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"built_in_lifecycle_config_arn" expected to be of type "string"';
        {
          built_in_lifecycle_config_arn: converted,
        }
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
          with_lifecycle_management(value):: (
            local converted = value;
            assert std.isString(converted) : '"lifecycle_management" expected to be of type "string"';
            {
              lifecycle_management: converted,
            }
          ),
          with_max_idle_timeout_in_minutes(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"max_idle_timeout_in_minutes" expected to be of type "number"';
            {
              max_idle_timeout_in_minutes: converted,
            }
          ),
          with_min_idle_timeout_in_minutes(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"min_idle_timeout_in_minutes" expected to be of type "number"';
            {
              min_idle_timeout_in_minutes: converted,
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
      with_app_lifecycle_management(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          app_lifecycle_management: value,
        }
      ),
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
      with_app_lifecycle_management_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          app_lifecycle_management+: converted,
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
    custom_file_system_config:: {
      local block = self,
      new():: (
        {}
      ),
      efs_file_system_config:: {
        local block = self,
        new(file_system_id, file_system_path):: (
          {}
          + block.with_file_system_id(file_system_id)
          + block.with_file_system_path(file_system_path)
        ),
        with_file_system_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"file_system_id" expected to be of type "string"';
          {
            file_system_id: converted,
          }
        ),
        with_file_system_path(value):: (
          local converted = value;
          assert std.isString(converted) : '"file_system_path" expected to be of type "string"';
          {
            file_system_path: converted,
          }
        ),
      },
      with_efs_file_system_config(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          efs_file_system_config: value,
        }
      ),
      with_efs_file_system_config_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          efs_file_system_config+: converted,
        }
      ),
    },
    custom_posix_user_config:: {
      local block = self,
      new(gid, uid):: (
        {}
        + block.with_gid(gid)
        + block.with_uid(uid)
      ),
      with_gid(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"gid" expected to be of type "number"';
        {
          gid: converted,
        }
      ),
      with_uid(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"uid" expected to be of type "number"';
        {
          uid: converted,
        }
      ),
    },
    jupyter_lab_app_settings:: {
      local block = self,
      new():: (
        {}
      ),
      with_built_in_lifecycle_config_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"built_in_lifecycle_config_arn" expected to be of type "string"';
        {
          built_in_lifecycle_config_arn: converted,
        }
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
          with_lifecycle_management(value):: (
            local converted = value;
            assert std.isString(converted) : '"lifecycle_management" expected to be of type "string"';
            {
              lifecycle_management: converted,
            }
          ),
          with_max_idle_timeout_in_minutes(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"max_idle_timeout_in_minutes" expected to be of type "number"';
            {
              max_idle_timeout_in_minutes: converted,
            }
          ),
          with_min_idle_timeout_in_minutes(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"min_idle_timeout_in_minutes" expected to be of type "number"';
            {
              min_idle_timeout_in_minutes: converted,
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
      emr_settings:: {
        local block = self,
        new():: (
          {}
        ),
        with_assumable_role_arns(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"assumable_role_arns" expected to be of type "set"';
          {
            assumable_role_arns: converted,
          }
        ),
        with_assumable_role_arns_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"assumable_role_arns" expected to be of type "set"';
          {
            assumable_role_arns+: converted,
          }
        ),
        with_execution_role_arns(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"execution_role_arns" expected to be of type "set"';
          {
            execution_role_arns: converted,
          }
        ),
        with_execution_role_arns_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"execution_role_arns" expected to be of type "set"';
          {
            execution_role_arns+: converted,
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
      with_emr_settings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          emr_settings: value,
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
      with_emr_settings_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          emr_settings+: converted,
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
    r_session_app_settings:: {
      local block = self,
      new():: (
        {}
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
    r_studio_server_pro_app_settings:: {
      local block = self,
      new():: (
        {}
      ),
      with_access_status(value):: (
        local converted = value;
        assert std.isString(converted) : '"access_status" expected to be of type "string"';
        {
          access_status: converted,
        }
      ),
      with_user_group(value):: (
        local converted = value;
        assert std.isString(converted) : '"user_group" expected to be of type "string"';
        {
          user_group: converted,
        }
      ),
    },
    sharing_settings:: {
      local block = self,
      new():: (
        {}
      ),
      with_notebook_output_option(value):: (
        local converted = value;
        assert std.isString(converted) : '"notebook_output_option" expected to be of type "string"';
        {
          notebook_output_option: converted,
        }
      ),
      with_s3_kms_key_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_kms_key_id" expected to be of type "string"';
        {
          s3_kms_key_id: converted,
        }
      ),
      with_s3_output_path(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_output_path" expected to be of type "string"';
        {
          s3_output_path: converted,
        }
      ),
    },
    space_storage_settings:: {
      local block = self,
      new():: (
        {}
      ),
      default_ebs_storage_settings:: {
        local block = self,
        new(default_ebs_volume_size_in_gb, maximum_ebs_volume_size_in_gb):: (
          {}
          + block.with_default_ebs_volume_size_in_gb(default_ebs_volume_size_in_gb)
          + block.with_maximum_ebs_volume_size_in_gb(maximum_ebs_volume_size_in_gb)
        ),
        with_default_ebs_volume_size_in_gb(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"default_ebs_volume_size_in_gb" expected to be of type "number"';
          {
            default_ebs_volume_size_in_gb: converted,
          }
        ),
        with_maximum_ebs_volume_size_in_gb(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"maximum_ebs_volume_size_in_gb" expected to be of type "number"';
          {
            maximum_ebs_volume_size_in_gb: converted,
          }
        ),
      },
      with_default_ebs_storage_settings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_ebs_storage_settings: value,
        }
      ),
      with_default_ebs_storage_settings_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_ebs_storage_settings+: converted,
        }
      ),
    },
    studio_web_portal_settings:: {
      local block = self,
      new():: (
        {}
      ),
      with_hidden_app_types(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"hidden_app_types" expected to be of type "set"';
        {
          hidden_app_types: converted,
        }
      ),
      with_hidden_app_types_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"hidden_app_types" expected to be of type "set"';
        {
          hidden_app_types+: converted,
        }
      ),
      with_hidden_instance_types(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"hidden_instance_types" expected to be of type "set"';
        {
          hidden_instance_types: converted,
        }
      ),
      with_hidden_instance_types_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"hidden_instance_types" expected to be of type "set"';
        {
          hidden_instance_types+: converted,
        }
      ),
      with_hidden_ml_tools(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"hidden_ml_tools" expected to be of type "set"';
        {
          hidden_ml_tools: converted,
        }
      ),
      with_hidden_ml_tools_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"hidden_ml_tools" expected to be of type "set"';
        {
          hidden_ml_tools+: converted,
        }
      ),
    },
    tensor_board_app_settings:: {
      local block = self,
      new():: (
        {}
      ),
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
      with_default_resource_spec(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_resource_spec: value,
        }
      ),
      with_default_resource_spec_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_resource_spec+: converted,
        }
      ),
    },
    with_canvas_app_settings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        canvas_app_settings: value,
      }
    ),
    with_code_editor_app_settings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_editor_app_settings: value,
      }
    ),
    with_custom_file_system_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_file_system_config: value,
      }
    ),
    with_custom_posix_user_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_posix_user_config: value,
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
    with_r_session_app_settings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        r_session_app_settings: value,
      }
    ),
    with_r_studio_server_pro_app_settings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        r_studio_server_pro_app_settings: value,
      }
    ),
    with_sharing_settings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sharing_settings: value,
      }
    ),
    with_space_storage_settings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        space_storage_settings: value,
      }
    ),
    with_studio_web_portal_settings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        studio_web_portal_settings: value,
      }
    ),
    with_tensor_board_app_settings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        tensor_board_app_settings: value,
      }
    ),
    with_canvas_app_settings_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        canvas_app_settings+: converted,
      }
    ),
    with_code_editor_app_settings_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_editor_app_settings+: converted,
      }
    ),
    with_custom_file_system_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_file_system_config+: converted,
      }
    ),
    with_custom_posix_user_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_posix_user_config+: converted,
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
    with_r_session_app_settings_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        r_session_app_settings+: converted,
      }
    ),
    with_r_studio_server_pro_app_settings_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        r_studio_server_pro_app_settings+: converted,
      }
    ),
    with_sharing_settings_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sharing_settings+: converted,
      }
    ),
    with_space_storage_settings_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        space_storage_settings+: converted,
      }
    ),
    with_studio_web_portal_settings_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        studio_web_portal_settings+: converted,
      }
    ),
    with_tensor_board_app_settings_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        tensor_board_app_settings+: converted,
      }
    ),
  },
  domain_settings:: {
    local block = self,
    new():: (
      {}
    ),
    with_execution_role_identity_config(value):: (
      local converted = value;
      assert std.isString(converted) : '"execution_role_identity_config" expected to be of type "string"';
      {
        execution_role_identity_config: converted,
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
    docker_settings:: {
      local block = self,
      new():: (
        {}
      ),
      with_enable_docker_access(value):: (
        local converted = value;
        assert std.isString(converted) : '"enable_docker_access" expected to be of type "string"';
        {
          enable_docker_access: converted,
        }
      ),
      with_vpc_only_trusted_accounts(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_only_trusted_accounts" expected to be of type "set"';
        {
          vpc_only_trusted_accounts: converted,
        }
      ),
      with_vpc_only_trusted_accounts_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_only_trusted_accounts" expected to be of type "set"';
        {
          vpc_only_trusted_accounts+: converted,
        }
      ),
    },
    r_studio_server_pro_domain_settings:: {
      local block = self,
      new(domain_execution_role_arn):: (
        {}
        + block.with_domain_execution_role_arn(domain_execution_role_arn)
      ),
      with_domain_execution_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"domain_execution_role_arn" expected to be of type "string"';
        {
          domain_execution_role_arn: converted,
        }
      ),
      with_r_studio_connect_url(value):: (
        local converted = value;
        assert std.isString(converted) : '"r_studio_connect_url" expected to be of type "string"';
        {
          r_studio_connect_url: converted,
        }
      ),
      with_r_studio_package_manager_url(value):: (
        local converted = value;
        assert std.isString(converted) : '"r_studio_package_manager_url" expected to be of type "string"';
        {
          r_studio_package_manager_url: converted,
        }
      ),
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
      with_default_resource_spec(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_resource_spec: value,
        }
      ),
      with_default_resource_spec_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_resource_spec+: converted,
        }
      ),
    },
    with_docker_settings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        docker_settings: value,
      }
    ),
    with_r_studio_server_pro_domain_settings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        r_studio_server_pro_domain_settings: value,
      }
    ),
    with_docker_settings_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        docker_settings+: converted,
      }
    ),
    with_r_studio_server_pro_domain_settings_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        r_studio_server_pro_domain_settings+: converted,
      }
    ),
  },
  retention_policy:: {
    local block = self,
    new():: (
      {}
    ),
    with_home_efs_file_system(value):: (
      local converted = value;
      assert std.isString(converted) : '"home_efs_file_system" expected to be of type "string"';
      {
        home_efs_file_system: converted,
      }
    ),
  },
  with_default_space_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_space_settings: value,
    }
  ),
  with_default_user_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_user_settings: value,
    }
  ),
  with_domain_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      domain_settings: value,
    }
  ),
  with_retention_policy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      retention_policy: value,
    }
  ),
  with_default_space_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_space_settings+: converted,
    }
  ),
  with_default_user_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_user_settings+: converted,
    }
  ),
  with_domain_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      domain_settings+: converted,
    }
  ),
  with_retention_policy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      retention_policy+: converted,
    }
  ),
}
