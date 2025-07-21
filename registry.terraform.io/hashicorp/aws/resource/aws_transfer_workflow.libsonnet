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
  on_exception_steps:: {
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
    copy_step_details:: {
      local block = self,
      new():: (
        {}
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_overwrite_existing(value):: (
        local converted = value;
        assert std.isString(converted) : '"overwrite_existing" expected to be of type "string"';
        {
          overwrite_existing: converted,
        }
      ),
      with_source_file_location(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_file_location" expected to be of type "string"';
        {
          source_file_location: converted,
        }
      ),
      destination_file_location:: {
        local block = self,
        new():: (
          {}
        ),
        efs_file_location:: {
          local block = self,
          new():: (
            {}
          ),
          with_file_system_id(value):: (
            local converted = value;
            assert std.isString(converted) : '"file_system_id" expected to be of type "string"';
            {
              file_system_id: converted,
            }
          ),
          with_path(value):: (
            local converted = value;
            assert std.isString(converted) : '"path" expected to be of type "string"';
            {
              path: converted,
            }
          ),
        },
        s3_file_location:: {
          local block = self,
          new():: (
            {}
          ),
          with_bucket(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket" expected to be of type "string"';
            {
              bucket: converted,
            }
          ),
          with_key(value):: (
            local converted = value;
            assert std.isString(converted) : '"key" expected to be of type "string"';
            {
              key: converted,
            }
          ),
        },
        with_efs_file_location(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            efs_file_location: value,
          }
        ),
        with_s3_file_location(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_file_location: value,
          }
        ),
        with_efs_file_location_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            efs_file_location+: converted,
          }
        ),
        with_s3_file_location_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_file_location+: converted,
          }
        ),
      },
      with_destination_file_location(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          destination_file_location: value,
        }
      ),
      with_destination_file_location_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          destination_file_location+: converted,
        }
      ),
    },
    custom_step_details:: {
      local block = self,
      new():: (
        {}
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_source_file_location(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_file_location" expected to be of type "string"';
        {
          source_file_location: converted,
        }
      ),
      with_target(value):: (
        local converted = value;
        assert std.isString(converted) : '"target" expected to be of type "string"';
        {
          target: converted,
        }
      ),
      with_timeout_seconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"timeout_seconds" expected to be of type "number"';
        {
          timeout_seconds: converted,
        }
      ),
    },
    decrypt_step_details:: {
      local block = self,
      new(type):: (
        {}
        + block.with_type(type)
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_overwrite_existing(value):: (
        local converted = value;
        assert std.isString(converted) : '"overwrite_existing" expected to be of type "string"';
        {
          overwrite_existing: converted,
        }
      ),
      with_source_file_location(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_file_location" expected to be of type "string"';
        {
          source_file_location: converted,
        }
      ),
      with_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
      destination_file_location:: {
        local block = self,
        new():: (
          {}
        ),
        efs_file_location:: {
          local block = self,
          new():: (
            {}
          ),
          with_file_system_id(value):: (
            local converted = value;
            assert std.isString(converted) : '"file_system_id" expected to be of type "string"';
            {
              file_system_id: converted,
            }
          ),
          with_path(value):: (
            local converted = value;
            assert std.isString(converted) : '"path" expected to be of type "string"';
            {
              path: converted,
            }
          ),
        },
        s3_file_location:: {
          local block = self,
          new():: (
            {}
          ),
          with_bucket(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket" expected to be of type "string"';
            {
              bucket: converted,
            }
          ),
          with_key(value):: (
            local converted = value;
            assert std.isString(converted) : '"key" expected to be of type "string"';
            {
              key: converted,
            }
          ),
        },
        with_efs_file_location(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            efs_file_location: value,
          }
        ),
        with_s3_file_location(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_file_location: value,
          }
        ),
        with_efs_file_location_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            efs_file_location+: converted,
          }
        ),
        with_s3_file_location_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_file_location+: converted,
          }
        ),
      },
      with_destination_file_location(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          destination_file_location: value,
        }
      ),
      with_destination_file_location_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          destination_file_location+: converted,
        }
      ),
    },
    delete_step_details:: {
      local block = self,
      new():: (
        {}
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_source_file_location(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_file_location" expected to be of type "string"';
        {
          source_file_location: converted,
        }
      ),
    },
    tag_step_details:: {
      local block = self,
      new():: (
        {}
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_source_file_location(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_file_location" expected to be of type "string"';
        {
          source_file_location: converted,
        }
      ),
      tags:: {
        local block = self,
        new(key, value):: (
          {}
          + block.with_key(key)
          + block.with_value(value)
        ),
        with_key(value):: (
          local converted = value;
          assert std.isString(converted) : '"key" expected to be of type "string"';
          {
            key: converted,
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
      with_tags(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tags: value,
        }
      ),
      with_tags_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tags+: converted,
        }
      ),
    },
    with_copy_step_details(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        copy_step_details: value,
      }
    ),
    with_custom_step_details(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_step_details: value,
      }
    ),
    with_decrypt_step_details(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        decrypt_step_details: value,
      }
    ),
    with_delete_step_details(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        delete_step_details: value,
      }
    ),
    with_tag_step_details(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        tag_step_details: value,
      }
    ),
    with_copy_step_details_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        copy_step_details+: converted,
      }
    ),
    with_custom_step_details_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_step_details+: converted,
      }
    ),
    with_decrypt_step_details_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        decrypt_step_details+: converted,
      }
    ),
    with_delete_step_details_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        delete_step_details+: converted,
      }
    ),
    with_tag_step_details_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        tag_step_details+: converted,
      }
    ),
  },
  steps:: {
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
    copy_step_details:: {
      local block = self,
      new():: (
        {}
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_overwrite_existing(value):: (
        local converted = value;
        assert std.isString(converted) : '"overwrite_existing" expected to be of type "string"';
        {
          overwrite_existing: converted,
        }
      ),
      with_source_file_location(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_file_location" expected to be of type "string"';
        {
          source_file_location: converted,
        }
      ),
      destination_file_location:: {
        local block = self,
        new():: (
          {}
        ),
        efs_file_location:: {
          local block = self,
          new():: (
            {}
          ),
          with_file_system_id(value):: (
            local converted = value;
            assert std.isString(converted) : '"file_system_id" expected to be of type "string"';
            {
              file_system_id: converted,
            }
          ),
          with_path(value):: (
            local converted = value;
            assert std.isString(converted) : '"path" expected to be of type "string"';
            {
              path: converted,
            }
          ),
        },
        s3_file_location:: {
          local block = self,
          new():: (
            {}
          ),
          with_bucket(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket" expected to be of type "string"';
            {
              bucket: converted,
            }
          ),
          with_key(value):: (
            local converted = value;
            assert std.isString(converted) : '"key" expected to be of type "string"';
            {
              key: converted,
            }
          ),
        },
        with_efs_file_location(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            efs_file_location: value,
          }
        ),
        with_s3_file_location(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_file_location: value,
          }
        ),
        with_efs_file_location_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            efs_file_location+: converted,
          }
        ),
        with_s3_file_location_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_file_location+: converted,
          }
        ),
      },
      with_destination_file_location(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          destination_file_location: value,
        }
      ),
      with_destination_file_location_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          destination_file_location+: converted,
        }
      ),
    },
    custom_step_details:: {
      local block = self,
      new():: (
        {}
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_source_file_location(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_file_location" expected to be of type "string"';
        {
          source_file_location: converted,
        }
      ),
      with_target(value):: (
        local converted = value;
        assert std.isString(converted) : '"target" expected to be of type "string"';
        {
          target: converted,
        }
      ),
      with_timeout_seconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"timeout_seconds" expected to be of type "number"';
        {
          timeout_seconds: converted,
        }
      ),
    },
    decrypt_step_details:: {
      local block = self,
      new(type):: (
        {}
        + block.with_type(type)
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_overwrite_existing(value):: (
        local converted = value;
        assert std.isString(converted) : '"overwrite_existing" expected to be of type "string"';
        {
          overwrite_existing: converted,
        }
      ),
      with_source_file_location(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_file_location" expected to be of type "string"';
        {
          source_file_location: converted,
        }
      ),
      with_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
      destination_file_location:: {
        local block = self,
        new():: (
          {}
        ),
        efs_file_location:: {
          local block = self,
          new():: (
            {}
          ),
          with_file_system_id(value):: (
            local converted = value;
            assert std.isString(converted) : '"file_system_id" expected to be of type "string"';
            {
              file_system_id: converted,
            }
          ),
          with_path(value):: (
            local converted = value;
            assert std.isString(converted) : '"path" expected to be of type "string"';
            {
              path: converted,
            }
          ),
        },
        s3_file_location:: {
          local block = self,
          new():: (
            {}
          ),
          with_bucket(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket" expected to be of type "string"';
            {
              bucket: converted,
            }
          ),
          with_key(value):: (
            local converted = value;
            assert std.isString(converted) : '"key" expected to be of type "string"';
            {
              key: converted,
            }
          ),
        },
        with_efs_file_location(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            efs_file_location: value,
          }
        ),
        with_s3_file_location(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_file_location: value,
          }
        ),
        with_efs_file_location_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            efs_file_location+: converted,
          }
        ),
        with_s3_file_location_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_file_location+: converted,
          }
        ),
      },
      with_destination_file_location(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          destination_file_location: value,
        }
      ),
      with_destination_file_location_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          destination_file_location+: converted,
        }
      ),
    },
    delete_step_details:: {
      local block = self,
      new():: (
        {}
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_source_file_location(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_file_location" expected to be of type "string"';
        {
          source_file_location: converted,
        }
      ),
    },
    tag_step_details:: {
      local block = self,
      new():: (
        {}
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_source_file_location(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_file_location" expected to be of type "string"';
        {
          source_file_location: converted,
        }
      ),
      tags:: {
        local block = self,
        new(key, value):: (
          {}
          + block.with_key(key)
          + block.with_value(value)
        ),
        with_key(value):: (
          local converted = value;
          assert std.isString(converted) : '"key" expected to be of type "string"';
          {
            key: converted,
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
      with_tags(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tags: value,
        }
      ),
      with_tags_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tags+: converted,
        }
      ),
    },
    with_copy_step_details(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        copy_step_details: value,
      }
    ),
    with_custom_step_details(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_step_details: value,
      }
    ),
    with_decrypt_step_details(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        decrypt_step_details: value,
      }
    ),
    with_delete_step_details(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        delete_step_details: value,
      }
    ),
    with_tag_step_details(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        tag_step_details: value,
      }
    ),
    with_copy_step_details_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        copy_step_details+: converted,
      }
    ),
    with_custom_step_details_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_step_details+: converted,
      }
    ),
    with_decrypt_step_details_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        decrypt_step_details+: converted,
      }
    ),
    with_delete_step_details_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        delete_step_details+: converted,
      }
    ),
    with_tag_step_details_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        tag_step_details+: converted,
      }
    ),
  },
  with_on_exception_steps(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      on_exception_steps: value,
    }
  ),
  with_steps(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      steps: value,
    }
  ),
  with_on_exception_steps_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      on_exception_steps+: converted,
    }
  ),
  with_steps_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      steps+: converted,
    }
  ),
}
