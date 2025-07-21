{
  local block = self,
  new(destination_location_arn, source_location_arn):: (
    {}
    + block.with_destination_location_arn(destination_location_arn)
    + block.with_source_location_arn(source_location_arn)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_cloudwatch_log_group_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"cloudwatch_log_group_arn" expected to be of type "string"';
    {
      cloudwatch_log_group_arn: converted,
    }
  ),
  with_destination_location_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination_location_arn" expected to be of type "string"';
    {
      destination_location_arn: converted,
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
  with_source_location_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_location_arn" expected to be of type "string"';
    {
      source_location_arn: converted,
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
  with_task_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"task_mode" expected to be of type "string"';
    {
      task_mode: converted,
    }
  ),
  excludes:: {
    local block = self,
    new():: (
      {}
    ),
    with_filter_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"filter_type" expected to be of type "string"';
      {
        filter_type: converted,
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
  includes:: {
    local block = self,
    new():: (
      {}
    ),
    with_filter_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"filter_type" expected to be of type "string"';
      {
        filter_type: converted,
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
  options:: {
    local block = self,
    new():: (
      {}
    ),
    with_atime(value):: (
      local converted = value;
      assert std.isString(converted) : '"atime" expected to be of type "string"';
      {
        atime: converted,
      }
    ),
    with_bytes_per_second(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"bytes_per_second" expected to be of type "number"';
      {
        bytes_per_second: converted,
      }
    ),
    with_gid(value):: (
      local converted = value;
      assert std.isString(converted) : '"gid" expected to be of type "string"';
      {
        gid: converted,
      }
    ),
    with_log_level(value):: (
      local converted = value;
      assert std.isString(converted) : '"log_level" expected to be of type "string"';
      {
        log_level: converted,
      }
    ),
    with_mtime(value):: (
      local converted = value;
      assert std.isString(converted) : '"mtime" expected to be of type "string"';
      {
        mtime: converted,
      }
    ),
    with_object_tags(value):: (
      local converted = value;
      assert std.isString(converted) : '"object_tags" expected to be of type "string"';
      {
        object_tags: converted,
      }
    ),
    with_overwrite_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"overwrite_mode" expected to be of type "string"';
      {
        overwrite_mode: converted,
      }
    ),
    with_posix_permissions(value):: (
      local converted = value;
      assert std.isString(converted) : '"posix_permissions" expected to be of type "string"';
      {
        posix_permissions: converted,
      }
    ),
    with_preserve_deleted_files(value):: (
      local converted = value;
      assert std.isString(converted) : '"preserve_deleted_files" expected to be of type "string"';
      {
        preserve_deleted_files: converted,
      }
    ),
    with_preserve_devices(value):: (
      local converted = value;
      assert std.isString(converted) : '"preserve_devices" expected to be of type "string"';
      {
        preserve_devices: converted,
      }
    ),
    with_security_descriptor_copy_flags(value):: (
      local converted = value;
      assert std.isString(converted) : '"security_descriptor_copy_flags" expected to be of type "string"';
      {
        security_descriptor_copy_flags: converted,
      }
    ),
    with_task_queueing(value):: (
      local converted = value;
      assert std.isString(converted) : '"task_queueing" expected to be of type "string"';
      {
        task_queueing: converted,
      }
    ),
    with_transfer_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"transfer_mode" expected to be of type "string"';
      {
        transfer_mode: converted,
      }
    ),
    with_uid(value):: (
      local converted = value;
      assert std.isString(converted) : '"uid" expected to be of type "string"';
      {
        uid: converted,
      }
    ),
    with_verify_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"verify_mode" expected to be of type "string"';
      {
        verify_mode: converted,
      }
    ),
  },
  schedule:: {
    local block = self,
    new(schedule_expression):: (
      {}
      + block.with_schedule_expression(schedule_expression)
    ),
    with_schedule_expression(value):: (
      local converted = value;
      assert std.isString(converted) : '"schedule_expression" expected to be of type "string"';
      {
        schedule_expression: converted,
      }
    ),
  },
  task_report_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_output_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"output_type" expected to be of type "string"';
      {
        output_type: converted,
      }
    ),
    with_report_level(value):: (
      local converted = value;
      assert std.isString(converted) : '"report_level" expected to be of type "string"';
      {
        report_level: converted,
      }
    ),
    with_s3_object_versioning(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_object_versioning" expected to be of type "string"';
      {
        s3_object_versioning: converted,
      }
    ),
    report_overrides:: {
      local block = self,
      new():: (
        {}
      ),
      with_deleted_override(value):: (
        local converted = value;
        assert std.isString(converted) : '"deleted_override" expected to be of type "string"';
        {
          deleted_override: converted,
        }
      ),
      with_skipped_override(value):: (
        local converted = value;
        assert std.isString(converted) : '"skipped_override" expected to be of type "string"';
        {
          skipped_override: converted,
        }
      ),
      with_transferred_override(value):: (
        local converted = value;
        assert std.isString(converted) : '"transferred_override" expected to be of type "string"';
        {
          transferred_override: converted,
        }
      ),
      with_verified_override(value):: (
        local converted = value;
        assert std.isString(converted) : '"verified_override" expected to be of type "string"';
        {
          verified_override: converted,
        }
      ),
    },
    s3_destination:: {
      local block = self,
      new(bucket_access_role_arn, s3_bucket_arn):: (
        {}
        + block.with_bucket_access_role_arn(bucket_access_role_arn)
        + block.with_s3_bucket_arn(s3_bucket_arn)
      ),
      with_bucket_access_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_access_role_arn" expected to be of type "string"';
        {
          bucket_access_role_arn: converted,
        }
      ),
      with_s3_bucket_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_bucket_arn" expected to be of type "string"';
        {
          s3_bucket_arn: converted,
        }
      ),
      with_subdirectory(value):: (
        local converted = value;
        assert std.isString(converted) : '"subdirectory" expected to be of type "string"';
        {
          subdirectory: converted,
        }
      ),
    },
    with_report_overrides(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        report_overrides: value,
      }
    ),
    with_s3_destination(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_destination: value,
      }
    ),
    with_report_overrides_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        report_overrides+: converted,
      }
    ),
    with_s3_destination_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_destination+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
  },
  with_excludes(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      excludes: value,
    }
  ),
  with_includes(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      includes: value,
    }
  ),
  with_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      options: value,
    }
  ),
  with_schedule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schedule: value,
    }
  ),
  with_task_report_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      task_report_config: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_excludes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      excludes+: converted,
    }
  ),
  with_includes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      includes+: converted,
    }
  ),
  with_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      options+: converted,
    }
  ),
  with_schedule_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schedule+: converted,
    }
  ),
  with_task_report_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      task_report_config+: converted,
    }
  ),
}
