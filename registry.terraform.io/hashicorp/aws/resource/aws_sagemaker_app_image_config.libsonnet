{
  local block = self,
  new(app_image_config_name):: (
    {}
    + block.with_app_image_config_name(app_image_config_name)
  ),
  with_app_image_config_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_image_config_name" expected to be of type "string"';
    {
      app_image_config_name: converted,
    }
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
  code_editor_app_image_config:: {
    local block = self,
    new():: (
      {}
    ),
    container_config:: {
      local block = self,
      new():: (
        {}
      ),
      with_container_arguments(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"container_arguments" expected to be of type "list"';
        {
          container_arguments: converted,
        }
      ),
      with_container_arguments_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"container_arguments" expected to be of type "list"';
        {
          container_arguments+: converted,
        }
      ),
      with_container_entrypoint(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"container_entrypoint" expected to be of type "list"';
        {
          container_entrypoint: converted,
        }
      ),
      with_container_entrypoint_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"container_entrypoint" expected to be of type "list"';
        {
          container_entrypoint+: converted,
        }
      ),
      with_container_environment_variables(value):: (
        local converted = value;
        assert std.isObject(converted) : '"container_environment_variables" expected to be of type "map"';
        {
          container_environment_variables: converted,
        }
      ),
    },
    file_system_config:: {
      local block = self,
      new():: (
        {}
      ),
      with_default_gid(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"default_gid" expected to be of type "number"';
        {
          default_gid: converted,
        }
      ),
      with_default_uid(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"default_uid" expected to be of type "number"';
        {
          default_uid: converted,
        }
      ),
      with_mount_path(value):: (
        local converted = value;
        assert std.isString(converted) : '"mount_path" expected to be of type "string"';
        {
          mount_path: converted,
        }
      ),
    },
    with_container_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        container_config: value,
      }
    ),
    with_file_system_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        file_system_config: value,
      }
    ),
    with_container_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        container_config+: converted,
      }
    ),
    with_file_system_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        file_system_config+: converted,
      }
    ),
  },
  jupyter_lab_image_config:: {
    local block = self,
    new():: (
      {}
    ),
    container_config:: {
      local block = self,
      new():: (
        {}
      ),
      with_container_arguments(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"container_arguments" expected to be of type "list"';
        {
          container_arguments: converted,
        }
      ),
      with_container_arguments_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"container_arguments" expected to be of type "list"';
        {
          container_arguments+: converted,
        }
      ),
      with_container_entrypoint(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"container_entrypoint" expected to be of type "list"';
        {
          container_entrypoint: converted,
        }
      ),
      with_container_entrypoint_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"container_entrypoint" expected to be of type "list"';
        {
          container_entrypoint+: converted,
        }
      ),
      with_container_environment_variables(value):: (
        local converted = value;
        assert std.isObject(converted) : '"container_environment_variables" expected to be of type "map"';
        {
          container_environment_variables: converted,
        }
      ),
    },
    file_system_config:: {
      local block = self,
      new():: (
        {}
      ),
      with_default_gid(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"default_gid" expected to be of type "number"';
        {
          default_gid: converted,
        }
      ),
      with_default_uid(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"default_uid" expected to be of type "number"';
        {
          default_uid: converted,
        }
      ),
      with_mount_path(value):: (
        local converted = value;
        assert std.isString(converted) : '"mount_path" expected to be of type "string"';
        {
          mount_path: converted,
        }
      ),
    },
    with_container_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        container_config: value,
      }
    ),
    with_file_system_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        file_system_config: value,
      }
    ),
    with_container_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        container_config+: converted,
      }
    ),
    with_file_system_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        file_system_config+: converted,
      }
    ),
  },
  kernel_gateway_image_config:: {
    local block = self,
    new():: (
      {}
    ),
    file_system_config:: {
      local block = self,
      new():: (
        {}
      ),
      with_default_gid(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"default_gid" expected to be of type "number"';
        {
          default_gid: converted,
        }
      ),
      with_default_uid(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"default_uid" expected to be of type "number"';
        {
          default_uid: converted,
        }
      ),
      with_mount_path(value):: (
        local converted = value;
        assert std.isString(converted) : '"mount_path" expected to be of type "string"';
        {
          mount_path: converted,
        }
      ),
    },
    kernel_spec:: {
      local block = self,
      new(name):: (
        {}
        + block.with_name(name)
      ),
      with_display_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"display_name" expected to be of type "string"';
        {
          display_name: converted,
        }
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
    },
    with_file_system_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        file_system_config: value,
      }
    ),
    with_kernel_spec(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kernel_spec: value,
      }
    ),
    with_file_system_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        file_system_config+: converted,
      }
    ),
    with_kernel_spec_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kernel_spec+: converted,
      }
    ),
  },
  with_code_editor_app_image_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      code_editor_app_image_config: value,
    }
  ),
  with_jupyter_lab_image_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      jupyter_lab_image_config: value,
    }
  ),
  with_kernel_gateway_image_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kernel_gateway_image_config: value,
    }
  ),
  with_code_editor_app_image_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      code_editor_app_image_config+: converted,
    }
  ),
  with_jupyter_lab_image_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      jupyter_lab_image_config+: converted,
    }
  ),
  with_kernel_gateway_image_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kernel_gateway_image_config+: converted,
    }
  ),
}
