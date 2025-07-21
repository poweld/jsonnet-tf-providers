{
  local block = self,
  new(name, s3_bucket_name):: (
    {}
    + block.with_name(name)
    + block.with_s3_bucket_name(s3_bucket_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_cloud_watch_logs_group_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"cloud_watch_logs_group_arn" expected to be of type "string"';
    {
      cloud_watch_logs_group_arn: converted,
    }
  ),
  with_cloud_watch_logs_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"cloud_watch_logs_role_arn" expected to be of type "string"';
    {
      cloud_watch_logs_role_arn: converted,
    }
  ),
  with_enable_log_file_validation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_log_file_validation" expected to be of type "bool"';
    {
      enable_log_file_validation: converted,
    }
  ),
  with_enable_logging(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_logging" expected to be of type "bool"';
    {
      enable_logging: converted,
    }
  ),
  with_home_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"home_region" expected to be of type "string"';
    {
      home_region: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_include_global_service_events(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_global_service_events" expected to be of type "bool"';
    {
      include_global_service_events: converted,
    }
  ),
  with_is_multi_region_trail(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"is_multi_region_trail" expected to be of type "bool"';
    {
      is_multi_region_trail: converted,
    }
  ),
  with_is_organization_trail(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"is_organization_trail" expected to be of type "bool"';
    {
      is_organization_trail: converted,
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
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
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
  with_sns_topic_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"sns_topic_arn" expected to be of type "string"';
    {
      sns_topic_arn: converted,
    }
  ),
  with_sns_topic_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"sns_topic_name" expected to be of type "string"';
    {
      sns_topic_name: converted,
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
  advanced_event_selector:: {
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
    field_selector:: {
      local block = self,
      new(field):: (
        {}
        + block.with_field(field)
      ),
      with_ends_with(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"ends_with" expected to be of type "list"';
        {
          ends_with: converted,
        }
      ),
      with_ends_with_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"ends_with" expected to be of type "list"';
        {
          ends_with+: converted,
        }
      ),
      with_equals(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"equals" expected to be of type "list"';
        {
          equals: converted,
        }
      ),
      with_equals_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"equals" expected to be of type "list"';
        {
          equals+: converted,
        }
      ),
      with_field(value):: (
        local converted = value;
        assert std.isString(converted) : '"field" expected to be of type "string"';
        {
          field: converted,
        }
      ),
      with_not_ends_with(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"not_ends_with" expected to be of type "list"';
        {
          not_ends_with: converted,
        }
      ),
      with_not_ends_with_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"not_ends_with" expected to be of type "list"';
        {
          not_ends_with+: converted,
        }
      ),
      with_not_equals(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"not_equals" expected to be of type "list"';
        {
          not_equals: converted,
        }
      ),
      with_not_equals_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"not_equals" expected to be of type "list"';
        {
          not_equals+: converted,
        }
      ),
      with_not_starts_with(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"not_starts_with" expected to be of type "list"';
        {
          not_starts_with: converted,
        }
      ),
      with_not_starts_with_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"not_starts_with" expected to be of type "list"';
        {
          not_starts_with+: converted,
        }
      ),
      with_starts_with(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"starts_with" expected to be of type "list"';
        {
          starts_with: converted,
        }
      ),
      with_starts_with_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"starts_with" expected to be of type "list"';
        {
          starts_with+: converted,
        }
      ),
    },
    with_field_selector(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        field_selector: value,
      }
    ),
    with_field_selector_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        field_selector+: converted,
      }
    ),
  },
  event_selector:: {
    local block = self,
    new():: (
      {}
    ),
    with_exclude_management_event_sources(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exclude_management_event_sources" expected to be of type "set"';
      {
        exclude_management_event_sources: converted,
      }
    ),
    with_exclude_management_event_sources_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exclude_management_event_sources" expected to be of type "set"';
      {
        exclude_management_event_sources+: converted,
      }
    ),
    with_include_management_events(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_management_events" expected to be of type "bool"';
      {
        include_management_events: converted,
      }
    ),
    with_read_write_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"read_write_type" expected to be of type "string"';
      {
        read_write_type: converted,
      }
    ),
    data_resource:: {
      local block = self,
      new(type, values):: (
        {}
        + block.with_type(type)
        + block.with_values(values)
      ),
      with_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
      with_values(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"values" expected to be of type "list"';
        {
          values: converted,
        }
      ),
      with_values_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"values" expected to be of type "list"';
        {
          values+: converted,
        }
      ),
    },
    with_data_resource(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_resource: value,
      }
    ),
    with_data_resource_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_resource+: converted,
      }
    ),
  },
  insight_selector:: {
    local block = self,
    new(insight_type):: (
      {}
      + block.with_insight_type(insight_type)
    ),
    with_insight_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"insight_type" expected to be of type "string"';
      {
        insight_type: converted,
      }
    ),
  },
  with_advanced_event_selector(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      advanced_event_selector: value,
    }
  ),
  with_event_selector(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      event_selector: value,
    }
  ),
  with_insight_selector(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      insight_selector: value,
    }
  ),
  with_advanced_event_selector_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      advanced_event_selector+: converted,
    }
  ),
  with_event_selector_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      event_selector+: converted,
    }
  ),
  with_insight_selector_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      insight_selector+: converted,
    }
  ),
}
