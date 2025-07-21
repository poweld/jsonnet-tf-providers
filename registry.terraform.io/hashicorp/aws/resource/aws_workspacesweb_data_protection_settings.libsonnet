{
  local block = self,
  new(display_name):: (
    {}
    + block.with_display_name(display_name)
  ),
  with_additional_encryption_context(value):: (
    local converted = value;
    assert std.isObject(converted) : '"additional_encryption_context" expected to be of type "map"';
    {
      additional_encryption_context: converted,
    }
  ),
  with_associated_portal_arns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"associated_portal_arns" expected to be of type "list"';
    {
      associated_portal_arns: converted,
    }
  ),
  with_associated_portal_arns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"associated_portal_arns" expected to be of type "list"';
    {
      associated_portal_arns+: converted,
    }
  ),
  with_customer_managed_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_managed_key" expected to be of type "string"';
    {
      customer_managed_key: converted,
    }
  ),
  with_data_protection_settings_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_protection_settings_arn" expected to be of type "string"';
    {
      data_protection_settings_arn: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_display_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"display_name" expected to be of type "string"';
    {
      display_name: converted,
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
  inline_redaction_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_global_confidence_level(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"global_confidence_level" expected to be of type "number"';
      {
        global_confidence_level: converted,
      }
    ),
    with_global_enforced_urls(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"global_enforced_urls" expected to be of type "list"';
      {
        global_enforced_urls: converted,
      }
    ),
    with_global_enforced_urls_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"global_enforced_urls" expected to be of type "list"';
      {
        global_enforced_urls+: converted,
      }
    ),
    with_global_exempt_urls(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"global_exempt_urls" expected to be of type "list"';
      {
        global_exempt_urls: converted,
      }
    ),
    with_global_exempt_urls_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"global_exempt_urls" expected to be of type "list"';
      {
        global_exempt_urls+: converted,
      }
    ),
    inline_redaction_pattern:: {
      local block = self,
      new():: (
        {}
      ),
      with_built_in_pattern_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"built_in_pattern_id" expected to be of type "string"';
        {
          built_in_pattern_id: converted,
        }
      ),
      with_confidence_level(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"confidence_level" expected to be of type "number"';
        {
          confidence_level: converted,
        }
      ),
      with_enforced_urls(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"enforced_urls" expected to be of type "list"';
        {
          enforced_urls: converted,
        }
      ),
      with_enforced_urls_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"enforced_urls" expected to be of type "list"';
        {
          enforced_urls+: converted,
        }
      ),
      with_exempt_urls(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"exempt_urls" expected to be of type "list"';
        {
          exempt_urls: converted,
        }
      ),
      with_exempt_urls_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"exempt_urls" expected to be of type "list"';
        {
          exempt_urls+: converted,
        }
      ),
      custom_pattern:: {
        local block = self,
        new(pattern_name, pattern_regex):: (
          {}
          + block.with_pattern_name(pattern_name)
          + block.with_pattern_regex(pattern_regex)
        ),
        with_keyword_regex(value):: (
          local converted = value;
          assert std.isString(converted) : '"keyword_regex" expected to be of type "string"';
          {
            keyword_regex: converted,
          }
        ),
        with_pattern_description(value):: (
          local converted = value;
          assert std.isString(converted) : '"pattern_description" expected to be of type "string"';
          {
            pattern_description: converted,
          }
        ),
        with_pattern_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"pattern_name" expected to be of type "string"';
          {
            pattern_name: converted,
          }
        ),
        with_pattern_regex(value):: (
          local converted = value;
          assert std.isString(converted) : '"pattern_regex" expected to be of type "string"';
          {
            pattern_regex: converted,
          }
        ),
      },
      redaction_place_holder:: {
        local block = self,
        new(redaction_place_holder_type):: (
          {}
          + block.with_redaction_place_holder_type(redaction_place_holder_type)
        ),
        with_redaction_place_holder_text(value):: (
          local converted = value;
          assert std.isString(converted) : '"redaction_place_holder_text" expected to be of type "string"';
          {
            redaction_place_holder_text: converted,
          }
        ),
        with_redaction_place_holder_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"redaction_place_holder_type" expected to be of type "string"';
          {
            redaction_place_holder_type: converted,
          }
        ),
      },
      with_custom_pattern(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          custom_pattern: value,
        }
      ),
      with_redaction_place_holder(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          redaction_place_holder: value,
        }
      ),
      with_custom_pattern_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          custom_pattern+: converted,
        }
      ),
      with_redaction_place_holder_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          redaction_place_holder+: converted,
        }
      ),
    },
    with_inline_redaction_pattern(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        inline_redaction_pattern: value,
      }
    ),
    with_inline_redaction_pattern_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        inline_redaction_pattern+: converted,
      }
    ),
  },
  with_inline_redaction_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      inline_redaction_configuration: value,
    }
  ),
  with_inline_redaction_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      inline_redaction_configuration+: converted,
    }
  ),
}
