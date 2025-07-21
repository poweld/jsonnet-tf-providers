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
  with_checksum(value):: (
    local converted = value;
    assert std.isString(converted) : '"checksum" expected to be of type "string"';
    {
      checksum: converted,
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
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_last_updated_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_updated_date" expected to be of type "string"';
    {
      last_updated_date: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_parent_intent_signature(value):: (
    local converted = value;
    assert std.isString(converted) : '"parent_intent_signature" expected to be of type "string"';
    {
      parent_intent_signature: converted,
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
  with_sample_utterances(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"sample_utterances" expected to be of type "set"';
    {
      sample_utterances: converted,
    }
  ),
  with_sample_utterances_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"sample_utterances" expected to be of type "set"';
    {
      sample_utterances+: converted,
    }
  ),
  with_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
  conclusion_statement:: {
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
  confirmation_prompt:: {
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
  dialog_code_hook:: {
    local block = self,
    new(message_version, uri):: (
      {}
      + block.with_message_version(message_version)
      + block.with_uri(uri)
    ),
    with_message_version(value):: (
      local converted = value;
      assert std.isString(converted) : '"message_version" expected to be of type "string"';
      {
        message_version: converted,
      }
    ),
    with_uri(value):: (
      local converted = value;
      assert std.isString(converted) : '"uri" expected to be of type "string"';
      {
        uri: converted,
      }
    ),
  },
  follow_up_prompt:: {
    local block = self,
    new():: (
      {}
    ),
    prompt:: {
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
    rejection_statement:: {
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
    with_prompt(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        prompt: value,
      }
    ),
    with_rejection_statement(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rejection_statement: value,
      }
    ),
    with_prompt_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        prompt+: converted,
      }
    ),
    with_rejection_statement_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rejection_statement+: converted,
      }
    ),
  },
  fulfillment_activity:: {
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
    code_hook:: {
      local block = self,
      new(message_version, uri):: (
        {}
        + block.with_message_version(message_version)
        + block.with_uri(uri)
      ),
      with_message_version(value):: (
        local converted = value;
        assert std.isString(converted) : '"message_version" expected to be of type "string"';
        {
          message_version: converted,
        }
      ),
      with_uri(value):: (
        local converted = value;
        assert std.isString(converted) : '"uri" expected to be of type "string"';
        {
          uri: converted,
        }
      ),
    },
    with_code_hook(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_hook: value,
      }
    ),
    with_code_hook_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_hook+: converted,
      }
    ),
  },
  rejection_statement:: {
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
  slot:: {
    local block = self,
    new(name, slot_constraint, slot_type):: (
      {}
      + block.with_name(name)
      + block.with_slot_constraint(slot_constraint)
      + block.with_slot_type(slot_type)
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
    with_priority(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"priority" expected to be of type "number"';
      {
        priority: converted,
      }
    ),
    with_response_card(value):: (
      local converted = value;
      assert std.isString(converted) : '"response_card" expected to be of type "string"';
      {
        response_card: converted,
      }
    ),
    with_sample_utterances(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"sample_utterances" expected to be of type "list"';
      {
        sample_utterances: converted,
      }
    ),
    with_sample_utterances_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"sample_utterances" expected to be of type "list"';
      {
        sample_utterances+: converted,
      }
    ),
    with_slot_constraint(value):: (
      local converted = value;
      assert std.isString(converted) : '"slot_constraint" expected to be of type "string"';
      {
        slot_constraint: converted,
      }
    ),
    with_slot_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"slot_type" expected to be of type "string"';
      {
        slot_type: converted,
      }
    ),
    with_slot_type_version(value):: (
      local converted = value;
      assert std.isString(converted) : '"slot_type_version" expected to be of type "string"';
      {
        slot_type_version: converted,
      }
    ),
    value_elicitation_prompt:: {
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
    with_value_elicitation_prompt(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        value_elicitation_prompt: value,
      }
    ),
    with_value_elicitation_prompt_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        value_elicitation_prompt+: converted,
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
  with_conclusion_statement(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      conclusion_statement: value,
    }
  ),
  with_confirmation_prompt(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      confirmation_prompt: value,
    }
  ),
  with_dialog_code_hook(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dialog_code_hook: value,
    }
  ),
  with_follow_up_prompt(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      follow_up_prompt: value,
    }
  ),
  with_fulfillment_activity(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      fulfillment_activity: value,
    }
  ),
  with_rejection_statement(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rejection_statement: value,
    }
  ),
  with_slot(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      slot: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_conclusion_statement_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      conclusion_statement+: converted,
    }
  ),
  with_confirmation_prompt_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      confirmation_prompt+: converted,
    }
  ),
  with_dialog_code_hook_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dialog_code_hook+: converted,
    }
  ),
  with_follow_up_prompt_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      follow_up_prompt+: converted,
    }
  ),
  with_fulfillment_activity_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      fulfillment_activity+: converted,
    }
  ),
  with_rejection_statement_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rejection_statement+: converted,
    }
  ),
  with_slot_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      slot+: converted,
    }
  ),
}
