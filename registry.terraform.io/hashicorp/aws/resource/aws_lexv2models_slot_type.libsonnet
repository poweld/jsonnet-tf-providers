{
  local block = self,
  new(bot_id, bot_version, locale_id, name):: (
    {}
    + block.with_bot_id(bot_id)
    + block.with_bot_version(bot_version)
    + block.with_locale_id(locale_id)
    + block.with_name(name)
  ),
  with_bot_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"bot_id" expected to be of type "string"';
    {
      bot_id: converted,
    }
  ),
  with_bot_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"bot_version" expected to be of type "string"';
    {
      bot_version: converted,
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
  with_locale_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"locale_id" expected to be of type "string"';
    {
      locale_id: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_parent_slot_type_signature(value):: (
    local converted = value;
    assert std.isString(converted) : '"parent_slot_type_signature" expected to be of type "string"';
    {
      parent_slot_type_signature: converted,
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
  with_slot_type_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"slot_type_id" expected to be of type "string"';
    {
      slot_type_id: converted,
    }
  ),
  composite_slot_type_setting:: {
    local block = self,
    new():: (
      {}
    ),
    sub_slots:: {
      local block = self,
      new(name, slot_type_id):: (
        {}
        + block.with_name(name)
        + block.with_slot_type_id(slot_type_id)
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_slot_type_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"slot_type_id" expected to be of type "string"';
        {
          slot_type_id: converted,
        }
      ),
    },
    with_sub_slots(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sub_slots: value,
      }
    ),
    with_sub_slots_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sub_slots+: converted,
      }
    ),
  },
  external_source_setting:: {
    local block = self,
    new():: (
      {}
    ),
    grammar_slot_type_setting:: {
      local block = self,
      new():: (
        {}
      ),
      source:: {
        local block = self,
        new(kms_key_arn, s3_bucket_name, s3_object_key):: (
          {}
          + block.with_kms_key_arn(kms_key_arn)
          + block.with_s3_bucket_name(s3_bucket_name)
          + block.with_s3_object_key(s3_object_key)
        ),
        with_kms_key_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
          {
            kms_key_arn: converted,
          }
        ),
        with_s3_bucket_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_bucket_name" expected to be of type "string"';
          {
            s3_bucket_name: converted,
          }
        ),
        with_s3_object_key(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_object_key" expected to be of type "string"';
          {
            s3_object_key: converted,
          }
        ),
      },
      with_source(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          source: value,
        }
      ),
      with_source_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          source+: converted,
        }
      ),
    },
    with_grammar_slot_type_setting(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        grammar_slot_type_setting: value,
      }
    ),
    with_grammar_slot_type_setting_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        grammar_slot_type_setting+: converted,
      }
    ),
  },
  slot_type_values:: {
    local block = self,
    new():: (
      {}
    ),
    sample_value:: {
      local block = self,
      new(value):: (
        {}
        + block.with_value(value)
      ),
      with_value(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    synonyms:: {
      local block = self,
      new(value):: (
        {}
        + block.with_value(value)
      ),
      with_value(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    with_sample_value(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sample_value: value,
      }
    ),
    with_synonyms(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        synonyms: value,
      }
    ),
    with_sample_value_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sample_value+: converted,
      }
    ),
    with_synonyms_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        synonyms+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_create':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    '#with_delete':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    '#with_update':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  value_selection_setting:: {
    local block = self,
    new(resolution_strategy):: (
      {}
      + block.with_resolution_strategy(resolution_strategy)
    ),
    with_resolution_strategy(value):: (
      local converted = value;
      assert std.isString(converted) : '"resolution_strategy" expected to be of type "string"';
      {
        resolution_strategy: converted,
      }
    ),
    advanced_recognition_setting:: {
      local block = self,
      new():: (
        {}
      ),
      with_audio_recognition_strategy(value):: (
        local converted = value;
        assert std.isString(converted) : '"audio_recognition_strategy" expected to be of type "string"';
        {
          audio_recognition_strategy: converted,
        }
      ),
    },
    regex_filter:: {
      local block = self,
      new(pattern):: (
        {}
        + block.with_pattern(pattern)
      ),
      with_pattern(value):: (
        local converted = value;
        assert std.isString(converted) : '"pattern" expected to be of type "string"';
        {
          pattern: converted,
        }
      ),
    },
    with_advanced_recognition_setting(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        advanced_recognition_setting: value,
      }
    ),
    with_regex_filter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        regex_filter: value,
      }
    ),
    with_advanced_recognition_setting_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        advanced_recognition_setting+: converted,
      }
    ),
    with_regex_filter_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        regex_filter+: converted,
      }
    ),
  },
  with_composite_slot_type_setting(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      composite_slot_type_setting: value,
    }
  ),
  with_external_source_setting(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      external_source_setting: value,
    }
  ),
  with_slot_type_values(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      slot_type_values: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_value_selection_setting(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      value_selection_setting: value,
    }
  ),
  with_composite_slot_type_setting_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      composite_slot_type_setting+: converted,
    }
  ),
  with_external_source_setting_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      external_source_setting+: converted,
    }
  ),
  with_slot_type_values_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      slot_type_values+: converted,
    }
  ),
  with_value_selection_setting_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      value_selection_setting+: converted,
    }
  ),
}
