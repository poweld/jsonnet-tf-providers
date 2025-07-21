{
  local block = self,
  new(bot_id, bot_version, intent_id, locale_id, name):: (
    {}
    + block.with_bot_id(bot_id)
    + block.with_bot_version(bot_version)
    + block.with_intent_id(intent_id)
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
  with_intent_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"intent_id" expected to be of type "string"';
    {
      intent_id: converted,
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
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_slot_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"slot_id" expected to be of type "string"';
    {
      slot_id: converted,
    }
  ),
  with_slot_type_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"slot_type_id" expected to be of type "string"';
    {
      slot_type_id: converted,
    }
  ),
  multiple_values_setting:: {
    local block = self,
    new():: (
      {}
    ),
    with_allow_multiple_values(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"allow_multiple_values" expected to be of type "bool"';
      {
        allow_multiple_values: converted,
      }
    ),
  },
  obfuscation_setting:: {
    local block = self,
    new(obfuscation_setting_type):: (
      {}
      + block.with_obfuscation_setting_type(obfuscation_setting_type)
    ),
    with_obfuscation_setting_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"obfuscation_setting_type" expected to be of type "string"';
      {
        obfuscation_setting_type: converted,
      }
    ),
  },
  sub_slot_setting:: {
    local block = self,
    new():: (
      {}
    ),
    with_expression(value):: (
      local converted = value;
      assert std.isString(converted) : '"expression" expected to be of type "string"';
      {
        expression: converted,
      }
    ),
    slot_specification:: {
      local block = self,
      new(map_block_key, slot_type_id):: (
        {}
        + block.with_map_block_key(map_block_key)
        + block.with_slot_type_id(slot_type_id)
      ),
      with_map_block_key(value):: (
        local converted = value;
        assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
        {
          map_block_key: converted,
        }
      ),
      with_slot_type_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"slot_type_id" expected to be of type "string"';
        {
          slot_type_id: converted,
        }
      ),
      value_elicitation_setting:: {
        local block = self,
        new():: (
          {}
        ),
        default_value_specification:: {
          local block = self,
          new():: (
            {}
          ),
          default_value_list:: {
            local block = self,
            new(default_value):: (
              {}
              + block.with_default_value(default_value)
            ),
            with_default_value(value):: (
              local converted = value;
              assert std.isString(converted) : '"default_value" expected to be of type "string"';
              {
                default_value: converted,
              }
            ),
          },
          with_default_value_list(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              default_value_list: value,
            }
          ),
          with_default_value_list_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              default_value_list+: converted,
            }
          ),
        },
        prompt_specification:: {
          local block = self,
          new(max_retries):: (
            {}
            + block.with_max_retries(max_retries)
          ),
          with_allow_interrupt(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"allow_interrupt" expected to be of type "bool"';
            {
              allow_interrupt: converted,
            }
          ),
          with_max_retries(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"max_retries" expected to be of type "number"';
            {
              max_retries: converted,
            }
          ),
          with_message_selection_strategy(value):: (
            local converted = value;
            assert std.isString(converted) : '"message_selection_strategy" expected to be of type "string"';
            {
              message_selection_strategy: converted,
            }
          ),
          message_group:: {
            local block = self,
            new():: (
              {}
            ),
            message:: {
              local block = self,
              new():: (
                {}
              ),
              custom_payload:: {
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
              image_response_card:: {
                local block = self,
                new(title):: (
                  {}
                  + block.with_title(title)
                ),
                with_image_url(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"image_url" expected to be of type "string"';
                  {
                    image_url: converted,
                  }
                ),
                with_subtitle(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"subtitle" expected to be of type "string"';
                  {
                    subtitle: converted,
                  }
                ),
                with_title(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"title" expected to be of type "string"';
                  {
                    title: converted,
                  }
                ),
                button:: {
                  local block = self,
                  new(text, value):: (
                    {}
                    + block.with_text(text)
                    + block.with_value(value)
                  ),
                  with_text(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"text" expected to be of type "string"';
                    {
                      text: converted,
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
                with_button(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    button: value,
                  }
                ),
                with_button_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    button+: converted,
                  }
                ),
              },
              plain_text_message:: {
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
              ssml_message:: {
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
              with_custom_payload(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  custom_payload: value,
                }
              ),
              with_image_response_card(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  image_response_card: value,
                }
              ),
              with_plain_text_message(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  plain_text_message: value,
                }
              ),
              with_ssml_message(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  ssml_message: value,
                }
              ),
              with_custom_payload_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  custom_payload+: converted,
                }
              ),
              with_image_response_card_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  image_response_card+: converted,
                }
              ),
              with_plain_text_message_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  plain_text_message+: converted,
                }
              ),
              with_ssml_message_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  ssml_message+: converted,
                }
              ),
            },
            variation:: {
              local block = self,
              new():: (
                {}
              ),
              custom_payload:: {
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
              image_response_card:: {
                local block = self,
                new(title):: (
                  {}
                  + block.with_title(title)
                ),
                with_image_url(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"image_url" expected to be of type "string"';
                  {
                    image_url: converted,
                  }
                ),
                with_subtitle(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"subtitle" expected to be of type "string"';
                  {
                    subtitle: converted,
                  }
                ),
                with_title(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"title" expected to be of type "string"';
                  {
                    title: converted,
                  }
                ),
                button:: {
                  local block = self,
                  new(text, value):: (
                    {}
                    + block.with_text(text)
                    + block.with_value(value)
                  ),
                  with_text(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"text" expected to be of type "string"';
                    {
                      text: converted,
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
                with_button(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    button: value,
                  }
                ),
                with_button_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    button+: converted,
                  }
                ),
              },
              plain_text_message:: {
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
              ssml_message:: {
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
              with_custom_payload(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  custom_payload: value,
                }
              ),
              with_image_response_card(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  image_response_card: value,
                }
              ),
              with_plain_text_message(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  plain_text_message: value,
                }
              ),
              with_ssml_message(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  ssml_message: value,
                }
              ),
              with_custom_payload_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  custom_payload+: converted,
                }
              ),
              with_image_response_card_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  image_response_card+: converted,
                }
              ),
              with_plain_text_message_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  plain_text_message+: converted,
                }
              ),
              with_ssml_message_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  ssml_message+: converted,
                }
              ),
            },
            with_message(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                message: value,
              }
            ),
            with_variation(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                variation: value,
              }
            ),
            with_message_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                message+: converted,
              }
            ),
            with_variation_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                variation+: converted,
              }
            ),
          },
          prompt_attempts_specification:: {
            local block = self,
            new(map_block_key):: (
              {}
              + block.with_map_block_key(map_block_key)
            ),
            with_allow_interrupt(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"allow_interrupt" expected to be of type "bool"';
              {
                allow_interrupt: converted,
              }
            ),
            with_map_block_key(value):: (
              local converted = value;
              assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
              {
                map_block_key: converted,
              }
            ),
            allowed_input_types:: {
              local block = self,
              new(allow_audio_input, allow_dtmf_input):: (
                {}
                + block.with_allow_audio_input(allow_audio_input)
                + block.with_allow_dtmf_input(allow_dtmf_input)
              ),
              with_allow_audio_input(value):: (
                local converted = value;
                assert std.isBoolean(converted) : '"allow_audio_input" expected to be of type "bool"';
                {
                  allow_audio_input: converted,
                }
              ),
              with_allow_dtmf_input(value):: (
                local converted = value;
                assert std.isBoolean(converted) : '"allow_dtmf_input" expected to be of type "bool"';
                {
                  allow_dtmf_input: converted,
                }
              ),
            },
            audio_and_dtmf_input_specification:: {
              local block = self,
              new(start_timeout_ms):: (
                {}
                + block.with_start_timeout_ms(start_timeout_ms)
              ),
              with_start_timeout_ms(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"start_timeout_ms" expected to be of type "number"';
                {
                  start_timeout_ms: converted,
                }
              ),
              audio_specification:: {
                local block = self,
                new(end_timeout_ms, max_length_ms):: (
                  {}
                  + block.with_end_timeout_ms(end_timeout_ms)
                  + block.with_max_length_ms(max_length_ms)
                ),
                with_end_timeout_ms(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"end_timeout_ms" expected to be of type "number"';
                  {
                    end_timeout_ms: converted,
                  }
                ),
                with_max_length_ms(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"max_length_ms" expected to be of type "number"';
                  {
                    max_length_ms: converted,
                  }
                ),
              },
              dtmf_specification:: {
                local block = self,
                new(deletion_character, end_character, end_timeout_ms, max_length):: (
                  {}
                  + block.with_deletion_character(deletion_character)
                  + block.with_end_character(end_character)
                  + block.with_end_timeout_ms(end_timeout_ms)
                  + block.with_max_length(max_length)
                ),
                with_deletion_character(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"deletion_character" expected to be of type "string"';
                  {
                    deletion_character: converted,
                  }
                ),
                with_end_character(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"end_character" expected to be of type "string"';
                  {
                    end_character: converted,
                  }
                ),
                with_end_timeout_ms(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"end_timeout_ms" expected to be of type "number"';
                  {
                    end_timeout_ms: converted,
                  }
                ),
                with_max_length(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"max_length" expected to be of type "number"';
                  {
                    max_length: converted,
                  }
                ),
              },
              with_audio_specification(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  audio_specification: value,
                }
              ),
              with_dtmf_specification(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dtmf_specification: value,
                }
              ),
              with_audio_specification_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  audio_specification+: converted,
                }
              ),
              with_dtmf_specification_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dtmf_specification+: converted,
                }
              ),
            },
            text_input_specification:: {
              local block = self,
              new(start_timeout_ms):: (
                {}
                + block.with_start_timeout_ms(start_timeout_ms)
              ),
              with_start_timeout_ms(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"start_timeout_ms" expected to be of type "number"';
                {
                  start_timeout_ms: converted,
                }
              ),
            },
            with_allowed_input_types(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                allowed_input_types: value,
              }
            ),
            with_audio_and_dtmf_input_specification(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                audio_and_dtmf_input_specification: value,
              }
            ),
            with_text_input_specification(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                text_input_specification: value,
              }
            ),
            with_allowed_input_types_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                allowed_input_types+: converted,
              }
            ),
            with_audio_and_dtmf_input_specification_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                audio_and_dtmf_input_specification+: converted,
              }
            ),
            with_text_input_specification_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                text_input_specification+: converted,
              }
            ),
          },
          with_message_group(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              message_group: value,
            }
          ),
          with_prompt_attempts_specification(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              prompt_attempts_specification: value,
            }
          ),
          with_message_group_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              message_group+: converted,
            }
          ),
          with_prompt_attempts_specification_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              prompt_attempts_specification+: converted,
            }
          ),
        },
        sample_utterance:: {
          local block = self,
          new(utterance):: (
            {}
            + block.with_utterance(utterance)
          ),
          with_utterance(value):: (
            local converted = value;
            assert std.isString(converted) : '"utterance" expected to be of type "string"';
            {
              utterance: converted,
            }
          ),
        },
        wait_and_continue_specification:: {
          local block = self,
          new():: (
            {}
          ),
          with_active(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
            {
              active: converted,
            }
          ),
          continue_response:: {
            local block = self,
            new():: (
              {}
            ),
            with_allow_interrupt(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"allow_interrupt" expected to be of type "bool"';
              {
                allow_interrupt: converted,
              }
            ),
            message_group:: {
              local block = self,
              new():: (
                {}
              ),
              message:: {
                local block = self,
                new():: (
                  {}
                ),
                custom_payload:: {
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
                image_response_card:: {
                  local block = self,
                  new(title):: (
                    {}
                    + block.with_title(title)
                  ),
                  with_image_url(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"image_url" expected to be of type "string"';
                    {
                      image_url: converted,
                    }
                  ),
                  with_subtitle(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"subtitle" expected to be of type "string"';
                    {
                      subtitle: converted,
                    }
                  ),
                  with_title(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"title" expected to be of type "string"';
                    {
                      title: converted,
                    }
                  ),
                  button:: {
                    local block = self,
                    new(text, value):: (
                      {}
                      + block.with_text(text)
                      + block.with_value(value)
                    ),
                    with_text(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"text" expected to be of type "string"';
                      {
                        text: converted,
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
                  with_button(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      button: value,
                    }
                  ),
                  with_button_mixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      button+: converted,
                    }
                  ),
                },
                plain_text_message:: {
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
                ssml_message:: {
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
                with_custom_payload(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    custom_payload: value,
                  }
                ),
                with_image_response_card(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    image_response_card: value,
                  }
                ),
                with_plain_text_message(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    plain_text_message: value,
                  }
                ),
                with_ssml_message(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    ssml_message: value,
                  }
                ),
                with_custom_payload_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    custom_payload+: converted,
                  }
                ),
                with_image_response_card_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    image_response_card+: converted,
                  }
                ),
                with_plain_text_message_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    plain_text_message+: converted,
                  }
                ),
                with_ssml_message_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    ssml_message+: converted,
                  }
                ),
              },
              variation:: {
                local block = self,
                new():: (
                  {}
                ),
                custom_payload:: {
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
                image_response_card:: {
                  local block = self,
                  new(title):: (
                    {}
                    + block.with_title(title)
                  ),
                  with_image_url(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"image_url" expected to be of type "string"';
                    {
                      image_url: converted,
                    }
                  ),
                  with_subtitle(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"subtitle" expected to be of type "string"';
                    {
                      subtitle: converted,
                    }
                  ),
                  with_title(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"title" expected to be of type "string"';
                    {
                      title: converted,
                    }
                  ),
                  button:: {
                    local block = self,
                    new(text, value):: (
                      {}
                      + block.with_text(text)
                      + block.with_value(value)
                    ),
                    with_text(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"text" expected to be of type "string"';
                      {
                        text: converted,
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
                  with_button(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      button: value,
                    }
                  ),
                  with_button_mixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      button+: converted,
                    }
                  ),
                },
                plain_text_message:: {
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
                ssml_message:: {
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
                with_custom_payload(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    custom_payload: value,
                  }
                ),
                with_image_response_card(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    image_response_card: value,
                  }
                ),
                with_plain_text_message(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    plain_text_message: value,
                  }
                ),
                with_ssml_message(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    ssml_message: value,
                  }
                ),
                with_custom_payload_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    custom_payload+: converted,
                  }
                ),
                with_image_response_card_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    image_response_card+: converted,
                  }
                ),
                with_plain_text_message_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    plain_text_message+: converted,
                  }
                ),
                with_ssml_message_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    ssml_message+: converted,
                  }
                ),
              },
              with_message(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  message: value,
                }
              ),
              with_variation(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  variation: value,
                }
              ),
              with_message_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  message+: converted,
                }
              ),
              with_variation_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  variation+: converted,
                }
              ),
            },
            with_message_group(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                message_group: value,
              }
            ),
            with_message_group_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                message_group+: converted,
              }
            ),
          },
          still_waiting_response:: {
            local block = self,
            new(frequency_in_seconds, timeout_in_seconds):: (
              {}
              + block.with_frequency_in_seconds(frequency_in_seconds)
              + block.with_timeout_in_seconds(timeout_in_seconds)
            ),
            with_allow_interrupt(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"allow_interrupt" expected to be of type "bool"';
              {
                allow_interrupt: converted,
              }
            ),
            with_frequency_in_seconds(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"frequency_in_seconds" expected to be of type "number"';
              {
                frequency_in_seconds: converted,
              }
            ),
            with_timeout_in_seconds(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"timeout_in_seconds" expected to be of type "number"';
              {
                timeout_in_seconds: converted,
              }
            ),
            message_group:: {
              local block = self,
              new():: (
                {}
              ),
              message:: {
                local block = self,
                new():: (
                  {}
                ),
                custom_payload:: {
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
                image_response_card:: {
                  local block = self,
                  new(title):: (
                    {}
                    + block.with_title(title)
                  ),
                  with_image_url(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"image_url" expected to be of type "string"';
                    {
                      image_url: converted,
                    }
                  ),
                  with_subtitle(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"subtitle" expected to be of type "string"';
                    {
                      subtitle: converted,
                    }
                  ),
                  with_title(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"title" expected to be of type "string"';
                    {
                      title: converted,
                    }
                  ),
                  button:: {
                    local block = self,
                    new(text, value):: (
                      {}
                      + block.with_text(text)
                      + block.with_value(value)
                    ),
                    with_text(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"text" expected to be of type "string"';
                      {
                        text: converted,
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
                  with_button(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      button: value,
                    }
                  ),
                  with_button_mixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      button+: converted,
                    }
                  ),
                },
                plain_text_message:: {
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
                ssml_message:: {
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
                with_custom_payload(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    custom_payload: value,
                  }
                ),
                with_image_response_card(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    image_response_card: value,
                  }
                ),
                with_plain_text_message(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    plain_text_message: value,
                  }
                ),
                with_ssml_message(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    ssml_message: value,
                  }
                ),
                with_custom_payload_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    custom_payload+: converted,
                  }
                ),
                with_image_response_card_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    image_response_card+: converted,
                  }
                ),
                with_plain_text_message_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    plain_text_message+: converted,
                  }
                ),
                with_ssml_message_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    ssml_message+: converted,
                  }
                ),
              },
              variation:: {
                local block = self,
                new():: (
                  {}
                ),
                custom_payload:: {
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
                image_response_card:: {
                  local block = self,
                  new(title):: (
                    {}
                    + block.with_title(title)
                  ),
                  with_image_url(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"image_url" expected to be of type "string"';
                    {
                      image_url: converted,
                    }
                  ),
                  with_subtitle(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"subtitle" expected to be of type "string"';
                    {
                      subtitle: converted,
                    }
                  ),
                  with_title(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"title" expected to be of type "string"';
                    {
                      title: converted,
                    }
                  ),
                  button:: {
                    local block = self,
                    new(text, value):: (
                      {}
                      + block.with_text(text)
                      + block.with_value(value)
                    ),
                    with_text(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"text" expected to be of type "string"';
                      {
                        text: converted,
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
                  with_button(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      button: value,
                    }
                  ),
                  with_button_mixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      button+: converted,
                    }
                  ),
                },
                plain_text_message:: {
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
                ssml_message:: {
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
                with_custom_payload(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    custom_payload: value,
                  }
                ),
                with_image_response_card(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    image_response_card: value,
                  }
                ),
                with_plain_text_message(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    plain_text_message: value,
                  }
                ),
                with_ssml_message(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    ssml_message: value,
                  }
                ),
                with_custom_payload_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    custom_payload+: converted,
                  }
                ),
                with_image_response_card_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    image_response_card+: converted,
                  }
                ),
                with_plain_text_message_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    plain_text_message+: converted,
                  }
                ),
                with_ssml_message_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    ssml_message+: converted,
                  }
                ),
              },
              with_message(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  message: value,
                }
              ),
              with_variation(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  variation: value,
                }
              ),
              with_message_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  message+: converted,
                }
              ),
              with_variation_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  variation+: converted,
                }
              ),
            },
            with_message_group(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                message_group: value,
              }
            ),
            with_message_group_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                message_group+: converted,
              }
            ),
          },
          waiting_response:: {
            local block = self,
            new():: (
              {}
            ),
            with_allow_interrupt(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"allow_interrupt" expected to be of type "bool"';
              {
                allow_interrupt: converted,
              }
            ),
            message_group:: {
              local block = self,
              new():: (
                {}
              ),
              message:: {
                local block = self,
                new():: (
                  {}
                ),
                custom_payload:: {
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
                image_response_card:: {
                  local block = self,
                  new(title):: (
                    {}
                    + block.with_title(title)
                  ),
                  with_image_url(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"image_url" expected to be of type "string"';
                    {
                      image_url: converted,
                    }
                  ),
                  with_subtitle(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"subtitle" expected to be of type "string"';
                    {
                      subtitle: converted,
                    }
                  ),
                  with_title(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"title" expected to be of type "string"';
                    {
                      title: converted,
                    }
                  ),
                  button:: {
                    local block = self,
                    new(text, value):: (
                      {}
                      + block.with_text(text)
                      + block.with_value(value)
                    ),
                    with_text(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"text" expected to be of type "string"';
                      {
                        text: converted,
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
                  with_button(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      button: value,
                    }
                  ),
                  with_button_mixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      button+: converted,
                    }
                  ),
                },
                plain_text_message:: {
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
                ssml_message:: {
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
                with_custom_payload(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    custom_payload: value,
                  }
                ),
                with_image_response_card(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    image_response_card: value,
                  }
                ),
                with_plain_text_message(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    plain_text_message: value,
                  }
                ),
                with_ssml_message(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    ssml_message: value,
                  }
                ),
                with_custom_payload_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    custom_payload+: converted,
                  }
                ),
                with_image_response_card_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    image_response_card+: converted,
                  }
                ),
                with_plain_text_message_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    plain_text_message+: converted,
                  }
                ),
                with_ssml_message_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    ssml_message+: converted,
                  }
                ),
              },
              variation:: {
                local block = self,
                new():: (
                  {}
                ),
                custom_payload:: {
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
                image_response_card:: {
                  local block = self,
                  new(title):: (
                    {}
                    + block.with_title(title)
                  ),
                  with_image_url(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"image_url" expected to be of type "string"';
                    {
                      image_url: converted,
                    }
                  ),
                  with_subtitle(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"subtitle" expected to be of type "string"';
                    {
                      subtitle: converted,
                    }
                  ),
                  with_title(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"title" expected to be of type "string"';
                    {
                      title: converted,
                    }
                  ),
                  button:: {
                    local block = self,
                    new(text, value):: (
                      {}
                      + block.with_text(text)
                      + block.with_value(value)
                    ),
                    with_text(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"text" expected to be of type "string"';
                      {
                        text: converted,
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
                  with_button(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      button: value,
                    }
                  ),
                  with_button_mixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      button+: converted,
                    }
                  ),
                },
                plain_text_message:: {
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
                ssml_message:: {
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
                with_custom_payload(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    custom_payload: value,
                  }
                ),
                with_image_response_card(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    image_response_card: value,
                  }
                ),
                with_plain_text_message(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    plain_text_message: value,
                  }
                ),
                with_ssml_message(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    ssml_message: value,
                  }
                ),
                with_custom_payload_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    custom_payload+: converted,
                  }
                ),
                with_image_response_card_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    image_response_card+: converted,
                  }
                ),
                with_plain_text_message_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    plain_text_message+: converted,
                  }
                ),
                with_ssml_message_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    ssml_message+: converted,
                  }
                ),
              },
              with_message(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  message: value,
                }
              ),
              with_variation(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  variation: value,
                }
              ),
              with_message_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  message+: converted,
                }
              ),
              with_variation_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  variation+: converted,
                }
              ),
            },
            with_message_group(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                message_group: value,
              }
            ),
            with_message_group_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                message_group+: converted,
              }
            ),
          },
          with_continue_response(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              continue_response: value,
            }
          ),
          with_still_waiting_response(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              still_waiting_response: value,
            }
          ),
          with_waiting_response(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              waiting_response: value,
            }
          ),
          with_continue_response_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              continue_response+: converted,
            }
          ),
          with_still_waiting_response_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              still_waiting_response+: converted,
            }
          ),
          with_waiting_response_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              waiting_response+: converted,
            }
          ),
        },
        with_default_value_specification(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            default_value_specification: value,
          }
        ),
        with_prompt_specification(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            prompt_specification: value,
          }
        ),
        with_sample_utterance(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            sample_utterance: value,
          }
        ),
        with_wait_and_continue_specification(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            wait_and_continue_specification: value,
          }
        ),
        with_default_value_specification_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            default_value_specification+: converted,
          }
        ),
        with_prompt_specification_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            prompt_specification+: converted,
          }
        ),
        with_sample_utterance_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            sample_utterance+: converted,
          }
        ),
        with_wait_and_continue_specification_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            wait_and_continue_specification+: converted,
          }
        ),
      },
      with_value_elicitation_setting(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          value_elicitation_setting: value,
        }
      ),
      with_value_elicitation_setting_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          value_elicitation_setting+: converted,
        }
      ),
    },
    with_slot_specification(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        slot_specification: value,
      }
    ),
    with_slot_specification_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        slot_specification+: converted,
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
  value_elicitation_setting:: {
    local block = self,
    new(slot_constraint):: (
      {}
      + block.with_slot_constraint(slot_constraint)
    ),
    with_slot_constraint(value):: (
      local converted = value;
      assert std.isString(converted) : '"slot_constraint" expected to be of type "string"';
      {
        slot_constraint: converted,
      }
    ),
    default_value_specification:: {
      local block = self,
      new():: (
        {}
      ),
      default_value_list:: {
        local block = self,
        new(default_value):: (
          {}
          + block.with_default_value(default_value)
        ),
        with_default_value(value):: (
          local converted = value;
          assert std.isString(converted) : '"default_value" expected to be of type "string"';
          {
            default_value: converted,
          }
        ),
      },
      with_default_value_list(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_value_list: value,
        }
      ),
      with_default_value_list_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_value_list+: converted,
        }
      ),
    },
    prompt_specification:: {
      local block = self,
      new(max_retries):: (
        {}
        + block.with_max_retries(max_retries)
      ),
      with_allow_interrupt(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"allow_interrupt" expected to be of type "bool"';
        {
          allow_interrupt: converted,
        }
      ),
      with_max_retries(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"max_retries" expected to be of type "number"';
        {
          max_retries: converted,
        }
      ),
      with_message_selection_strategy(value):: (
        local converted = value;
        assert std.isString(converted) : '"message_selection_strategy" expected to be of type "string"';
        {
          message_selection_strategy: converted,
        }
      ),
      message_group:: {
        local block = self,
        new():: (
          {}
        ),
        message:: {
          local block = self,
          new():: (
            {}
          ),
          custom_payload:: {
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
          image_response_card:: {
            local block = self,
            new(title):: (
              {}
              + block.with_title(title)
            ),
            with_image_url(value):: (
              local converted = value;
              assert std.isString(converted) : '"image_url" expected to be of type "string"';
              {
                image_url: converted,
              }
            ),
            with_subtitle(value):: (
              local converted = value;
              assert std.isString(converted) : '"subtitle" expected to be of type "string"';
              {
                subtitle: converted,
              }
            ),
            with_title(value):: (
              local converted = value;
              assert std.isString(converted) : '"title" expected to be of type "string"';
              {
                title: converted,
              }
            ),
            button:: {
              local block = self,
              new(text, value):: (
                {}
                + block.with_text(text)
                + block.with_value(value)
              ),
              with_text(value):: (
                local converted = value;
                assert std.isString(converted) : '"text" expected to be of type "string"';
                {
                  text: converted,
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
            with_button(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                button: value,
              }
            ),
            with_button_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                button+: converted,
              }
            ),
          },
          plain_text_message:: {
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
          ssml_message:: {
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
          with_custom_payload(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              custom_payload: value,
            }
          ),
          with_image_response_card(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              image_response_card: value,
            }
          ),
          with_plain_text_message(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              plain_text_message: value,
            }
          ),
          with_ssml_message(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              ssml_message: value,
            }
          ),
          with_custom_payload_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              custom_payload+: converted,
            }
          ),
          with_image_response_card_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              image_response_card+: converted,
            }
          ),
          with_plain_text_message_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              plain_text_message+: converted,
            }
          ),
          with_ssml_message_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              ssml_message+: converted,
            }
          ),
        },
        variation:: {
          local block = self,
          new():: (
            {}
          ),
          custom_payload:: {
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
          image_response_card:: {
            local block = self,
            new(title):: (
              {}
              + block.with_title(title)
            ),
            with_image_url(value):: (
              local converted = value;
              assert std.isString(converted) : '"image_url" expected to be of type "string"';
              {
                image_url: converted,
              }
            ),
            with_subtitle(value):: (
              local converted = value;
              assert std.isString(converted) : '"subtitle" expected to be of type "string"';
              {
                subtitle: converted,
              }
            ),
            with_title(value):: (
              local converted = value;
              assert std.isString(converted) : '"title" expected to be of type "string"';
              {
                title: converted,
              }
            ),
            button:: {
              local block = self,
              new(text, value):: (
                {}
                + block.with_text(text)
                + block.with_value(value)
              ),
              with_text(value):: (
                local converted = value;
                assert std.isString(converted) : '"text" expected to be of type "string"';
                {
                  text: converted,
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
            with_button(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                button: value,
              }
            ),
            with_button_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                button+: converted,
              }
            ),
          },
          plain_text_message:: {
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
          ssml_message:: {
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
          with_custom_payload(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              custom_payload: value,
            }
          ),
          with_image_response_card(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              image_response_card: value,
            }
          ),
          with_plain_text_message(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              plain_text_message: value,
            }
          ),
          with_ssml_message(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              ssml_message: value,
            }
          ),
          with_custom_payload_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              custom_payload+: converted,
            }
          ),
          with_image_response_card_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              image_response_card+: converted,
            }
          ),
          with_plain_text_message_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              plain_text_message+: converted,
            }
          ),
          with_ssml_message_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              ssml_message+: converted,
            }
          ),
        },
        with_message(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            message: value,
          }
        ),
        with_variation(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            variation: value,
          }
        ),
        with_message_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            message+: converted,
          }
        ),
        with_variation_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            variation+: converted,
          }
        ),
      },
      prompt_attempts_specification:: {
        local block = self,
        new(map_block_key):: (
          {}
          + block.with_map_block_key(map_block_key)
        ),
        with_allow_interrupt(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"allow_interrupt" expected to be of type "bool"';
          {
            allow_interrupt: converted,
          }
        ),
        with_map_block_key(value):: (
          local converted = value;
          assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
          {
            map_block_key: converted,
          }
        ),
        allowed_input_types:: {
          local block = self,
          new(allow_audio_input, allow_dtmf_input):: (
            {}
            + block.with_allow_audio_input(allow_audio_input)
            + block.with_allow_dtmf_input(allow_dtmf_input)
          ),
          with_allow_audio_input(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"allow_audio_input" expected to be of type "bool"';
            {
              allow_audio_input: converted,
            }
          ),
          with_allow_dtmf_input(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"allow_dtmf_input" expected to be of type "bool"';
            {
              allow_dtmf_input: converted,
            }
          ),
        },
        audio_and_dtmf_input_specification:: {
          local block = self,
          new(start_timeout_ms):: (
            {}
            + block.with_start_timeout_ms(start_timeout_ms)
          ),
          with_start_timeout_ms(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"start_timeout_ms" expected to be of type "number"';
            {
              start_timeout_ms: converted,
            }
          ),
          audio_specification:: {
            local block = self,
            new(end_timeout_ms, max_length_ms):: (
              {}
              + block.with_end_timeout_ms(end_timeout_ms)
              + block.with_max_length_ms(max_length_ms)
            ),
            with_end_timeout_ms(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"end_timeout_ms" expected to be of type "number"';
              {
                end_timeout_ms: converted,
              }
            ),
            with_max_length_ms(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"max_length_ms" expected to be of type "number"';
              {
                max_length_ms: converted,
              }
            ),
          },
          dtmf_specification:: {
            local block = self,
            new(deletion_character, end_character, end_timeout_ms, max_length):: (
              {}
              + block.with_deletion_character(deletion_character)
              + block.with_end_character(end_character)
              + block.with_end_timeout_ms(end_timeout_ms)
              + block.with_max_length(max_length)
            ),
            with_deletion_character(value):: (
              local converted = value;
              assert std.isString(converted) : '"deletion_character" expected to be of type "string"';
              {
                deletion_character: converted,
              }
            ),
            with_end_character(value):: (
              local converted = value;
              assert std.isString(converted) : '"end_character" expected to be of type "string"';
              {
                end_character: converted,
              }
            ),
            with_end_timeout_ms(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"end_timeout_ms" expected to be of type "number"';
              {
                end_timeout_ms: converted,
              }
            ),
            with_max_length(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"max_length" expected to be of type "number"';
              {
                max_length: converted,
              }
            ),
          },
          with_audio_specification(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              audio_specification: value,
            }
          ),
          with_dtmf_specification(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dtmf_specification: value,
            }
          ),
          with_audio_specification_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              audio_specification+: converted,
            }
          ),
          with_dtmf_specification_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dtmf_specification+: converted,
            }
          ),
        },
        text_input_specification:: {
          local block = self,
          new(start_timeout_ms):: (
            {}
            + block.with_start_timeout_ms(start_timeout_ms)
          ),
          with_start_timeout_ms(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"start_timeout_ms" expected to be of type "number"';
            {
              start_timeout_ms: converted,
            }
          ),
        },
        with_allowed_input_types(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            allowed_input_types: value,
          }
        ),
        with_audio_and_dtmf_input_specification(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            audio_and_dtmf_input_specification: value,
          }
        ),
        with_text_input_specification(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            text_input_specification: value,
          }
        ),
        with_allowed_input_types_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            allowed_input_types+: converted,
          }
        ),
        with_audio_and_dtmf_input_specification_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            audio_and_dtmf_input_specification+: converted,
          }
        ),
        with_text_input_specification_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            text_input_specification+: converted,
          }
        ),
      },
      with_message_group(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          message_group: value,
        }
      ),
      with_prompt_attempts_specification(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          prompt_attempts_specification: value,
        }
      ),
      with_message_group_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          message_group+: converted,
        }
      ),
      with_prompt_attempts_specification_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          prompt_attempts_specification+: converted,
        }
      ),
    },
    sample_utterance:: {
      local block = self,
      new(utterance):: (
        {}
        + block.with_utterance(utterance)
      ),
      with_utterance(value):: (
        local converted = value;
        assert std.isString(converted) : '"utterance" expected to be of type "string"';
        {
          utterance: converted,
        }
      ),
    },
    slot_resolution_setting:: {
      local block = self,
      new(slot_resolution_strategy):: (
        {}
        + block.with_slot_resolution_strategy(slot_resolution_strategy)
      ),
      with_slot_resolution_strategy(value):: (
        local converted = value;
        assert std.isString(converted) : '"slot_resolution_strategy" expected to be of type "string"';
        {
          slot_resolution_strategy: converted,
        }
      ),
    },
    wait_and_continue_specification:: {
      local block = self,
      new():: (
        {}
      ),
      with_active(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
        {
          active: converted,
        }
      ),
      continue_response:: {
        local block = self,
        new():: (
          {}
        ),
        with_allow_interrupt(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"allow_interrupt" expected to be of type "bool"';
          {
            allow_interrupt: converted,
          }
        ),
        message_group:: {
          local block = self,
          new():: (
            {}
          ),
          message:: {
            local block = self,
            new():: (
              {}
            ),
            custom_payload:: {
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
            image_response_card:: {
              local block = self,
              new(title):: (
                {}
                + block.with_title(title)
              ),
              with_image_url(value):: (
                local converted = value;
                assert std.isString(converted) : '"image_url" expected to be of type "string"';
                {
                  image_url: converted,
                }
              ),
              with_subtitle(value):: (
                local converted = value;
                assert std.isString(converted) : '"subtitle" expected to be of type "string"';
                {
                  subtitle: converted,
                }
              ),
              with_title(value):: (
                local converted = value;
                assert std.isString(converted) : '"title" expected to be of type "string"';
                {
                  title: converted,
                }
              ),
              button:: {
                local block = self,
                new(text, value):: (
                  {}
                  + block.with_text(text)
                  + block.with_value(value)
                ),
                with_text(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"text" expected to be of type "string"';
                  {
                    text: converted,
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
              with_button(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  button: value,
                }
              ),
              with_button_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  button+: converted,
                }
              ),
            },
            plain_text_message:: {
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
            ssml_message:: {
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
            with_custom_payload(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                custom_payload: value,
              }
            ),
            with_image_response_card(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                image_response_card: value,
              }
            ),
            with_plain_text_message(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                plain_text_message: value,
              }
            ),
            with_ssml_message(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                ssml_message: value,
              }
            ),
            with_custom_payload_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                custom_payload+: converted,
              }
            ),
            with_image_response_card_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                image_response_card+: converted,
              }
            ),
            with_plain_text_message_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                plain_text_message+: converted,
              }
            ),
            with_ssml_message_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                ssml_message+: converted,
              }
            ),
          },
          variation:: {
            local block = self,
            new():: (
              {}
            ),
            custom_payload:: {
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
            image_response_card:: {
              local block = self,
              new(title):: (
                {}
                + block.with_title(title)
              ),
              with_image_url(value):: (
                local converted = value;
                assert std.isString(converted) : '"image_url" expected to be of type "string"';
                {
                  image_url: converted,
                }
              ),
              with_subtitle(value):: (
                local converted = value;
                assert std.isString(converted) : '"subtitle" expected to be of type "string"';
                {
                  subtitle: converted,
                }
              ),
              with_title(value):: (
                local converted = value;
                assert std.isString(converted) : '"title" expected to be of type "string"';
                {
                  title: converted,
                }
              ),
              button:: {
                local block = self,
                new(text, value):: (
                  {}
                  + block.with_text(text)
                  + block.with_value(value)
                ),
                with_text(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"text" expected to be of type "string"';
                  {
                    text: converted,
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
              with_button(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  button: value,
                }
              ),
              with_button_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  button+: converted,
                }
              ),
            },
            plain_text_message:: {
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
            ssml_message:: {
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
            with_custom_payload(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                custom_payload: value,
              }
            ),
            with_image_response_card(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                image_response_card: value,
              }
            ),
            with_plain_text_message(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                plain_text_message: value,
              }
            ),
            with_ssml_message(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                ssml_message: value,
              }
            ),
            with_custom_payload_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                custom_payload+: converted,
              }
            ),
            with_image_response_card_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                image_response_card+: converted,
              }
            ),
            with_plain_text_message_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                plain_text_message+: converted,
              }
            ),
            with_ssml_message_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                ssml_message+: converted,
              }
            ),
          },
          with_message(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              message: value,
            }
          ),
          with_variation(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              variation: value,
            }
          ),
          with_message_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              message+: converted,
            }
          ),
          with_variation_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              variation+: converted,
            }
          ),
        },
        with_message_group(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            message_group: value,
          }
        ),
        with_message_group_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            message_group+: converted,
          }
        ),
      },
      still_waiting_response:: {
        local block = self,
        new(frequency_in_seconds, timeout_in_seconds):: (
          {}
          + block.with_frequency_in_seconds(frequency_in_seconds)
          + block.with_timeout_in_seconds(timeout_in_seconds)
        ),
        with_allow_interrupt(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"allow_interrupt" expected to be of type "bool"';
          {
            allow_interrupt: converted,
          }
        ),
        with_frequency_in_seconds(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"frequency_in_seconds" expected to be of type "number"';
          {
            frequency_in_seconds: converted,
          }
        ),
        with_timeout_in_seconds(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"timeout_in_seconds" expected to be of type "number"';
          {
            timeout_in_seconds: converted,
          }
        ),
        message_group:: {
          local block = self,
          new():: (
            {}
          ),
          message:: {
            local block = self,
            new():: (
              {}
            ),
            custom_payload:: {
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
            image_response_card:: {
              local block = self,
              new(title):: (
                {}
                + block.with_title(title)
              ),
              with_image_url(value):: (
                local converted = value;
                assert std.isString(converted) : '"image_url" expected to be of type "string"';
                {
                  image_url: converted,
                }
              ),
              with_subtitle(value):: (
                local converted = value;
                assert std.isString(converted) : '"subtitle" expected to be of type "string"';
                {
                  subtitle: converted,
                }
              ),
              with_title(value):: (
                local converted = value;
                assert std.isString(converted) : '"title" expected to be of type "string"';
                {
                  title: converted,
                }
              ),
              button:: {
                local block = self,
                new(text, value):: (
                  {}
                  + block.with_text(text)
                  + block.with_value(value)
                ),
                with_text(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"text" expected to be of type "string"';
                  {
                    text: converted,
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
              with_button(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  button: value,
                }
              ),
              with_button_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  button+: converted,
                }
              ),
            },
            plain_text_message:: {
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
            ssml_message:: {
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
            with_custom_payload(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                custom_payload: value,
              }
            ),
            with_image_response_card(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                image_response_card: value,
              }
            ),
            with_plain_text_message(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                plain_text_message: value,
              }
            ),
            with_ssml_message(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                ssml_message: value,
              }
            ),
            with_custom_payload_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                custom_payload+: converted,
              }
            ),
            with_image_response_card_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                image_response_card+: converted,
              }
            ),
            with_plain_text_message_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                plain_text_message+: converted,
              }
            ),
            with_ssml_message_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                ssml_message+: converted,
              }
            ),
          },
          variation:: {
            local block = self,
            new():: (
              {}
            ),
            custom_payload:: {
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
            image_response_card:: {
              local block = self,
              new(title):: (
                {}
                + block.with_title(title)
              ),
              with_image_url(value):: (
                local converted = value;
                assert std.isString(converted) : '"image_url" expected to be of type "string"';
                {
                  image_url: converted,
                }
              ),
              with_subtitle(value):: (
                local converted = value;
                assert std.isString(converted) : '"subtitle" expected to be of type "string"';
                {
                  subtitle: converted,
                }
              ),
              with_title(value):: (
                local converted = value;
                assert std.isString(converted) : '"title" expected to be of type "string"';
                {
                  title: converted,
                }
              ),
              button:: {
                local block = self,
                new(text, value):: (
                  {}
                  + block.with_text(text)
                  + block.with_value(value)
                ),
                with_text(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"text" expected to be of type "string"';
                  {
                    text: converted,
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
              with_button(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  button: value,
                }
              ),
              with_button_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  button+: converted,
                }
              ),
            },
            plain_text_message:: {
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
            ssml_message:: {
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
            with_custom_payload(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                custom_payload: value,
              }
            ),
            with_image_response_card(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                image_response_card: value,
              }
            ),
            with_plain_text_message(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                plain_text_message: value,
              }
            ),
            with_ssml_message(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                ssml_message: value,
              }
            ),
            with_custom_payload_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                custom_payload+: converted,
              }
            ),
            with_image_response_card_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                image_response_card+: converted,
              }
            ),
            with_plain_text_message_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                plain_text_message+: converted,
              }
            ),
            with_ssml_message_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                ssml_message+: converted,
              }
            ),
          },
          with_message(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              message: value,
            }
          ),
          with_variation(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              variation: value,
            }
          ),
          with_message_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              message+: converted,
            }
          ),
          with_variation_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              variation+: converted,
            }
          ),
        },
        with_message_group(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            message_group: value,
          }
        ),
        with_message_group_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            message_group+: converted,
          }
        ),
      },
      waiting_response:: {
        local block = self,
        new():: (
          {}
        ),
        with_allow_interrupt(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"allow_interrupt" expected to be of type "bool"';
          {
            allow_interrupt: converted,
          }
        ),
        message_group:: {
          local block = self,
          new():: (
            {}
          ),
          message:: {
            local block = self,
            new():: (
              {}
            ),
            custom_payload:: {
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
            image_response_card:: {
              local block = self,
              new(title):: (
                {}
                + block.with_title(title)
              ),
              with_image_url(value):: (
                local converted = value;
                assert std.isString(converted) : '"image_url" expected to be of type "string"';
                {
                  image_url: converted,
                }
              ),
              with_subtitle(value):: (
                local converted = value;
                assert std.isString(converted) : '"subtitle" expected to be of type "string"';
                {
                  subtitle: converted,
                }
              ),
              with_title(value):: (
                local converted = value;
                assert std.isString(converted) : '"title" expected to be of type "string"';
                {
                  title: converted,
                }
              ),
              button:: {
                local block = self,
                new(text, value):: (
                  {}
                  + block.with_text(text)
                  + block.with_value(value)
                ),
                with_text(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"text" expected to be of type "string"';
                  {
                    text: converted,
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
              with_button(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  button: value,
                }
              ),
              with_button_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  button+: converted,
                }
              ),
            },
            plain_text_message:: {
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
            ssml_message:: {
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
            with_custom_payload(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                custom_payload: value,
              }
            ),
            with_image_response_card(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                image_response_card: value,
              }
            ),
            with_plain_text_message(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                plain_text_message: value,
              }
            ),
            with_ssml_message(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                ssml_message: value,
              }
            ),
            with_custom_payload_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                custom_payload+: converted,
              }
            ),
            with_image_response_card_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                image_response_card+: converted,
              }
            ),
            with_plain_text_message_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                plain_text_message+: converted,
              }
            ),
            with_ssml_message_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                ssml_message+: converted,
              }
            ),
          },
          variation:: {
            local block = self,
            new():: (
              {}
            ),
            custom_payload:: {
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
            image_response_card:: {
              local block = self,
              new(title):: (
                {}
                + block.with_title(title)
              ),
              with_image_url(value):: (
                local converted = value;
                assert std.isString(converted) : '"image_url" expected to be of type "string"';
                {
                  image_url: converted,
                }
              ),
              with_subtitle(value):: (
                local converted = value;
                assert std.isString(converted) : '"subtitle" expected to be of type "string"';
                {
                  subtitle: converted,
                }
              ),
              with_title(value):: (
                local converted = value;
                assert std.isString(converted) : '"title" expected to be of type "string"';
                {
                  title: converted,
                }
              ),
              button:: {
                local block = self,
                new(text, value):: (
                  {}
                  + block.with_text(text)
                  + block.with_value(value)
                ),
                with_text(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"text" expected to be of type "string"';
                  {
                    text: converted,
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
              with_button(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  button: value,
                }
              ),
              with_button_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  button+: converted,
                }
              ),
            },
            plain_text_message:: {
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
            ssml_message:: {
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
            with_custom_payload(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                custom_payload: value,
              }
            ),
            with_image_response_card(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                image_response_card: value,
              }
            ),
            with_plain_text_message(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                plain_text_message: value,
              }
            ),
            with_ssml_message(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                ssml_message: value,
              }
            ),
            with_custom_payload_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                custom_payload+: converted,
              }
            ),
            with_image_response_card_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                image_response_card+: converted,
              }
            ),
            with_plain_text_message_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                plain_text_message+: converted,
              }
            ),
            with_ssml_message_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                ssml_message+: converted,
              }
            ),
          },
          with_message(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              message: value,
            }
          ),
          with_variation(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              variation: value,
            }
          ),
          with_message_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              message+: converted,
            }
          ),
          with_variation_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              variation+: converted,
            }
          ),
        },
        with_message_group(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            message_group: value,
          }
        ),
        with_message_group_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            message_group+: converted,
          }
        ),
      },
      with_continue_response(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          continue_response: value,
        }
      ),
      with_still_waiting_response(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          still_waiting_response: value,
        }
      ),
      with_waiting_response(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          waiting_response: value,
        }
      ),
      with_continue_response_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          continue_response+: converted,
        }
      ),
      with_still_waiting_response_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          still_waiting_response+: converted,
        }
      ),
      with_waiting_response_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          waiting_response+: converted,
        }
      ),
    },
    with_default_value_specification(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        default_value_specification: value,
      }
    ),
    with_prompt_specification(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        prompt_specification: value,
      }
    ),
    with_sample_utterance(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sample_utterance: value,
      }
    ),
    with_slot_resolution_setting(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        slot_resolution_setting: value,
      }
    ),
    with_wait_and_continue_specification(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        wait_and_continue_specification: value,
      }
    ),
    with_default_value_specification_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        default_value_specification+: converted,
      }
    ),
    with_prompt_specification_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        prompt_specification+: converted,
      }
    ),
    with_sample_utterance_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sample_utterance+: converted,
      }
    ),
    with_slot_resolution_setting_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        slot_resolution_setting+: converted,
      }
    ),
    with_wait_and_continue_specification_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        wait_and_continue_specification+: converted,
      }
    ),
  },
  with_multiple_values_setting(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      multiple_values_setting: value,
    }
  ),
  with_obfuscation_setting(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      obfuscation_setting: value,
    }
  ),
  with_sub_slot_setting(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sub_slot_setting: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_value_elicitation_setting(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      value_elicitation_setting: value,
    }
  ),
  with_multiple_values_setting_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      multiple_values_setting+: converted,
    }
  ),
  with_obfuscation_setting_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      obfuscation_setting+: converted,
    }
  ),
  with_sub_slot_setting_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sub_slot_setting+: converted,
    }
  ),
  with_value_elicitation_setting_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      value_elicitation_setting+: converted,
    }
  ),
}
