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
  configuration:: {
    local block = self,
    new():: (
      {}
    ),
    execute_command_configuration:: {
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
      with_logging(value):: (
        local converted = value;
        assert std.isString(converted) : '"logging" expected to be of type "string"';
        {
          logging: converted,
        }
      ),
      log_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        with_cloud_watch_encryption_enabled(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"cloud_watch_encryption_enabled" expected to be of type "bool"';
          {
            cloud_watch_encryption_enabled: converted,
          }
        ),
        with_cloud_watch_log_group_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"cloud_watch_log_group_name" expected to be of type "string"';
          {
            cloud_watch_log_group_name: converted,
          }
        ),
        with_s3_bucket_encryption_enabled(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"s3_bucket_encryption_enabled" expected to be of type "bool"';
          {
            s3_bucket_encryption_enabled: converted,
          }
        ),
        with_s3_bucket_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_bucket_name" expected to be of type "string"';
          {
            s3_bucket_name: converted,
          }
        ),
        with_s3_key_prefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_key_prefix" expected to be of type "string"';
          {
            s3_key_prefix: converted,
          }
        ),
      },
      with_log_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          log_configuration: value,
        }
      ),
      with_log_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          log_configuration+: converted,
        }
      ),
    },
    managed_storage_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      with_fargate_ephemeral_storage_kms_key_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"fargate_ephemeral_storage_kms_key_id" expected to be of type "string"';
        {
          fargate_ephemeral_storage_kms_key_id: converted,
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
    with_execute_command_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        execute_command_configuration: value,
      }
    ),
    with_managed_storage_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        managed_storage_configuration: value,
      }
    ),
    with_execute_command_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        execute_command_configuration+: converted,
      }
    ),
    with_managed_storage_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        managed_storage_configuration+: converted,
      }
    ),
  },
  service_connect_defaults:: {
    local block = self,
    new(namespace):: (
      {}
      + block.with_namespace(namespace)
    ),
    with_namespace(value):: (
      local converted = value;
      assert std.isString(converted) : '"namespace" expected to be of type "string"';
      {
        namespace: converted,
      }
    ),
  },
  setting:: {
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
  with_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration: value,
    }
  ),
  with_service_connect_defaults(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      service_connect_defaults: value,
    }
  ),
  with_setting(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      setting: value,
    }
  ),
  with_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration+: converted,
    }
  ),
  with_service_connect_defaults_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      service_connect_defaults+: converted,
    }
  ),
  with_setting_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      setting+: converted,
    }
  ),
}
