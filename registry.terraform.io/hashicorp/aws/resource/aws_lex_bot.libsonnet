{
  local block = self,
  new(child_directed, name):: (
    {}
    + block.with_child_directed(child_directed)
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_checksum(value):: (
    local converted = value;
    assert std.isString(converted) : '"checksum" expected to be of type "string"';
    {
      checksum: converted,
    }
  ),
  with_child_directed(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"child_directed" expected to be of type "bool"';
    {
      child_directed: converted,
    }
  ),
  with_create_version(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"create_version" expected to be of type "bool"';
    {
      create_version: converted,
    }
  ),
  with_created_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_date" expected to be of type "string"';
    {
      created_date: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_detect_sentiment(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"detect_sentiment" expected to be of type "bool"';
    {
      detect_sentiment: converted,
    }
  ),
  with_enable_model_improvements(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_model_improvements" expected to be of type "bool"';
    {
      enable_model_improvements: converted,
    }
  ),
  with_failure_reason(value):: (
    local converted = value;
    assert std.isString(converted) : '"failure_reason" expected to be of type "string"';
    {
      failure_reason: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_idle_session_ttl_in_seconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"idle_session_ttl_in_seconds" expected to be of type "number"';
    {
      idle_session_ttl_in_seconds: converted,
    }
  ),
  with_last_updated_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_updated_date" expected to be of type "string"';
    {
      last_updated_date: converted,
    }
  ),
  with_locale(value):: (
    local converted = value;
    assert std.isString(converted) : '"locale" expected to be of type "string"';
    {
      locale: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_nlu_intent_confidence_threshold(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"nlu_intent_confidence_threshold" expected to be of type "number"';
    {
      nlu_intent_confidence_threshold: converted,
    }
  ),
  with_process_behavior(value):: (
    local converted = value;
    assert std.isString(converted) : '"process_behavior" expected to be of type "string"';
    {
      process_behavior: converted,
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
  with_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
  with_voice_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"voice_id" expected to be of type "string"';
    {
      voice_id: converted,
    }
  ),
  abort_statement:: {
    local block = self,
    new():: (
      {}
    ),
    with_response_card(value):: (
      local converted = value;
      assert std.isString(converted) : '"response_card" expected to be of type "string"';
      {
        response_card: converted,
      }
    ),
    message:: {
      local block = self,
      new(content, content_type):: (
        {}
        + block.with_content(content)
        + block.with_content_type(content_type)
      ),
      with_content(value):: (
        local converted = value;
        assert std.isString(converted) : '"content" expected to be of type "string"';
        {
          content: converted,
        }
      ),
      with_content_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"content_type" expected to be of type "string"';
        {
          content_type: converted,
        }
      ),
      with_group_number(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"group_number" expected to be of type "number"';
        {
          group_number: converted,
        }
      ),
    },
    with_message(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        message: value,
      }
    ),
    with_message_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        message+: converted,
      }
    ),
  },
  clarification_prompt:: {
    local block = self,
    new(max_attempts):: (
      {}
      + block.with_max_attempts(max_attempts)
    ),
    with_max_attempts(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_attempts" expected to be of type "number"';
      {
        max_attempts: converted,
      }
    ),
    with_response_card(value):: (
      local converted = value;
      assert std.isString(converted) : '"response_card" expected to be of type "string"';
      {
        response_card: converted,
      }
    ),
    message:: {
      local block = self,
      new(content, content_type):: (
        {}
        + block.with_content(content)
        + block.with_content_type(content_type)
      ),
      with_content(value):: (
        local converted = value;
        assert std.isString(converted) : '"content" expected to be of type "string"';
        {
          content: converted,
        }
      ),
      with_content_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"content_type" expected to be of type "string"';
        {
          content_type: converted,
        }
      ),
      with_group_number(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"group_number" expected to be of type "number"';
        {
          group_number: converted,
        }
      ),
    },
    with_message(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        message: value,
      }
    ),
    with_message_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        message+: converted,
      }
    ),
  },
  intent:: {
    local block = self,
    new(intent_name, intent_version):: (
      {}
      + block.with_intent_name(intent_name)
      + block.with_intent_version(intent_version)
    ),
    with_intent_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"intent_name" expected to be of type "string"';
      {
        intent_name: converted,
      }
    ),
    with_intent_version(value):: (
      local converted = value;
      assert std.isString(converted) : '"intent_version" expected to be of type "string"';
      {
        intent_version: converted,
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
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_abort_statement(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      abort_statement: value,
    }
  ),
  with_clarification_prompt(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      clarification_prompt: value,
    }
  ),
  with_intent(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      intent: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_abort_statement_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      abort_statement+: converted,
    }
  ),
  with_clarification_prompt_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      clarification_prompt+: converted,
    }
  ),
  with_intent_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      intent+: converted,
    }
  ),
}
