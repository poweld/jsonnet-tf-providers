{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_date_created(value):: (
    local converted = value;
    assert std.isString(converted) : '"date_created" expected to be of type "string"';
    {
      date_created: converted,
    }
  ),
  with_date_updated(value):: (
    local converted = value;
    assert std.isString(converted) : '"date_updated" expected to be of type "string"';
    {
      date_updated: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
  distribution:: {
    local block = self,
    new(region):: (
      {}
      + block.with_region(region)
    ),
    with_license_configuration_arns(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"license_configuration_arns" expected to be of type "set"';
      {
        license_configuration_arns: converted,
      }
    ),
    with_license_configuration_arns_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"license_configuration_arns" expected to be of type "set"';
      {
        license_configuration_arns+: converted,
      }
    ),
    with_region(value):: (
      local converted = value;
      assert std.isString(converted) : '"region" expected to be of type "string"';
      {
        region: converted,
      }
    ),
    ami_distribution_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      with_ami_tags(value):: (
        local converted = value;
        assert std.isObject(converted) : '"ami_tags" expected to be of type "map"';
        {
          ami_tags: converted,
        }
      ),
      with_description(value):: (
        local converted = value;
        assert std.isString(converted) : '"description" expected to be of type "string"';
        {
          description: converted,
        }
      ),
      with_kms_key_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
        {
          kms_key_id: converted,
        }
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_target_account_ids(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"target_account_ids" expected to be of type "set"';
        {
          target_account_ids: converted,
        }
      ),
      with_target_account_ids_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"target_account_ids" expected to be of type "set"';
        {
          target_account_ids+: converted,
        }
      ),
      launch_permission:: {
        local block = self,
        new():: (
          {}
        ),
        with_organization_arns(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"organization_arns" expected to be of type "set"';
          {
            organization_arns: converted,
          }
        ),
        with_organization_arns_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"organization_arns" expected to be of type "set"';
          {
            organization_arns+: converted,
          }
        ),
        with_organizational_unit_arns(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"organizational_unit_arns" expected to be of type "set"';
          {
            organizational_unit_arns: converted,
          }
        ),
        with_organizational_unit_arns_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"organizational_unit_arns" expected to be of type "set"';
          {
            organizational_unit_arns+: converted,
          }
        ),
        with_user_groups(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"user_groups" expected to be of type "set"';
          {
            user_groups: converted,
          }
        ),
        with_user_groups_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"user_groups" expected to be of type "set"';
          {
            user_groups+: converted,
          }
        ),
        with_user_ids(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"user_ids" expected to be of type "set"';
          {
            user_ids: converted,
          }
        ),
        with_user_ids_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"user_ids" expected to be of type "set"';
          {
            user_ids+: converted,
          }
        ),
      },
      with_launch_permission(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          launch_permission: value,
        }
      ),
      with_launch_permission_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          launch_permission+: converted,
        }
      ),
    },
    container_distribution_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      with_container_tags(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"container_tags" expected to be of type "set"';
        {
          container_tags: converted,
        }
      ),
      with_container_tags_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"container_tags" expected to be of type "set"';
        {
          container_tags+: converted,
        }
      ),
      with_description(value):: (
        local converted = value;
        assert std.isString(converted) : '"description" expected to be of type "string"';
        {
          description: converted,
        }
      ),
      target_repository:: {
        local block = self,
        new(repository_name, service):: (
          {}
          + block.with_repository_name(repository_name)
          + block.with_service(service)
        ),
        with_repository_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"repository_name" expected to be of type "string"';
          {
            repository_name: converted,
          }
        ),
        with_service(value):: (
          local converted = value;
          assert std.isString(converted) : '"service" expected to be of type "string"';
          {
            service: converted,
          }
        ),
      },
      with_target_repository(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          target_repository: value,
        }
      ),
      with_target_repository_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          target_repository+: converted,
        }
      ),
    },
    fast_launch_configuration:: {
      local block = self,
      new(account_id, enabled):: (
        {}
        + block.with_account_id(account_id)
        + block.with_enabled(enabled)
      ),
      with_account_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"account_id" expected to be of type "string"';
        {
          account_id: converted,
        }
      ),
      with_enabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      with_max_parallel_launches(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"max_parallel_launches" expected to be of type "number"';
        {
          max_parallel_launches: converted,
        }
      ),
      launch_template:: {
        local block = self,
        new():: (
          {}
        ),
        with_launch_template_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"launch_template_id" expected to be of type "string"';
          {
            launch_template_id: converted,
          }
        ),
        with_launch_template_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"launch_template_name" expected to be of type "string"';
          {
            launch_template_name: converted,
          }
        ),
        with_launch_template_version(value):: (
          local converted = value;
          assert std.isString(converted) : '"launch_template_version" expected to be of type "string"';
          {
            launch_template_version: converted,
          }
        ),
      },
      snapshot_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        with_target_resource_count(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"target_resource_count" expected to be of type "number"';
          {
            target_resource_count: converted,
          }
        ),
      },
      with_launch_template(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          launch_template: value,
        }
      ),
      with_snapshot_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          snapshot_configuration: value,
        }
      ),
      with_launch_template_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          launch_template+: converted,
        }
      ),
      with_snapshot_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          snapshot_configuration+: converted,
        }
      ),
    },
    launch_template_configuration:: {
      local block = self,
      new(launch_template_id):: (
        {}
        + block.with_launch_template_id(launch_template_id)
      ),
      with_account_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"account_id" expected to be of type "string"';
        {
          account_id: converted,
        }
      ),
      with_default(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"default" expected to be of type "bool"';
        {
          default: converted,
        }
      ),
      with_launch_template_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"launch_template_id" expected to be of type "string"';
        {
          launch_template_id: converted,
        }
      ),
    },
    s3_export_configuration:: {
      local block = self,
      new(disk_image_format, role_name, s3_bucket):: (
        {}
        + block.with_disk_image_format(disk_image_format)
        + block.with_role_name(role_name)
        + block.with_s3_bucket(s3_bucket)
      ),
      with_disk_image_format(value):: (
        local converted = value;
        assert std.isString(converted) : '"disk_image_format" expected to be of type "string"';
        {
          disk_image_format: converted,
        }
      ),
      with_role_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_name" expected to be of type "string"';
        {
          role_name: converted,
        }
      ),
      with_s3_bucket(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_bucket" expected to be of type "string"';
        {
          s3_bucket: converted,
        }
      ),
      with_s3_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_prefix" expected to be of type "string"';
        {
          s3_prefix: converted,
        }
      ),
    },
    ssm_parameter_configuration:: {
      local block = self,
      new(parameter_name):: (
        {}
        + block.with_parameter_name(parameter_name)
      ),
      with_ami_account_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"ami_account_id" expected to be of type "string"';
        {
          ami_account_id: converted,
        }
      ),
      with_data_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"data_type" expected to be of type "string"';
        {
          data_type: converted,
        }
      ),
      with_parameter_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"parameter_name" expected to be of type "string"';
        {
          parameter_name: converted,
        }
      ),
    },
    with_ami_distribution_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ami_distribution_configuration: value,
      }
    ),
    with_container_distribution_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        container_distribution_configuration: value,
      }
    ),
    with_fast_launch_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        fast_launch_configuration: value,
      }
    ),
    with_launch_template_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        launch_template_configuration: value,
      }
    ),
    with_s3_export_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_export_configuration: value,
      }
    ),
    with_ssm_parameter_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ssm_parameter_configuration: value,
      }
    ),
    with_ami_distribution_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ami_distribution_configuration+: converted,
      }
    ),
    with_container_distribution_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        container_distribution_configuration+: converted,
      }
    ),
    with_fast_launch_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        fast_launch_configuration+: converted,
      }
    ),
    with_launch_template_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        launch_template_configuration+: converted,
      }
    ),
    with_s3_export_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_export_configuration+: converted,
      }
    ),
    with_ssm_parameter_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ssm_parameter_configuration+: converted,
      }
    ),
  },
  with_distribution(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      distribution: value,
    }
  ),
  with_distribution_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      distribution+: converted,
    }
  ),
}
