{
  local block = self,
  new(default_expiration_days, domain_name):: (
    {}
    + block.with_default_expiration_days(default_expiration_days)
    + block.with_domain_name(domain_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_dead_letter_queue_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"dead_letter_queue_url" expected to be of type "string"';
    {
      dead_letter_queue_url: converted,
    }
  ),
  with_default_encryption_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_encryption_key" expected to be of type "string"';
    {
      default_encryption_key: converted,
    }
  ),
  with_default_expiration_days(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"default_expiration_days" expected to be of type "number"';
    {
      default_expiration_days: converted,
    }
  ),
  with_domain_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
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
  matching:: {
    local block = self,
    new(enabled):: (
      {}
      + block.with_enabled(enabled)
    ),
    with_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    auto_merging:: {
      local block = self,
      new(enabled):: (
        {}
        + block.with_enabled(enabled)
      ),
      with_enabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      with_min_allowed_confidence_score_for_merging(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"min_allowed_confidence_score_for_merging" expected to be of type "number"';
        {
          min_allowed_confidence_score_for_merging: converted,
        }
      ),
      conflict_resolution:: {
        local block = self,
        new(conflict_resolving_model):: (
          {}
          + block.with_conflict_resolving_model(conflict_resolving_model)
        ),
        with_conflict_resolving_model(value):: (
          local converted = value;
          assert std.isString(converted) : '"conflict_resolving_model" expected to be of type "string"';
          {
            conflict_resolving_model: converted,
          }
        ),
        with_source_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"source_name" expected to be of type "string"';
          {
            source_name: converted,
          }
        ),
      },
      consolidation:: {
        local block = self,
        new(matching_attributes_list):: (
          {}
          + block.with_matching_attributes_list(matching_attributes_list)
        ),
        with_matching_attributes_list(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"matching_attributes_list" expected to be of type "list"';
          {
            matching_attributes_list: converted,
          }
        ),
        with_matching_attributes_list_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"matching_attributes_list" expected to be of type "list"';
          {
            matching_attributes_list+: converted,
          }
        ),
      },
      with_conflict_resolution(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          conflict_resolution: value,
        }
      ),
      with_consolidation(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          consolidation: value,
        }
      ),
      with_conflict_resolution_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          conflict_resolution+: converted,
        }
      ),
      with_consolidation_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          consolidation+: converted,
        }
      ),
    },
    exporting_config:: {
      local block = self,
      new():: (
        {}
      ),
      s3_exporting:: {
        local block = self,
        new(s3_bucket_name):: (
          {}
          + block.with_s3_bucket_name(s3_bucket_name)
        ),
        with_s3_bucket_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_bucket_name" expected to be of type "string"';
          {
            s3_bucket_name: converted,
          }
        ),
        with_s3_key_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_key_name" expected to be of type "string"';
          {
            s3_key_name: converted,
          }
        ),
      },
      with_s3_exporting(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_exporting: value,
        }
      ),
      with_s3_exporting_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_exporting+: converted,
        }
      ),
    },
    job_schedule:: {
      local block = self,
      new(day_of_the_week, time):: (
        {}
        + block.with_day_of_the_week(day_of_the_week)
        + block.with_time(time)
      ),
      with_day_of_the_week(value):: (
        local converted = value;
        assert std.isString(converted) : '"day_of_the_week" expected to be of type "string"';
        {
          day_of_the_week: converted,
        }
      ),
      with_time(value):: (
        local converted = value;
        assert std.isString(converted) : '"time" expected to be of type "string"';
        {
          time: converted,
        }
      ),
    },
    with_auto_merging(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        auto_merging: value,
      }
    ),
    with_exporting_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        exporting_config: value,
      }
    ),
    with_job_schedule(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        job_schedule: value,
      }
    ),
    with_auto_merging_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        auto_merging+: converted,
      }
    ),
    with_exporting_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        exporting_config+: converted,
      }
    ),
    with_job_schedule_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        job_schedule+: converted,
      }
    ),
  },
  rule_based_matching:: {
    local block = self,
    new(enabled):: (
      {}
      + block.with_enabled(enabled)
    ),
    with_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    with_max_allowed_rule_level_for_matching(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_allowed_rule_level_for_matching" expected to be of type "number"';
      {
        max_allowed_rule_level_for_matching: converted,
      }
    ),
    with_max_allowed_rule_level_for_merging(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_allowed_rule_level_for_merging" expected to be of type "number"';
      {
        max_allowed_rule_level_for_merging: converted,
      }
    ),
    with_status(value):: (
      local converted = value;
      assert std.isString(converted) : '"status" expected to be of type "string"';
      {
        status: converted,
      }
    ),
    attribute_types_selector:: {
      local block = self,
      new(attribute_matching_model):: (
        {}
        + block.with_attribute_matching_model(attribute_matching_model)
      ),
      with_address(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"address" expected to be of type "list"';
        {
          address: converted,
        }
      ),
      with_address_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"address" expected to be of type "list"';
        {
          address+: converted,
        }
      ),
      with_attribute_matching_model(value):: (
        local converted = value;
        assert std.isString(converted) : '"attribute_matching_model" expected to be of type "string"';
        {
          attribute_matching_model: converted,
        }
      ),
      with_email_address(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"email_address" expected to be of type "list"';
        {
          email_address: converted,
        }
      ),
      with_email_address_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"email_address" expected to be of type "list"';
        {
          email_address+: converted,
        }
      ),
      with_phone_number(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"phone_number" expected to be of type "list"';
        {
          phone_number: converted,
        }
      ),
      with_phone_number_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"phone_number" expected to be of type "list"';
        {
          phone_number+: converted,
        }
      ),
    },
    conflict_resolution:: {
      local block = self,
      new(conflict_resolving_model):: (
        {}
        + block.with_conflict_resolving_model(conflict_resolving_model)
      ),
      with_conflict_resolving_model(value):: (
        local converted = value;
        assert std.isString(converted) : '"conflict_resolving_model" expected to be of type "string"';
        {
          conflict_resolving_model: converted,
        }
      ),
      with_source_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_name" expected to be of type "string"';
        {
          source_name: converted,
        }
      ),
    },
    exporting_config:: {
      local block = self,
      new():: (
        {}
      ),
      s3_exporting:: {
        local block = self,
        new(s3_bucket_name):: (
          {}
          + block.with_s3_bucket_name(s3_bucket_name)
        ),
        with_s3_bucket_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_bucket_name" expected to be of type "string"';
          {
            s3_bucket_name: converted,
          }
        ),
        with_s3_key_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_key_name" expected to be of type "string"';
          {
            s3_key_name: converted,
          }
        ),
      },
      with_s3_exporting(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_exporting: value,
        }
      ),
      with_s3_exporting_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_exporting+: converted,
        }
      ),
    },
    matching_rules:: {
      local block = self,
      new(rule):: (
        {}
        + block.with_rule(rule)
      ),
      with_rule(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"rule" expected to be of type "list"';
        {
          rule: converted,
        }
      ),
      with_rule_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"rule" expected to be of type "list"';
        {
          rule+: converted,
        }
      ),
    },
    with_attribute_types_selector(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        attribute_types_selector: value,
      }
    ),
    with_conflict_resolution(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        conflict_resolution: value,
      }
    ),
    with_exporting_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        exporting_config: value,
      }
    ),
    with_matching_rules(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        matching_rules: value,
      }
    ),
    with_attribute_types_selector_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        attribute_types_selector+: converted,
      }
    ),
    with_conflict_resolution_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        conflict_resolution+: converted,
      }
    ),
    with_exporting_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        exporting_config+: converted,
      }
    ),
    with_matching_rules_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        matching_rules+: converted,
      }
    ),
  },
  with_matching(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      matching: value,
    }
  ),
  with_rule_based_matching(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule_based_matching: value,
    }
  ),
  with_matching_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      matching+: converted,
    }
  ),
  with_rule_based_matching_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule_based_matching+: converted,
    }
  ),
}
