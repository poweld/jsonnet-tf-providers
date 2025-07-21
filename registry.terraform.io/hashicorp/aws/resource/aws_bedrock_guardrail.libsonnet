{
  local block = self,
  new(blocked_input_messaging, blocked_outputs_messaging, name):: (
    {}
    + block.with_blocked_input_messaging(blocked_input_messaging)
    + block.with_blocked_outputs_messaging(blocked_outputs_messaging)
    + block.with_name(name)
  ),
  with_blocked_input_messaging(value):: (
    local converted = value;
    assert std.isString(converted) : '"blocked_input_messaging" expected to be of type "string"';
    {
      blocked_input_messaging: converted,
    }
  ),
  with_blocked_outputs_messaging(value):: (
    local converted = value;
    assert std.isString(converted) : '"blocked_outputs_messaging" expected to be of type "string"';
    {
      blocked_outputs_messaging: converted,
    }
  ),
  with_created_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_at" expected to be of type "string"';
    {
      created_at: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_guardrail_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"guardrail_arn" expected to be of type "string"';
    {
      guardrail_arn: converted,
    }
  ),
  with_guardrail_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"guardrail_id" expected to be of type "string"';
    {
      guardrail_id: converted,
    }
  ),
  with_kms_key_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
    {
      kms_key_arn: converted,
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
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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
  with_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
  content_policy_config:: {
    local block = self,
    new():: (
      {}
    ),
    filters_config:: {
      local block = self,
      new(input_strength, output_strength, type):: (
        {}
        + block.with_input_strength(input_strength)
        + block.with_output_strength(output_strength)
        + block.with_type(type)
      ),
      with_input_strength(value):: (
        local converted = value;
        assert std.isString(converted) : '"input_strength" expected to be of type "string"';
        {
          input_strength: converted,
        }
      ),
      with_output_strength(value):: (
        local converted = value;
        assert std.isString(converted) : '"output_strength" expected to be of type "string"';
        {
          output_strength: converted,
        }
      ),
      with_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    with_filters_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filters_config: value,
      }
    ),
    with_filters_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filters_config+: converted,
      }
    ),
  },
  contextual_grounding_policy_config:: {
    local block = self,
    new():: (
      {}
    ),
    filters_config:: {
      local block = self,
      new(threshold, type):: (
        {}
        + block.with_threshold(threshold)
        + block.with_type(type)
      ),
      with_threshold(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"threshold" expected to be of type "number"';
        {
          threshold: converted,
        }
      ),
      with_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    with_filters_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filters_config: value,
      }
    ),
    with_filters_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filters_config+: converted,
      }
    ),
  },
  sensitive_information_policy_config:: {
    local block = self,
    new():: (
      {}
    ),
    pii_entities_config:: {
      local block = self,
      new(action, type):: (
        {}
        + block.with_action(action)
        + block.with_type(type)
      ),
      with_action(value):: (
        local converted = value;
        assert std.isString(converted) : '"action" expected to be of type "string"';
        {
          action: converted,
        }
      ),
      with_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    regexes_config:: {
      local block = self,
      new(action, name, pattern):: (
        {}
        + block.with_action(action)
        + block.with_name(name)
        + block.with_pattern(pattern)
      ),
      with_action(value):: (
        local converted = value;
        assert std.isString(converted) : '"action" expected to be of type "string"';
        {
          action: converted,
        }
      ),
      with_description(value):: (
        local converted = value;
        assert std.isString(converted) : '"description" expected to be of type "string"';
        {
          description: converted,
        }
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_pattern(value):: (
        local converted = value;
        assert std.isString(converted) : '"pattern" expected to be of type "string"';
        {
          pattern: converted,
        }
      ),
    },
    with_pii_entities_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        pii_entities_config: value,
      }
    ),
    with_regexes_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        regexes_config: value,
      }
    ),
    with_pii_entities_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        pii_entities_config+: converted,
      }
    ),
    with_regexes_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        regexes_config+: converted,
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
  topic_policy_config:: {
    local block = self,
    new():: (
      {}
    ),
    topics_config:: {
      local block = self,
      new(definition, name, type):: (
        {}
        + block.with_definition(definition)
        + block.with_name(name)
        + block.with_type(type)
      ),
      with_definition(value):: (
        local converted = value;
        assert std.isString(converted) : '"definition" expected to be of type "string"';
        {
          definition: converted,
        }
      ),
      with_examples(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"examples" expected to be of type "list"';
        {
          examples: converted,
        }
      ),
      with_examples_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"examples" expected to be of type "list"';
        {
          examples+: converted,
        }
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    with_topics_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        topics_config: value,
      }
    ),
    with_topics_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        topics_config+: converted,
      }
    ),
  },
  word_policy_config:: {
    local block = self,
    new():: (
      {}
    ),
    managed_word_lists_config:: {
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
    },
    words_config:: {
      local block = self,
      new(text):: (
        {}
        + block.with_text(text)
      ),
      with_text(value):: (
        local converted = value;
        assert std.isString(converted) : '"text" expected to be of type "string"';
        {
          text: converted,
        }
      ),
    },
    with_managed_word_lists_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        managed_word_lists_config: value,
      }
    ),
    with_words_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        words_config: value,
      }
    ),
    with_managed_word_lists_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        managed_word_lists_config+: converted,
      }
    ),
    with_words_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        words_config+: converted,
      }
    ),
  },
  with_content_policy_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      content_policy_config: value,
    }
  ),
  with_contextual_grounding_policy_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      contextual_grounding_policy_config: value,
    }
  ),
  with_sensitive_information_policy_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sensitive_information_policy_config: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_topic_policy_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      topic_policy_config: value,
    }
  ),
  with_word_policy_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      word_policy_config: value,
    }
  ),
  with_content_policy_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      content_policy_config+: converted,
    }
  ),
  with_contextual_grounding_policy_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      contextual_grounding_policy_config+: converted,
    }
  ),
  with_sensitive_information_policy_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sensitive_information_policy_config+: converted,
    }
  ),
  with_topic_policy_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      topic_policy_config+: converted,
    }
  ),
  with_word_policy_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      word_policy_config+: converted,
    }
  ),
}
