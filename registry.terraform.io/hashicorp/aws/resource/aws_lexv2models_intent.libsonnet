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
  with_creation_date_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"creation_date_time" expected to be of type "string"';
    {
      creation_date_time: converted,
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
  with_last_updated_date_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_updated_date_time" expected to be of type "string"';
    {
      last_updated_date_time: converted,
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
  closing_setting:: {
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
    closing_response:: {
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
    conditional:: {
      local block = self,
      new(active):: (
        {}
        + block.with_active(active)
      ),
      with_active(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
        {
          active: converted,
        }
      ),
      conditional_branch:: {
        local block = self,
        new(name):: (
          {}
          + block.with_name(name)
        ),
        with_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        condition:: {
          local block = self,
          new(expression_string):: (
            {}
            + block.with_expression_string(expression_string)
          ),
          with_expression_string(value):: (
            local converted = value;
            assert std.isString(converted) : '"expression_string" expected to be of type "string"';
            {
              expression_string: converted,
            }
          ),
        },
        next_step:: {
          local block = self,
          new():: (
            {}
          ),
          with_session_attributes(value):: (
            local converted = value;
            assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
            {
              session_attributes: converted,
            }
          ),
          dialog_action:: {
            local block = self,
            new(type):: (
              {}
              + block.with_type(type)
            ),
            with_slot_to_elicit(value):: (
              local converted = value;
              assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
              {
                slot_to_elicit: converted,
              }
            ),
            with_suppress_next_message(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
              {
                suppress_next_message: converted,
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
          intent:: {
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
            slot:: {
              local block = self,
              new(map_block_key):: (
                {}
                + block.with_map_block_key(map_block_key)
              ),
              with_map_block_key(value):: (
                local converted = value;
                assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                {
                  map_block_key: converted,
                }
              ),
              with_shape(value):: (
                local converted = value;
                assert std.isString(converted) : '"shape" expected to be of type "string"';
                {
                  shape: converted,
                }
              ),
              value:: {
                local block = self,
                new():: (
                  {}
                ),
                with_interpreted_value(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                  {
                    interpreted_value: converted,
                  }
                ),
              },
              with_value(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value: value,
                }
              ),
              with_value_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value+: converted,
                }
              ),
            },
            with_slot(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot: value,
              }
            ),
            with_slot_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot+: converted,
              }
            ),
          },
          with_dialog_action(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action: value,
            }
          ),
          with_intent(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent: value,
            }
          ),
          with_dialog_action_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action+: converted,
            }
          ),
          with_intent_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent+: converted,
            }
          ),
        },
        response:: {
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
        with_condition(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            condition: value,
          }
        ),
        with_next_step(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step: value,
          }
        ),
        with_response(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response: value,
          }
        ),
        with_condition_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            condition+: converted,
          }
        ),
        with_next_step_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step+: converted,
          }
        ),
        with_response_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response+: converted,
          }
        ),
      },
      default_branch:: {
        local block = self,
        new():: (
          {}
        ),
        next_step:: {
          local block = self,
          new():: (
            {}
          ),
          with_session_attributes(value):: (
            local converted = value;
            assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
            {
              session_attributes: converted,
            }
          ),
          dialog_action:: {
            local block = self,
            new(type):: (
              {}
              + block.with_type(type)
            ),
            with_slot_to_elicit(value):: (
              local converted = value;
              assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
              {
                slot_to_elicit: converted,
              }
            ),
            with_suppress_next_message(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
              {
                suppress_next_message: converted,
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
          intent:: {
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
            slot:: {
              local block = self,
              new(map_block_key):: (
                {}
                + block.with_map_block_key(map_block_key)
              ),
              with_map_block_key(value):: (
                local converted = value;
                assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                {
                  map_block_key: converted,
                }
              ),
              with_shape(value):: (
                local converted = value;
                assert std.isString(converted) : '"shape" expected to be of type "string"';
                {
                  shape: converted,
                }
              ),
              value:: {
                local block = self,
                new():: (
                  {}
                ),
                with_interpreted_value(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                  {
                    interpreted_value: converted,
                  }
                ),
              },
              with_value(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value: value,
                }
              ),
              with_value_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value+: converted,
                }
              ),
            },
            with_slot(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot: value,
              }
            ),
            with_slot_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot+: converted,
              }
            ),
          },
          with_dialog_action(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action: value,
            }
          ),
          with_intent(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent: value,
            }
          ),
          with_dialog_action_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action+: converted,
            }
          ),
          with_intent_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent+: converted,
            }
          ),
        },
        response:: {
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
        with_next_step(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step: value,
          }
        ),
        with_response(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response: value,
          }
        ),
        with_next_step_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step+: converted,
          }
        ),
        with_response_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response+: converted,
          }
        ),
      },
      with_conditional_branch(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          conditional_branch: value,
        }
      ),
      with_default_branch(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_branch: value,
        }
      ),
      with_conditional_branch_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          conditional_branch+: converted,
        }
      ),
      with_default_branch_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_branch+: converted,
        }
      ),
    },
    next_step:: {
      local block = self,
      new():: (
        {}
      ),
      with_session_attributes(value):: (
        local converted = value;
        assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
        {
          session_attributes: converted,
        }
      ),
      dialog_action:: {
        local block = self,
        new(type):: (
          {}
          + block.with_type(type)
        ),
        with_slot_to_elicit(value):: (
          local converted = value;
          assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
          {
            slot_to_elicit: converted,
          }
        ),
        with_suppress_next_message(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
          {
            suppress_next_message: converted,
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
      intent:: {
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
        slot:: {
          local block = self,
          new(map_block_key):: (
            {}
            + block.with_map_block_key(map_block_key)
          ),
          with_map_block_key(value):: (
            local converted = value;
            assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
            {
              map_block_key: converted,
            }
          ),
          with_shape(value):: (
            local converted = value;
            assert std.isString(converted) : '"shape" expected to be of type "string"';
            {
              shape: converted,
            }
          ),
          value:: {
            local block = self,
            new():: (
              {}
            ),
            with_interpreted_value(value):: (
              local converted = value;
              assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
              {
                interpreted_value: converted,
              }
            ),
          },
          with_value(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              value: value,
            }
          ),
          with_value_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              value+: converted,
            }
          ),
        },
        with_slot(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            slot: value,
          }
        ),
        with_slot_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            slot+: converted,
          }
        ),
      },
      with_dialog_action(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dialog_action: value,
        }
      ),
      with_intent(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          intent: value,
        }
      ),
      with_dialog_action_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dialog_action+: converted,
        }
      ),
      with_intent_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          intent+: converted,
        }
      ),
    },
    with_closing_response(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        closing_response: value,
      }
    ),
    with_conditional(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        conditional: value,
      }
    ),
    with_next_step(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        next_step: value,
      }
    ),
    with_closing_response_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        closing_response+: converted,
      }
    ),
    with_conditional_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        conditional+: converted,
      }
    ),
    with_next_step_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        next_step+: converted,
      }
    ),
  },
  confirmation_setting:: {
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
    code_hook:: {
      local block = self,
      new(active, enable_code_hook_invocation):: (
        {}
        + block.with_active(active)
        + block.with_enable_code_hook_invocation(enable_code_hook_invocation)
      ),
      with_active(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
        {
          active: converted,
        }
      ),
      with_enable_code_hook_invocation(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enable_code_hook_invocation" expected to be of type "bool"';
        {
          enable_code_hook_invocation: converted,
        }
      ),
      with_invocation_label(value):: (
        local converted = value;
        assert std.isString(converted) : '"invocation_label" expected to be of type "string"';
        {
          invocation_label: converted,
        }
      ),
      post_code_hook_specification:: {
        local block = self,
        new():: (
          {}
        ),
        failure_conditional:: {
          local block = self,
          new(active):: (
            {}
            + block.with_active(active)
          ),
          with_active(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
            {
              active: converted,
            }
          ),
          conditional_branch:: {
            local block = self,
            new(name):: (
              {}
              + block.with_name(name)
            ),
            with_name(value):: (
              local converted = value;
              assert std.isString(converted) : '"name" expected to be of type "string"';
              {
                name: converted,
              }
            ),
            condition:: {
              local block = self,
              new(expression_string):: (
                {}
                + block.with_expression_string(expression_string)
              ),
              with_expression_string(value):: (
                local converted = value;
                assert std.isString(converted) : '"expression_string" expected to be of type "string"';
                {
                  expression_string: converted,
                }
              ),
            },
            next_step:: {
              local block = self,
              new():: (
                {}
              ),
              with_session_attributes(value):: (
                local converted = value;
                assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
                {
                  session_attributes: converted,
                }
              ),
              dialog_action:: {
                local block = self,
                new(type):: (
                  {}
                  + block.with_type(type)
                ),
                with_slot_to_elicit(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
                  {
                    slot_to_elicit: converted,
                  }
                ),
                with_suppress_next_message(value):: (
                  local converted = value;
                  assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
                  {
                    suppress_next_message: converted,
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
              intent:: {
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
                slot:: {
                  local block = self,
                  new(map_block_key):: (
                    {}
                    + block.with_map_block_key(map_block_key)
                  ),
                  with_map_block_key(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                    {
                      map_block_key: converted,
                    }
                  ),
                  with_shape(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"shape" expected to be of type "string"';
                    {
                      shape: converted,
                    }
                  ),
                  value:: {
                    local block = self,
                    new():: (
                      {}
                    ),
                    with_interpreted_value(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                      {
                        interpreted_value: converted,
                      }
                    ),
                  },
                  with_value(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value: value,
                    }
                  ),
                  with_value_mixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value+: converted,
                    }
                  ),
                },
                with_slot(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot: value,
                  }
                ),
                with_slot_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot+: converted,
                  }
                ),
              },
              with_dialog_action(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action: value,
                }
              ),
              with_intent(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent: value,
                }
              ),
              with_dialog_action_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action+: converted,
                }
              ),
              with_intent_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent+: converted,
                }
              ),
            },
            response:: {
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
            with_condition(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                condition: value,
              }
            ),
            with_next_step(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step: value,
              }
            ),
            with_response(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response: value,
              }
            ),
            with_condition_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                condition+: converted,
              }
            ),
            with_next_step_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step+: converted,
              }
            ),
            with_response_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response+: converted,
              }
            ),
          },
          default_branch:: {
            local block = self,
            new():: (
              {}
            ),
            next_step:: {
              local block = self,
              new():: (
                {}
              ),
              with_session_attributes(value):: (
                local converted = value;
                assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
                {
                  session_attributes: converted,
                }
              ),
              dialog_action:: {
                local block = self,
                new(type):: (
                  {}
                  + block.with_type(type)
                ),
                with_slot_to_elicit(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
                  {
                    slot_to_elicit: converted,
                  }
                ),
                with_suppress_next_message(value):: (
                  local converted = value;
                  assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
                  {
                    suppress_next_message: converted,
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
              intent:: {
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
                slot:: {
                  local block = self,
                  new(map_block_key):: (
                    {}
                    + block.with_map_block_key(map_block_key)
                  ),
                  with_map_block_key(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                    {
                      map_block_key: converted,
                    }
                  ),
                  with_shape(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"shape" expected to be of type "string"';
                    {
                      shape: converted,
                    }
                  ),
                  value:: {
                    local block = self,
                    new():: (
                      {}
                    ),
                    with_interpreted_value(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                      {
                        interpreted_value: converted,
                      }
                    ),
                  },
                  with_value(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value: value,
                    }
                  ),
                  with_value_mixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value+: converted,
                    }
                  ),
                },
                with_slot(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot: value,
                  }
                ),
                with_slot_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot+: converted,
                  }
                ),
              },
              with_dialog_action(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action: value,
                }
              ),
              with_intent(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent: value,
                }
              ),
              with_dialog_action_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action+: converted,
                }
              ),
              with_intent_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent+: converted,
                }
              ),
            },
            response:: {
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
            with_next_step(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step: value,
              }
            ),
            with_response(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response: value,
              }
            ),
            with_next_step_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step+: converted,
              }
            ),
            with_response_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response+: converted,
              }
            ),
          },
          with_conditional_branch(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              conditional_branch: value,
            }
          ),
          with_default_branch(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              default_branch: value,
            }
          ),
          with_conditional_branch_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              conditional_branch+: converted,
            }
          ),
          with_default_branch_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              default_branch+: converted,
            }
          ),
        },
        failure_next_step:: {
          local block = self,
          new():: (
            {}
          ),
          with_session_attributes(value):: (
            local converted = value;
            assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
            {
              session_attributes: converted,
            }
          ),
          dialog_action:: {
            local block = self,
            new(type):: (
              {}
              + block.with_type(type)
            ),
            with_slot_to_elicit(value):: (
              local converted = value;
              assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
              {
                slot_to_elicit: converted,
              }
            ),
            with_suppress_next_message(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
              {
                suppress_next_message: converted,
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
          intent:: {
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
            slot:: {
              local block = self,
              new(map_block_key):: (
                {}
                + block.with_map_block_key(map_block_key)
              ),
              with_map_block_key(value):: (
                local converted = value;
                assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                {
                  map_block_key: converted,
                }
              ),
              with_shape(value):: (
                local converted = value;
                assert std.isString(converted) : '"shape" expected to be of type "string"';
                {
                  shape: converted,
                }
              ),
              value:: {
                local block = self,
                new():: (
                  {}
                ),
                with_interpreted_value(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                  {
                    interpreted_value: converted,
                  }
                ),
              },
              with_value(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value: value,
                }
              ),
              with_value_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value+: converted,
                }
              ),
            },
            with_slot(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot: value,
              }
            ),
            with_slot_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot+: converted,
              }
            ),
          },
          with_dialog_action(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action: value,
            }
          ),
          with_intent(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent: value,
            }
          ),
          with_dialog_action_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action+: converted,
            }
          ),
          with_intent_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent+: converted,
            }
          ),
        },
        failure_response:: {
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
        success_conditional:: {
          local block = self,
          new(active):: (
            {}
            + block.with_active(active)
          ),
          with_active(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
            {
              active: converted,
            }
          ),
          conditional_branch:: {
            local block = self,
            new(name):: (
              {}
              + block.with_name(name)
            ),
            with_name(value):: (
              local converted = value;
              assert std.isString(converted) : '"name" expected to be of type "string"';
              {
                name: converted,
              }
            ),
            condition:: {
              local block = self,
              new(expression_string):: (
                {}
                + block.with_expression_string(expression_string)
              ),
              with_expression_string(value):: (
                local converted = value;
                assert std.isString(converted) : '"expression_string" expected to be of type "string"';
                {
                  expression_string: converted,
                }
              ),
            },
            next_step:: {
              local block = self,
              new():: (
                {}
              ),
              with_session_attributes(value):: (
                local converted = value;
                assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
                {
                  session_attributes: converted,
                }
              ),
              dialog_action:: {
                local block = self,
                new(type):: (
                  {}
                  + block.with_type(type)
                ),
                with_slot_to_elicit(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
                  {
                    slot_to_elicit: converted,
                  }
                ),
                with_suppress_next_message(value):: (
                  local converted = value;
                  assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
                  {
                    suppress_next_message: converted,
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
              intent:: {
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
                slot:: {
                  local block = self,
                  new(map_block_key):: (
                    {}
                    + block.with_map_block_key(map_block_key)
                  ),
                  with_map_block_key(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                    {
                      map_block_key: converted,
                    }
                  ),
                  with_shape(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"shape" expected to be of type "string"';
                    {
                      shape: converted,
                    }
                  ),
                  value:: {
                    local block = self,
                    new():: (
                      {}
                    ),
                    with_interpreted_value(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                      {
                        interpreted_value: converted,
                      }
                    ),
                  },
                  with_value(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value: value,
                    }
                  ),
                  with_value_mixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value+: converted,
                    }
                  ),
                },
                with_slot(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot: value,
                  }
                ),
                with_slot_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot+: converted,
                  }
                ),
              },
              with_dialog_action(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action: value,
                }
              ),
              with_intent(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent: value,
                }
              ),
              with_dialog_action_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action+: converted,
                }
              ),
              with_intent_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent+: converted,
                }
              ),
            },
            response:: {
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
            with_condition(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                condition: value,
              }
            ),
            with_next_step(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step: value,
              }
            ),
            with_response(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response: value,
              }
            ),
            with_condition_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                condition+: converted,
              }
            ),
            with_next_step_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step+: converted,
              }
            ),
            with_response_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response+: converted,
              }
            ),
          },
          default_branch:: {
            local block = self,
            new():: (
              {}
            ),
            next_step:: {
              local block = self,
              new():: (
                {}
              ),
              with_session_attributes(value):: (
                local converted = value;
                assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
                {
                  session_attributes: converted,
                }
              ),
              dialog_action:: {
                local block = self,
                new(type):: (
                  {}
                  + block.with_type(type)
                ),
                with_slot_to_elicit(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
                  {
                    slot_to_elicit: converted,
                  }
                ),
                with_suppress_next_message(value):: (
                  local converted = value;
                  assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
                  {
                    suppress_next_message: converted,
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
              intent:: {
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
                slot:: {
                  local block = self,
                  new(map_block_key):: (
                    {}
                    + block.with_map_block_key(map_block_key)
                  ),
                  with_map_block_key(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                    {
                      map_block_key: converted,
                    }
                  ),
                  with_shape(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"shape" expected to be of type "string"';
                    {
                      shape: converted,
                    }
                  ),
                  value:: {
                    local block = self,
                    new():: (
                      {}
                    ),
                    with_interpreted_value(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                      {
                        interpreted_value: converted,
                      }
                    ),
                  },
                  with_value(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value: value,
                    }
                  ),
                  with_value_mixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value+: converted,
                    }
                  ),
                },
                with_slot(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot: value,
                  }
                ),
                with_slot_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot+: converted,
                  }
                ),
              },
              with_dialog_action(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action: value,
                }
              ),
              with_intent(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent: value,
                }
              ),
              with_dialog_action_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action+: converted,
                }
              ),
              with_intent_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent+: converted,
                }
              ),
            },
            response:: {
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
            with_next_step(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step: value,
              }
            ),
            with_response(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response: value,
              }
            ),
            with_next_step_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step+: converted,
              }
            ),
            with_response_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response+: converted,
              }
            ),
          },
          with_conditional_branch(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              conditional_branch: value,
            }
          ),
          with_default_branch(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              default_branch: value,
            }
          ),
          with_conditional_branch_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              conditional_branch+: converted,
            }
          ),
          with_default_branch_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              default_branch+: converted,
            }
          ),
        },
        success_next_step:: {
          local block = self,
          new():: (
            {}
          ),
          with_session_attributes(value):: (
            local converted = value;
            assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
            {
              session_attributes: converted,
            }
          ),
          dialog_action:: {
            local block = self,
            new(type):: (
              {}
              + block.with_type(type)
            ),
            with_slot_to_elicit(value):: (
              local converted = value;
              assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
              {
                slot_to_elicit: converted,
              }
            ),
            with_suppress_next_message(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
              {
                suppress_next_message: converted,
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
          intent:: {
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
            slot:: {
              local block = self,
              new(map_block_key):: (
                {}
                + block.with_map_block_key(map_block_key)
              ),
              with_map_block_key(value):: (
                local converted = value;
                assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                {
                  map_block_key: converted,
                }
              ),
              with_shape(value):: (
                local converted = value;
                assert std.isString(converted) : '"shape" expected to be of type "string"';
                {
                  shape: converted,
                }
              ),
              value:: {
                local block = self,
                new():: (
                  {}
                ),
                with_interpreted_value(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                  {
                    interpreted_value: converted,
                  }
                ),
              },
              with_value(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value: value,
                }
              ),
              with_value_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value+: converted,
                }
              ),
            },
            with_slot(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot: value,
              }
            ),
            with_slot_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot+: converted,
              }
            ),
          },
          with_dialog_action(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action: value,
            }
          ),
          with_intent(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent: value,
            }
          ),
          with_dialog_action_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action+: converted,
            }
          ),
          with_intent_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent+: converted,
            }
          ),
        },
        success_response:: {
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
        timeout_conditional:: {
          local block = self,
          new(active):: (
            {}
            + block.with_active(active)
          ),
          with_active(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
            {
              active: converted,
            }
          ),
          conditional_branch:: {
            local block = self,
            new(name):: (
              {}
              + block.with_name(name)
            ),
            with_name(value):: (
              local converted = value;
              assert std.isString(converted) : '"name" expected to be of type "string"';
              {
                name: converted,
              }
            ),
            condition:: {
              local block = self,
              new(expression_string):: (
                {}
                + block.with_expression_string(expression_string)
              ),
              with_expression_string(value):: (
                local converted = value;
                assert std.isString(converted) : '"expression_string" expected to be of type "string"';
                {
                  expression_string: converted,
                }
              ),
            },
            next_step:: {
              local block = self,
              new():: (
                {}
              ),
              with_session_attributes(value):: (
                local converted = value;
                assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
                {
                  session_attributes: converted,
                }
              ),
              dialog_action:: {
                local block = self,
                new(type):: (
                  {}
                  + block.with_type(type)
                ),
                with_slot_to_elicit(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
                  {
                    slot_to_elicit: converted,
                  }
                ),
                with_suppress_next_message(value):: (
                  local converted = value;
                  assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
                  {
                    suppress_next_message: converted,
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
              intent:: {
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
                slot:: {
                  local block = self,
                  new(map_block_key):: (
                    {}
                    + block.with_map_block_key(map_block_key)
                  ),
                  with_map_block_key(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                    {
                      map_block_key: converted,
                    }
                  ),
                  with_shape(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"shape" expected to be of type "string"';
                    {
                      shape: converted,
                    }
                  ),
                  value:: {
                    local block = self,
                    new():: (
                      {}
                    ),
                    with_interpreted_value(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                      {
                        interpreted_value: converted,
                      }
                    ),
                  },
                  with_value(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value: value,
                    }
                  ),
                  with_value_mixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value+: converted,
                    }
                  ),
                },
                with_slot(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot: value,
                  }
                ),
                with_slot_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot+: converted,
                  }
                ),
              },
              with_dialog_action(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action: value,
                }
              ),
              with_intent(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent: value,
                }
              ),
              with_dialog_action_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action+: converted,
                }
              ),
              with_intent_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent+: converted,
                }
              ),
            },
            response:: {
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
            with_condition(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                condition: value,
              }
            ),
            with_next_step(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step: value,
              }
            ),
            with_response(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response: value,
              }
            ),
            with_condition_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                condition+: converted,
              }
            ),
            with_next_step_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step+: converted,
              }
            ),
            with_response_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response+: converted,
              }
            ),
          },
          default_branch:: {
            local block = self,
            new():: (
              {}
            ),
            next_step:: {
              local block = self,
              new():: (
                {}
              ),
              with_session_attributes(value):: (
                local converted = value;
                assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
                {
                  session_attributes: converted,
                }
              ),
              dialog_action:: {
                local block = self,
                new(type):: (
                  {}
                  + block.with_type(type)
                ),
                with_slot_to_elicit(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
                  {
                    slot_to_elicit: converted,
                  }
                ),
                with_suppress_next_message(value):: (
                  local converted = value;
                  assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
                  {
                    suppress_next_message: converted,
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
              intent:: {
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
                slot:: {
                  local block = self,
                  new(map_block_key):: (
                    {}
                    + block.with_map_block_key(map_block_key)
                  ),
                  with_map_block_key(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                    {
                      map_block_key: converted,
                    }
                  ),
                  with_shape(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"shape" expected to be of type "string"';
                    {
                      shape: converted,
                    }
                  ),
                  value:: {
                    local block = self,
                    new():: (
                      {}
                    ),
                    with_interpreted_value(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                      {
                        interpreted_value: converted,
                      }
                    ),
                  },
                  with_value(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value: value,
                    }
                  ),
                  with_value_mixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value+: converted,
                    }
                  ),
                },
                with_slot(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot: value,
                  }
                ),
                with_slot_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot+: converted,
                  }
                ),
              },
              with_dialog_action(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action: value,
                }
              ),
              with_intent(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent: value,
                }
              ),
              with_dialog_action_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action+: converted,
                }
              ),
              with_intent_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent+: converted,
                }
              ),
            },
            response:: {
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
            with_next_step(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step: value,
              }
            ),
            with_response(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response: value,
              }
            ),
            with_next_step_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step+: converted,
              }
            ),
            with_response_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response+: converted,
              }
            ),
          },
          with_conditional_branch(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              conditional_branch: value,
            }
          ),
          with_default_branch(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              default_branch: value,
            }
          ),
          with_conditional_branch_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              conditional_branch+: converted,
            }
          ),
          with_default_branch_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              default_branch+: converted,
            }
          ),
        },
        timeout_next_step:: {
          local block = self,
          new():: (
            {}
          ),
          with_session_attributes(value):: (
            local converted = value;
            assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
            {
              session_attributes: converted,
            }
          ),
          dialog_action:: {
            local block = self,
            new(type):: (
              {}
              + block.with_type(type)
            ),
            with_slot_to_elicit(value):: (
              local converted = value;
              assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
              {
                slot_to_elicit: converted,
              }
            ),
            with_suppress_next_message(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
              {
                suppress_next_message: converted,
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
          intent:: {
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
            slot:: {
              local block = self,
              new(map_block_key):: (
                {}
                + block.with_map_block_key(map_block_key)
              ),
              with_map_block_key(value):: (
                local converted = value;
                assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                {
                  map_block_key: converted,
                }
              ),
              with_shape(value):: (
                local converted = value;
                assert std.isString(converted) : '"shape" expected to be of type "string"';
                {
                  shape: converted,
                }
              ),
              value:: {
                local block = self,
                new():: (
                  {}
                ),
                with_interpreted_value(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                  {
                    interpreted_value: converted,
                  }
                ),
              },
              with_value(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value: value,
                }
              ),
              with_value_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value+: converted,
                }
              ),
            },
            with_slot(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot: value,
              }
            ),
            with_slot_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot+: converted,
              }
            ),
          },
          with_dialog_action(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action: value,
            }
          ),
          with_intent(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent: value,
            }
          ),
          with_dialog_action_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action+: converted,
            }
          ),
          with_intent_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent+: converted,
            }
          ),
        },
        timeout_response:: {
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
        with_failure_conditional(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            failure_conditional: value,
          }
        ),
        with_failure_next_step(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            failure_next_step: value,
          }
        ),
        with_failure_response(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            failure_response: value,
          }
        ),
        with_success_conditional(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            success_conditional: value,
          }
        ),
        with_success_next_step(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            success_next_step: value,
          }
        ),
        with_success_response(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            success_response: value,
          }
        ),
        with_timeout_conditional(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            timeout_conditional: value,
          }
        ),
        with_timeout_next_step(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            timeout_next_step: value,
          }
        ),
        with_timeout_response(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            timeout_response: value,
          }
        ),
        with_failure_conditional_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            failure_conditional+: converted,
          }
        ),
        with_failure_next_step_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            failure_next_step+: converted,
          }
        ),
        with_failure_response_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            failure_response+: converted,
          }
        ),
        with_success_conditional_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            success_conditional+: converted,
          }
        ),
        with_success_next_step_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            success_next_step+: converted,
          }
        ),
        with_success_response_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            success_response+: converted,
          }
        ),
        with_timeout_conditional_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            timeout_conditional+: converted,
          }
        ),
        with_timeout_next_step_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            timeout_next_step+: converted,
          }
        ),
        with_timeout_response_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            timeout_response+: converted,
          }
        ),
      },
      with_post_code_hook_specification(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          post_code_hook_specification: value,
        }
      ),
      with_post_code_hook_specification_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          post_code_hook_specification+: converted,
        }
      ),
    },
    confirmation_conditional:: {
      local block = self,
      new(active):: (
        {}
        + block.with_active(active)
      ),
      with_active(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
        {
          active: converted,
        }
      ),
      conditional_branch:: {
        local block = self,
        new(name):: (
          {}
          + block.with_name(name)
        ),
        with_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        condition:: {
          local block = self,
          new(expression_string):: (
            {}
            + block.with_expression_string(expression_string)
          ),
          with_expression_string(value):: (
            local converted = value;
            assert std.isString(converted) : '"expression_string" expected to be of type "string"';
            {
              expression_string: converted,
            }
          ),
        },
        next_step:: {
          local block = self,
          new():: (
            {}
          ),
          with_session_attributes(value):: (
            local converted = value;
            assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
            {
              session_attributes: converted,
            }
          ),
          dialog_action:: {
            local block = self,
            new(type):: (
              {}
              + block.with_type(type)
            ),
            with_slot_to_elicit(value):: (
              local converted = value;
              assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
              {
                slot_to_elicit: converted,
              }
            ),
            with_suppress_next_message(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
              {
                suppress_next_message: converted,
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
          intent:: {
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
            slot:: {
              local block = self,
              new(map_block_key):: (
                {}
                + block.with_map_block_key(map_block_key)
              ),
              with_map_block_key(value):: (
                local converted = value;
                assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                {
                  map_block_key: converted,
                }
              ),
              with_shape(value):: (
                local converted = value;
                assert std.isString(converted) : '"shape" expected to be of type "string"';
                {
                  shape: converted,
                }
              ),
              value:: {
                local block = self,
                new():: (
                  {}
                ),
                with_interpreted_value(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                  {
                    interpreted_value: converted,
                  }
                ),
              },
              with_value(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value: value,
                }
              ),
              with_value_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value+: converted,
                }
              ),
            },
            with_slot(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot: value,
              }
            ),
            with_slot_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot+: converted,
              }
            ),
          },
          with_dialog_action(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action: value,
            }
          ),
          with_intent(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent: value,
            }
          ),
          with_dialog_action_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action+: converted,
            }
          ),
          with_intent_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent+: converted,
            }
          ),
        },
        response:: {
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
        with_condition(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            condition: value,
          }
        ),
        with_next_step(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step: value,
          }
        ),
        with_response(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response: value,
          }
        ),
        with_condition_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            condition+: converted,
          }
        ),
        with_next_step_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step+: converted,
          }
        ),
        with_response_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response+: converted,
          }
        ),
      },
      default_branch:: {
        local block = self,
        new():: (
          {}
        ),
        next_step:: {
          local block = self,
          new():: (
            {}
          ),
          with_session_attributes(value):: (
            local converted = value;
            assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
            {
              session_attributes: converted,
            }
          ),
          dialog_action:: {
            local block = self,
            new(type):: (
              {}
              + block.with_type(type)
            ),
            with_slot_to_elicit(value):: (
              local converted = value;
              assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
              {
                slot_to_elicit: converted,
              }
            ),
            with_suppress_next_message(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
              {
                suppress_next_message: converted,
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
          intent:: {
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
            slot:: {
              local block = self,
              new(map_block_key):: (
                {}
                + block.with_map_block_key(map_block_key)
              ),
              with_map_block_key(value):: (
                local converted = value;
                assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                {
                  map_block_key: converted,
                }
              ),
              with_shape(value):: (
                local converted = value;
                assert std.isString(converted) : '"shape" expected to be of type "string"';
                {
                  shape: converted,
                }
              ),
              value:: {
                local block = self,
                new():: (
                  {}
                ),
                with_interpreted_value(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                  {
                    interpreted_value: converted,
                  }
                ),
              },
              with_value(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value: value,
                }
              ),
              with_value_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value+: converted,
                }
              ),
            },
            with_slot(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot: value,
              }
            ),
            with_slot_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot+: converted,
              }
            ),
          },
          with_dialog_action(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action: value,
            }
          ),
          with_intent(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent: value,
            }
          ),
          with_dialog_action_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action+: converted,
            }
          ),
          with_intent_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent+: converted,
            }
          ),
        },
        response:: {
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
        with_next_step(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step: value,
          }
        ),
        with_response(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response: value,
          }
        ),
        with_next_step_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step+: converted,
          }
        ),
        with_response_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response+: converted,
          }
        ),
      },
      with_conditional_branch(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          conditional_branch: value,
        }
      ),
      with_default_branch(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_branch: value,
        }
      ),
      with_conditional_branch_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          conditional_branch+: converted,
        }
      ),
      with_default_branch_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_branch+: converted,
        }
      ),
    },
    confirmation_next_step:: {
      local block = self,
      new():: (
        {}
      ),
      with_session_attributes(value):: (
        local converted = value;
        assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
        {
          session_attributes: converted,
        }
      ),
      dialog_action:: {
        local block = self,
        new(type):: (
          {}
          + block.with_type(type)
        ),
        with_slot_to_elicit(value):: (
          local converted = value;
          assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
          {
            slot_to_elicit: converted,
          }
        ),
        with_suppress_next_message(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
          {
            suppress_next_message: converted,
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
      intent:: {
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
        slot:: {
          local block = self,
          new(map_block_key):: (
            {}
            + block.with_map_block_key(map_block_key)
          ),
          with_map_block_key(value):: (
            local converted = value;
            assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
            {
              map_block_key: converted,
            }
          ),
          with_shape(value):: (
            local converted = value;
            assert std.isString(converted) : '"shape" expected to be of type "string"';
            {
              shape: converted,
            }
          ),
          value:: {
            local block = self,
            new():: (
              {}
            ),
            with_interpreted_value(value):: (
              local converted = value;
              assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
              {
                interpreted_value: converted,
              }
            ),
          },
          with_value(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              value: value,
            }
          ),
          with_value_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              value+: converted,
            }
          ),
        },
        with_slot(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            slot: value,
          }
        ),
        with_slot_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            slot+: converted,
          }
        ),
      },
      with_dialog_action(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dialog_action: value,
        }
      ),
      with_intent(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          intent: value,
        }
      ),
      with_dialog_action_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dialog_action+: converted,
        }
      ),
      with_intent_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          intent+: converted,
        }
      ),
    },
    confirmation_response:: {
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
    declination_conditional:: {
      local block = self,
      new(active):: (
        {}
        + block.with_active(active)
      ),
      with_active(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
        {
          active: converted,
        }
      ),
      conditional_branch:: {
        local block = self,
        new(name):: (
          {}
          + block.with_name(name)
        ),
        with_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        condition:: {
          local block = self,
          new(expression_string):: (
            {}
            + block.with_expression_string(expression_string)
          ),
          with_expression_string(value):: (
            local converted = value;
            assert std.isString(converted) : '"expression_string" expected to be of type "string"';
            {
              expression_string: converted,
            }
          ),
        },
        next_step:: {
          local block = self,
          new():: (
            {}
          ),
          with_session_attributes(value):: (
            local converted = value;
            assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
            {
              session_attributes: converted,
            }
          ),
          dialog_action:: {
            local block = self,
            new(type):: (
              {}
              + block.with_type(type)
            ),
            with_slot_to_elicit(value):: (
              local converted = value;
              assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
              {
                slot_to_elicit: converted,
              }
            ),
            with_suppress_next_message(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
              {
                suppress_next_message: converted,
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
          intent:: {
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
            slot:: {
              local block = self,
              new(map_block_key):: (
                {}
                + block.with_map_block_key(map_block_key)
              ),
              with_map_block_key(value):: (
                local converted = value;
                assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                {
                  map_block_key: converted,
                }
              ),
              with_shape(value):: (
                local converted = value;
                assert std.isString(converted) : '"shape" expected to be of type "string"';
                {
                  shape: converted,
                }
              ),
              value:: {
                local block = self,
                new():: (
                  {}
                ),
                with_interpreted_value(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                  {
                    interpreted_value: converted,
                  }
                ),
              },
              with_value(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value: value,
                }
              ),
              with_value_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value+: converted,
                }
              ),
            },
            with_slot(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot: value,
              }
            ),
            with_slot_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot+: converted,
              }
            ),
          },
          with_dialog_action(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action: value,
            }
          ),
          with_intent(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent: value,
            }
          ),
          with_dialog_action_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action+: converted,
            }
          ),
          with_intent_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent+: converted,
            }
          ),
        },
        response:: {
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
        with_condition(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            condition: value,
          }
        ),
        with_next_step(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step: value,
          }
        ),
        with_response(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response: value,
          }
        ),
        with_condition_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            condition+: converted,
          }
        ),
        with_next_step_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step+: converted,
          }
        ),
        with_response_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response+: converted,
          }
        ),
      },
      default_branch:: {
        local block = self,
        new():: (
          {}
        ),
        next_step:: {
          local block = self,
          new():: (
            {}
          ),
          with_session_attributes(value):: (
            local converted = value;
            assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
            {
              session_attributes: converted,
            }
          ),
          dialog_action:: {
            local block = self,
            new(type):: (
              {}
              + block.with_type(type)
            ),
            with_slot_to_elicit(value):: (
              local converted = value;
              assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
              {
                slot_to_elicit: converted,
              }
            ),
            with_suppress_next_message(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
              {
                suppress_next_message: converted,
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
          intent:: {
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
            slot:: {
              local block = self,
              new(map_block_key):: (
                {}
                + block.with_map_block_key(map_block_key)
              ),
              with_map_block_key(value):: (
                local converted = value;
                assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                {
                  map_block_key: converted,
                }
              ),
              with_shape(value):: (
                local converted = value;
                assert std.isString(converted) : '"shape" expected to be of type "string"';
                {
                  shape: converted,
                }
              ),
              value:: {
                local block = self,
                new():: (
                  {}
                ),
                with_interpreted_value(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                  {
                    interpreted_value: converted,
                  }
                ),
              },
              with_value(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value: value,
                }
              ),
              with_value_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value+: converted,
                }
              ),
            },
            with_slot(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot: value,
              }
            ),
            with_slot_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot+: converted,
              }
            ),
          },
          with_dialog_action(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action: value,
            }
          ),
          with_intent(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent: value,
            }
          ),
          with_dialog_action_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action+: converted,
            }
          ),
          with_intent_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent+: converted,
            }
          ),
        },
        response:: {
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
        with_next_step(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step: value,
          }
        ),
        with_response(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response: value,
          }
        ),
        with_next_step_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step+: converted,
          }
        ),
        with_response_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response+: converted,
          }
        ),
      },
      with_conditional_branch(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          conditional_branch: value,
        }
      ),
      with_default_branch(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_branch: value,
        }
      ),
      with_conditional_branch_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          conditional_branch+: converted,
        }
      ),
      with_default_branch_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_branch+: converted,
        }
      ),
    },
    declination_next_step:: {
      local block = self,
      new():: (
        {}
      ),
      with_session_attributes(value):: (
        local converted = value;
        assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
        {
          session_attributes: converted,
        }
      ),
      dialog_action:: {
        local block = self,
        new(type):: (
          {}
          + block.with_type(type)
        ),
        with_slot_to_elicit(value):: (
          local converted = value;
          assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
          {
            slot_to_elicit: converted,
          }
        ),
        with_suppress_next_message(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
          {
            suppress_next_message: converted,
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
      intent:: {
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
        slot:: {
          local block = self,
          new(map_block_key):: (
            {}
            + block.with_map_block_key(map_block_key)
          ),
          with_map_block_key(value):: (
            local converted = value;
            assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
            {
              map_block_key: converted,
            }
          ),
          with_shape(value):: (
            local converted = value;
            assert std.isString(converted) : '"shape" expected to be of type "string"';
            {
              shape: converted,
            }
          ),
          value:: {
            local block = self,
            new():: (
              {}
            ),
            with_interpreted_value(value):: (
              local converted = value;
              assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
              {
                interpreted_value: converted,
              }
            ),
          },
          with_value(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              value: value,
            }
          ),
          with_value_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              value+: converted,
            }
          ),
        },
        with_slot(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            slot: value,
          }
        ),
        with_slot_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            slot+: converted,
          }
        ),
      },
      with_dialog_action(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dialog_action: value,
        }
      ),
      with_intent(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          intent: value,
        }
      ),
      with_dialog_action_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dialog_action+: converted,
        }
      ),
      with_intent_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          intent+: converted,
        }
      ),
    },
    declination_response:: {
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
    elicitation_code_hook:: {
      local block = self,
      new():: (
        {}
      ),
      with_enable_code_hook_invocation(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enable_code_hook_invocation" expected to be of type "bool"';
        {
          enable_code_hook_invocation: converted,
        }
      ),
      with_invocation_label(value):: (
        local converted = value;
        assert std.isString(converted) : '"invocation_label" expected to be of type "string"';
        {
          invocation_label: converted,
        }
      ),
    },
    failure_conditional:: {
      local block = self,
      new(active):: (
        {}
        + block.with_active(active)
      ),
      with_active(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
        {
          active: converted,
        }
      ),
      conditional_branch:: {
        local block = self,
        new(name):: (
          {}
          + block.with_name(name)
        ),
        with_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        condition:: {
          local block = self,
          new(expression_string):: (
            {}
            + block.with_expression_string(expression_string)
          ),
          with_expression_string(value):: (
            local converted = value;
            assert std.isString(converted) : '"expression_string" expected to be of type "string"';
            {
              expression_string: converted,
            }
          ),
        },
        next_step:: {
          local block = self,
          new():: (
            {}
          ),
          with_session_attributes(value):: (
            local converted = value;
            assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
            {
              session_attributes: converted,
            }
          ),
          dialog_action:: {
            local block = self,
            new(type):: (
              {}
              + block.with_type(type)
            ),
            with_slot_to_elicit(value):: (
              local converted = value;
              assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
              {
                slot_to_elicit: converted,
              }
            ),
            with_suppress_next_message(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
              {
                suppress_next_message: converted,
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
          intent:: {
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
            slot:: {
              local block = self,
              new(map_block_key):: (
                {}
                + block.with_map_block_key(map_block_key)
              ),
              with_map_block_key(value):: (
                local converted = value;
                assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                {
                  map_block_key: converted,
                }
              ),
              with_shape(value):: (
                local converted = value;
                assert std.isString(converted) : '"shape" expected to be of type "string"';
                {
                  shape: converted,
                }
              ),
              value:: {
                local block = self,
                new():: (
                  {}
                ),
                with_interpreted_value(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                  {
                    interpreted_value: converted,
                  }
                ),
              },
              with_value(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value: value,
                }
              ),
              with_value_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value+: converted,
                }
              ),
            },
            with_slot(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot: value,
              }
            ),
            with_slot_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot+: converted,
              }
            ),
          },
          with_dialog_action(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action: value,
            }
          ),
          with_intent(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent: value,
            }
          ),
          with_dialog_action_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action+: converted,
            }
          ),
          with_intent_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent+: converted,
            }
          ),
        },
        response:: {
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
        with_condition(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            condition: value,
          }
        ),
        with_next_step(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step: value,
          }
        ),
        with_response(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response: value,
          }
        ),
        with_condition_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            condition+: converted,
          }
        ),
        with_next_step_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step+: converted,
          }
        ),
        with_response_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response+: converted,
          }
        ),
      },
      default_branch:: {
        local block = self,
        new():: (
          {}
        ),
        next_step:: {
          local block = self,
          new():: (
            {}
          ),
          with_session_attributes(value):: (
            local converted = value;
            assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
            {
              session_attributes: converted,
            }
          ),
          dialog_action:: {
            local block = self,
            new(type):: (
              {}
              + block.with_type(type)
            ),
            with_slot_to_elicit(value):: (
              local converted = value;
              assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
              {
                slot_to_elicit: converted,
              }
            ),
            with_suppress_next_message(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
              {
                suppress_next_message: converted,
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
          intent:: {
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
            slot:: {
              local block = self,
              new(map_block_key):: (
                {}
                + block.with_map_block_key(map_block_key)
              ),
              with_map_block_key(value):: (
                local converted = value;
                assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                {
                  map_block_key: converted,
                }
              ),
              with_shape(value):: (
                local converted = value;
                assert std.isString(converted) : '"shape" expected to be of type "string"';
                {
                  shape: converted,
                }
              ),
              value:: {
                local block = self,
                new():: (
                  {}
                ),
                with_interpreted_value(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                  {
                    interpreted_value: converted,
                  }
                ),
              },
              with_value(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value: value,
                }
              ),
              with_value_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value+: converted,
                }
              ),
            },
            with_slot(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot: value,
              }
            ),
            with_slot_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot+: converted,
              }
            ),
          },
          with_dialog_action(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action: value,
            }
          ),
          with_intent(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent: value,
            }
          ),
          with_dialog_action_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action+: converted,
            }
          ),
          with_intent_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent+: converted,
            }
          ),
        },
        response:: {
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
        with_next_step(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step: value,
          }
        ),
        with_response(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response: value,
          }
        ),
        with_next_step_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step+: converted,
          }
        ),
        with_response_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response+: converted,
          }
        ),
      },
      with_conditional_branch(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          conditional_branch: value,
        }
      ),
      with_default_branch(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_branch: value,
        }
      ),
      with_conditional_branch_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          conditional_branch+: converted,
        }
      ),
      with_default_branch_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_branch+: converted,
        }
      ),
    },
    failure_next_step:: {
      local block = self,
      new():: (
        {}
      ),
      with_session_attributes(value):: (
        local converted = value;
        assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
        {
          session_attributes: converted,
        }
      ),
      dialog_action:: {
        local block = self,
        new(type):: (
          {}
          + block.with_type(type)
        ),
        with_slot_to_elicit(value):: (
          local converted = value;
          assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
          {
            slot_to_elicit: converted,
          }
        ),
        with_suppress_next_message(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
          {
            suppress_next_message: converted,
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
      intent:: {
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
        slot:: {
          local block = self,
          new(map_block_key):: (
            {}
            + block.with_map_block_key(map_block_key)
          ),
          with_map_block_key(value):: (
            local converted = value;
            assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
            {
              map_block_key: converted,
            }
          ),
          with_shape(value):: (
            local converted = value;
            assert std.isString(converted) : '"shape" expected to be of type "string"';
            {
              shape: converted,
            }
          ),
          value:: {
            local block = self,
            new():: (
              {}
            ),
            with_interpreted_value(value):: (
              local converted = value;
              assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
              {
                interpreted_value: converted,
              }
            ),
          },
          with_value(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              value: value,
            }
          ),
          with_value_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              value+: converted,
            }
          ),
        },
        with_slot(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            slot: value,
          }
        ),
        with_slot_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            slot+: converted,
          }
        ),
      },
      with_dialog_action(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dialog_action: value,
        }
      ),
      with_intent(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          intent: value,
        }
      ),
      with_dialog_action_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dialog_action+: converted,
        }
      ),
      with_intent_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          intent+: converted,
        }
      ),
    },
    failure_response:: {
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
    with_code_hook(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_hook: value,
      }
    ),
    with_confirmation_conditional(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        confirmation_conditional: value,
      }
    ),
    with_confirmation_next_step(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        confirmation_next_step: value,
      }
    ),
    with_confirmation_response(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        confirmation_response: value,
      }
    ),
    with_declination_conditional(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        declination_conditional: value,
      }
    ),
    with_declination_next_step(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        declination_next_step: value,
      }
    ),
    with_declination_response(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        declination_response: value,
      }
    ),
    with_elicitation_code_hook(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        elicitation_code_hook: value,
      }
    ),
    with_failure_conditional(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        failure_conditional: value,
      }
    ),
    with_failure_next_step(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        failure_next_step: value,
      }
    ),
    with_failure_response(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        failure_response: value,
      }
    ),
    with_prompt_specification(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        prompt_specification: value,
      }
    ),
    with_code_hook_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_hook+: converted,
      }
    ),
    with_confirmation_conditional_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        confirmation_conditional+: converted,
      }
    ),
    with_confirmation_next_step_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        confirmation_next_step+: converted,
      }
    ),
    with_confirmation_response_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        confirmation_response+: converted,
      }
    ),
    with_declination_conditional_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        declination_conditional+: converted,
      }
    ),
    with_declination_next_step_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        declination_next_step+: converted,
      }
    ),
    with_declination_response_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        declination_response+: converted,
      }
    ),
    with_elicitation_code_hook_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        elicitation_code_hook+: converted,
      }
    ),
    with_failure_conditional_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        failure_conditional+: converted,
      }
    ),
    with_failure_next_step_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        failure_next_step+: converted,
      }
    ),
    with_failure_response_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        failure_response+: converted,
      }
    ),
    with_prompt_specification_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        prompt_specification+: converted,
      }
    ),
  },
  dialog_code_hook:: {
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
  },
  fulfillment_code_hook:: {
    local block = self,
    new(enabled):: (
      {}
      + block.with_enabled(enabled)
    ),
    with_active(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
      {
        active: converted,
      }
    ),
    with_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    fulfillment_updates_specification:: {
      local block = self,
      new(active):: (
        {}
        + block.with_active(active)
      ),
      with_active(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
        {
          active: converted,
        }
      ),
      with_timeout_in_seconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"timeout_in_seconds" expected to be of type "number"';
        {
          timeout_in_seconds: converted,
        }
      ),
      start_response:: {
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
        with_delay_in_seconds(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"delay_in_seconds" expected to be of type "number"';
          {
            delay_in_seconds: converted,
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
      update_response:: {
        local block = self,
        new(frequency_in_seconds):: (
          {}
          + block.with_frequency_in_seconds(frequency_in_seconds)
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
      with_start_response(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          start_response: value,
        }
      ),
      with_update_response(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          update_response: value,
        }
      ),
      with_start_response_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          start_response+: converted,
        }
      ),
      with_update_response_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          update_response+: converted,
        }
      ),
    },
    post_fulfillment_status_specification:: {
      local block = self,
      new():: (
        {}
      ),
      failure_conditional:: {
        local block = self,
        new(active):: (
          {}
          + block.with_active(active)
        ),
        with_active(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
          {
            active: converted,
          }
        ),
        conditional_branch:: {
          local block = self,
          new(name):: (
            {}
            + block.with_name(name)
          ),
          with_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"name" expected to be of type "string"';
            {
              name: converted,
            }
          ),
          condition:: {
            local block = self,
            new(expression_string):: (
              {}
              + block.with_expression_string(expression_string)
            ),
            with_expression_string(value):: (
              local converted = value;
              assert std.isString(converted) : '"expression_string" expected to be of type "string"';
              {
                expression_string: converted,
              }
            ),
          },
          next_step:: {
            local block = self,
            new():: (
              {}
            ),
            with_session_attributes(value):: (
              local converted = value;
              assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
              {
                session_attributes: converted,
              }
            ),
            dialog_action:: {
              local block = self,
              new(type):: (
                {}
                + block.with_type(type)
              ),
              with_slot_to_elicit(value):: (
                local converted = value;
                assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
                {
                  slot_to_elicit: converted,
                }
              ),
              with_suppress_next_message(value):: (
                local converted = value;
                assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
                {
                  suppress_next_message: converted,
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
            intent:: {
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
              slot:: {
                local block = self,
                new(map_block_key):: (
                  {}
                  + block.with_map_block_key(map_block_key)
                ),
                with_map_block_key(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                  {
                    map_block_key: converted,
                  }
                ),
                with_shape(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"shape" expected to be of type "string"';
                  {
                    shape: converted,
                  }
                ),
                value:: {
                  local block = self,
                  new():: (
                    {}
                  ),
                  with_interpreted_value(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                    {
                      interpreted_value: converted,
                    }
                  ),
                },
                with_value(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    value: value,
                  }
                ),
                with_value_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    value+: converted,
                  }
                ),
              },
              with_slot(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  slot: value,
                }
              ),
              with_slot_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  slot+: converted,
                }
              ),
            },
            with_dialog_action(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                dialog_action: value,
              }
            ),
            with_intent(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                intent: value,
              }
            ),
            with_dialog_action_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                dialog_action+: converted,
              }
            ),
            with_intent_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                intent+: converted,
              }
            ),
          },
          response:: {
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
          with_condition(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              condition: value,
            }
          ),
          with_next_step(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              next_step: value,
            }
          ),
          with_response(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              response: value,
            }
          ),
          with_condition_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              condition+: converted,
            }
          ),
          with_next_step_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              next_step+: converted,
            }
          ),
          with_response_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              response+: converted,
            }
          ),
        },
        default_branch:: {
          local block = self,
          new():: (
            {}
          ),
          next_step:: {
            local block = self,
            new():: (
              {}
            ),
            with_session_attributes(value):: (
              local converted = value;
              assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
              {
                session_attributes: converted,
              }
            ),
            dialog_action:: {
              local block = self,
              new(type):: (
                {}
                + block.with_type(type)
              ),
              with_slot_to_elicit(value):: (
                local converted = value;
                assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
                {
                  slot_to_elicit: converted,
                }
              ),
              with_suppress_next_message(value):: (
                local converted = value;
                assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
                {
                  suppress_next_message: converted,
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
            intent:: {
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
              slot:: {
                local block = self,
                new(map_block_key):: (
                  {}
                  + block.with_map_block_key(map_block_key)
                ),
                with_map_block_key(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                  {
                    map_block_key: converted,
                  }
                ),
                with_shape(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"shape" expected to be of type "string"';
                  {
                    shape: converted,
                  }
                ),
                value:: {
                  local block = self,
                  new():: (
                    {}
                  ),
                  with_interpreted_value(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                    {
                      interpreted_value: converted,
                    }
                  ),
                },
                with_value(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    value: value,
                  }
                ),
                with_value_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    value+: converted,
                  }
                ),
              },
              with_slot(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  slot: value,
                }
              ),
              with_slot_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  slot+: converted,
                }
              ),
            },
            with_dialog_action(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                dialog_action: value,
              }
            ),
            with_intent(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                intent: value,
              }
            ),
            with_dialog_action_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                dialog_action+: converted,
              }
            ),
            with_intent_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                intent+: converted,
              }
            ),
          },
          response:: {
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
          with_next_step(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              next_step: value,
            }
          ),
          with_response(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              response: value,
            }
          ),
          with_next_step_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              next_step+: converted,
            }
          ),
          with_response_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              response+: converted,
            }
          ),
        },
        with_conditional_branch(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            conditional_branch: value,
          }
        ),
        with_default_branch(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            default_branch: value,
          }
        ),
        with_conditional_branch_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            conditional_branch+: converted,
          }
        ),
        with_default_branch_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            default_branch+: converted,
          }
        ),
      },
      failure_next_step:: {
        local block = self,
        new():: (
          {}
        ),
        with_session_attributes(value):: (
          local converted = value;
          assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
          {
            session_attributes: converted,
          }
        ),
        dialog_action:: {
          local block = self,
          new(type):: (
            {}
            + block.with_type(type)
          ),
          with_slot_to_elicit(value):: (
            local converted = value;
            assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
            {
              slot_to_elicit: converted,
            }
          ),
          with_suppress_next_message(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
            {
              suppress_next_message: converted,
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
        intent:: {
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
          slot:: {
            local block = self,
            new(map_block_key):: (
              {}
              + block.with_map_block_key(map_block_key)
            ),
            with_map_block_key(value):: (
              local converted = value;
              assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
              {
                map_block_key: converted,
              }
            ),
            with_shape(value):: (
              local converted = value;
              assert std.isString(converted) : '"shape" expected to be of type "string"';
              {
                shape: converted,
              }
            ),
            value:: {
              local block = self,
              new():: (
                {}
              ),
              with_interpreted_value(value):: (
                local converted = value;
                assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                {
                  interpreted_value: converted,
                }
              ),
            },
            with_value(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                value: value,
              }
            ),
            with_value_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                value+: converted,
              }
            ),
          },
          with_slot(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              slot: value,
            }
          ),
          with_slot_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              slot+: converted,
            }
          ),
        },
        with_dialog_action(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            dialog_action: value,
          }
        ),
        with_intent(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            intent: value,
          }
        ),
        with_dialog_action_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            dialog_action+: converted,
          }
        ),
        with_intent_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            intent+: converted,
          }
        ),
      },
      failure_response:: {
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
      success_conditional:: {
        local block = self,
        new(active):: (
          {}
          + block.with_active(active)
        ),
        with_active(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
          {
            active: converted,
          }
        ),
        conditional_branch:: {
          local block = self,
          new(name):: (
            {}
            + block.with_name(name)
          ),
          with_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"name" expected to be of type "string"';
            {
              name: converted,
            }
          ),
          condition:: {
            local block = self,
            new(expression_string):: (
              {}
              + block.with_expression_string(expression_string)
            ),
            with_expression_string(value):: (
              local converted = value;
              assert std.isString(converted) : '"expression_string" expected to be of type "string"';
              {
                expression_string: converted,
              }
            ),
          },
          next_step:: {
            local block = self,
            new():: (
              {}
            ),
            with_session_attributes(value):: (
              local converted = value;
              assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
              {
                session_attributes: converted,
              }
            ),
            dialog_action:: {
              local block = self,
              new(type):: (
                {}
                + block.with_type(type)
              ),
              with_slot_to_elicit(value):: (
                local converted = value;
                assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
                {
                  slot_to_elicit: converted,
                }
              ),
              with_suppress_next_message(value):: (
                local converted = value;
                assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
                {
                  suppress_next_message: converted,
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
            intent:: {
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
              slot:: {
                local block = self,
                new(map_block_key):: (
                  {}
                  + block.with_map_block_key(map_block_key)
                ),
                with_map_block_key(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                  {
                    map_block_key: converted,
                  }
                ),
                with_shape(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"shape" expected to be of type "string"';
                  {
                    shape: converted,
                  }
                ),
                value:: {
                  local block = self,
                  new():: (
                    {}
                  ),
                  with_interpreted_value(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                    {
                      interpreted_value: converted,
                    }
                  ),
                },
                with_value(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    value: value,
                  }
                ),
                with_value_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    value+: converted,
                  }
                ),
              },
              with_slot(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  slot: value,
                }
              ),
              with_slot_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  slot+: converted,
                }
              ),
            },
            with_dialog_action(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                dialog_action: value,
              }
            ),
            with_intent(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                intent: value,
              }
            ),
            with_dialog_action_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                dialog_action+: converted,
              }
            ),
            with_intent_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                intent+: converted,
              }
            ),
          },
          response:: {
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
          with_condition(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              condition: value,
            }
          ),
          with_next_step(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              next_step: value,
            }
          ),
          with_response(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              response: value,
            }
          ),
          with_condition_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              condition+: converted,
            }
          ),
          with_next_step_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              next_step+: converted,
            }
          ),
          with_response_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              response+: converted,
            }
          ),
        },
        default_branch:: {
          local block = self,
          new():: (
            {}
          ),
          next_step:: {
            local block = self,
            new():: (
              {}
            ),
            with_session_attributes(value):: (
              local converted = value;
              assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
              {
                session_attributes: converted,
              }
            ),
            dialog_action:: {
              local block = self,
              new(type):: (
                {}
                + block.with_type(type)
              ),
              with_slot_to_elicit(value):: (
                local converted = value;
                assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
                {
                  slot_to_elicit: converted,
                }
              ),
              with_suppress_next_message(value):: (
                local converted = value;
                assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
                {
                  suppress_next_message: converted,
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
            intent:: {
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
              slot:: {
                local block = self,
                new(map_block_key):: (
                  {}
                  + block.with_map_block_key(map_block_key)
                ),
                with_map_block_key(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                  {
                    map_block_key: converted,
                  }
                ),
                with_shape(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"shape" expected to be of type "string"';
                  {
                    shape: converted,
                  }
                ),
                value:: {
                  local block = self,
                  new():: (
                    {}
                  ),
                  with_interpreted_value(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                    {
                      interpreted_value: converted,
                    }
                  ),
                },
                with_value(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    value: value,
                  }
                ),
                with_value_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    value+: converted,
                  }
                ),
              },
              with_slot(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  slot: value,
                }
              ),
              with_slot_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  slot+: converted,
                }
              ),
            },
            with_dialog_action(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                dialog_action: value,
              }
            ),
            with_intent(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                intent: value,
              }
            ),
            with_dialog_action_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                dialog_action+: converted,
              }
            ),
            with_intent_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                intent+: converted,
              }
            ),
          },
          response:: {
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
          with_next_step(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              next_step: value,
            }
          ),
          with_response(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              response: value,
            }
          ),
          with_next_step_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              next_step+: converted,
            }
          ),
          with_response_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              response+: converted,
            }
          ),
        },
        with_conditional_branch(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            conditional_branch: value,
          }
        ),
        with_default_branch(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            default_branch: value,
          }
        ),
        with_conditional_branch_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            conditional_branch+: converted,
          }
        ),
        with_default_branch_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            default_branch+: converted,
          }
        ),
      },
      success_next_step:: {
        local block = self,
        new():: (
          {}
        ),
        with_session_attributes(value):: (
          local converted = value;
          assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
          {
            session_attributes: converted,
          }
        ),
        dialog_action:: {
          local block = self,
          new(type):: (
            {}
            + block.with_type(type)
          ),
          with_slot_to_elicit(value):: (
            local converted = value;
            assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
            {
              slot_to_elicit: converted,
            }
          ),
          with_suppress_next_message(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
            {
              suppress_next_message: converted,
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
        intent:: {
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
          slot:: {
            local block = self,
            new(map_block_key):: (
              {}
              + block.with_map_block_key(map_block_key)
            ),
            with_map_block_key(value):: (
              local converted = value;
              assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
              {
                map_block_key: converted,
              }
            ),
            with_shape(value):: (
              local converted = value;
              assert std.isString(converted) : '"shape" expected to be of type "string"';
              {
                shape: converted,
              }
            ),
            value:: {
              local block = self,
              new():: (
                {}
              ),
              with_interpreted_value(value):: (
                local converted = value;
                assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                {
                  interpreted_value: converted,
                }
              ),
            },
            with_value(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                value: value,
              }
            ),
            with_value_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                value+: converted,
              }
            ),
          },
          with_slot(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              slot: value,
            }
          ),
          with_slot_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              slot+: converted,
            }
          ),
        },
        with_dialog_action(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            dialog_action: value,
          }
        ),
        with_intent(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            intent: value,
          }
        ),
        with_dialog_action_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            dialog_action+: converted,
          }
        ),
        with_intent_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            intent+: converted,
          }
        ),
      },
      success_response:: {
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
      timeout_conditional:: {
        local block = self,
        new(active):: (
          {}
          + block.with_active(active)
        ),
        with_active(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
          {
            active: converted,
          }
        ),
        conditional_branch:: {
          local block = self,
          new(name):: (
            {}
            + block.with_name(name)
          ),
          with_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"name" expected to be of type "string"';
            {
              name: converted,
            }
          ),
          condition:: {
            local block = self,
            new(expression_string):: (
              {}
              + block.with_expression_string(expression_string)
            ),
            with_expression_string(value):: (
              local converted = value;
              assert std.isString(converted) : '"expression_string" expected to be of type "string"';
              {
                expression_string: converted,
              }
            ),
          },
          next_step:: {
            local block = self,
            new():: (
              {}
            ),
            with_session_attributes(value):: (
              local converted = value;
              assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
              {
                session_attributes: converted,
              }
            ),
            dialog_action:: {
              local block = self,
              new(type):: (
                {}
                + block.with_type(type)
              ),
              with_slot_to_elicit(value):: (
                local converted = value;
                assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
                {
                  slot_to_elicit: converted,
                }
              ),
              with_suppress_next_message(value):: (
                local converted = value;
                assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
                {
                  suppress_next_message: converted,
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
            intent:: {
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
              slot:: {
                local block = self,
                new(map_block_key):: (
                  {}
                  + block.with_map_block_key(map_block_key)
                ),
                with_map_block_key(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                  {
                    map_block_key: converted,
                  }
                ),
                with_shape(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"shape" expected to be of type "string"';
                  {
                    shape: converted,
                  }
                ),
                value:: {
                  local block = self,
                  new():: (
                    {}
                  ),
                  with_interpreted_value(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                    {
                      interpreted_value: converted,
                    }
                  ),
                },
                with_value(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    value: value,
                  }
                ),
                with_value_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    value+: converted,
                  }
                ),
              },
              with_slot(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  slot: value,
                }
              ),
              with_slot_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  slot+: converted,
                }
              ),
            },
            with_dialog_action(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                dialog_action: value,
              }
            ),
            with_intent(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                intent: value,
              }
            ),
            with_dialog_action_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                dialog_action+: converted,
              }
            ),
            with_intent_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                intent+: converted,
              }
            ),
          },
          response:: {
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
          with_condition(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              condition: value,
            }
          ),
          with_next_step(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              next_step: value,
            }
          ),
          with_response(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              response: value,
            }
          ),
          with_condition_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              condition+: converted,
            }
          ),
          with_next_step_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              next_step+: converted,
            }
          ),
          with_response_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              response+: converted,
            }
          ),
        },
        default_branch:: {
          local block = self,
          new():: (
            {}
          ),
          next_step:: {
            local block = self,
            new():: (
              {}
            ),
            with_session_attributes(value):: (
              local converted = value;
              assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
              {
                session_attributes: converted,
              }
            ),
            dialog_action:: {
              local block = self,
              new(type):: (
                {}
                + block.with_type(type)
              ),
              with_slot_to_elicit(value):: (
                local converted = value;
                assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
                {
                  slot_to_elicit: converted,
                }
              ),
              with_suppress_next_message(value):: (
                local converted = value;
                assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
                {
                  suppress_next_message: converted,
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
            intent:: {
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
              slot:: {
                local block = self,
                new(map_block_key):: (
                  {}
                  + block.with_map_block_key(map_block_key)
                ),
                with_map_block_key(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                  {
                    map_block_key: converted,
                  }
                ),
                with_shape(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"shape" expected to be of type "string"';
                  {
                    shape: converted,
                  }
                ),
                value:: {
                  local block = self,
                  new():: (
                    {}
                  ),
                  with_interpreted_value(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                    {
                      interpreted_value: converted,
                    }
                  ),
                },
                with_value(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    value: value,
                  }
                ),
                with_value_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    value+: converted,
                  }
                ),
              },
              with_slot(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  slot: value,
                }
              ),
              with_slot_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  slot+: converted,
                }
              ),
            },
            with_dialog_action(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                dialog_action: value,
              }
            ),
            with_intent(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                intent: value,
              }
            ),
            with_dialog_action_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                dialog_action+: converted,
              }
            ),
            with_intent_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                intent+: converted,
              }
            ),
          },
          response:: {
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
          with_next_step(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              next_step: value,
            }
          ),
          with_response(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              response: value,
            }
          ),
          with_next_step_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              next_step+: converted,
            }
          ),
          with_response_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              response+: converted,
            }
          ),
        },
        with_conditional_branch(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            conditional_branch: value,
          }
        ),
        with_default_branch(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            default_branch: value,
          }
        ),
        with_conditional_branch_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            conditional_branch+: converted,
          }
        ),
        with_default_branch_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            default_branch+: converted,
          }
        ),
      },
      timeout_next_step:: {
        local block = self,
        new():: (
          {}
        ),
        with_session_attributes(value):: (
          local converted = value;
          assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
          {
            session_attributes: converted,
          }
        ),
        dialog_action:: {
          local block = self,
          new(type):: (
            {}
            + block.with_type(type)
          ),
          with_slot_to_elicit(value):: (
            local converted = value;
            assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
            {
              slot_to_elicit: converted,
            }
          ),
          with_suppress_next_message(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
            {
              suppress_next_message: converted,
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
        intent:: {
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
          slot:: {
            local block = self,
            new(map_block_key):: (
              {}
              + block.with_map_block_key(map_block_key)
            ),
            with_map_block_key(value):: (
              local converted = value;
              assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
              {
                map_block_key: converted,
              }
            ),
            with_shape(value):: (
              local converted = value;
              assert std.isString(converted) : '"shape" expected to be of type "string"';
              {
                shape: converted,
              }
            ),
            value:: {
              local block = self,
              new():: (
                {}
              ),
              with_interpreted_value(value):: (
                local converted = value;
                assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                {
                  interpreted_value: converted,
                }
              ),
            },
            with_value(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                value: value,
              }
            ),
            with_value_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                value+: converted,
              }
            ),
          },
          with_slot(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              slot: value,
            }
          ),
          with_slot_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              slot+: converted,
            }
          ),
        },
        with_dialog_action(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            dialog_action: value,
          }
        ),
        with_intent(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            intent: value,
          }
        ),
        with_dialog_action_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            dialog_action+: converted,
          }
        ),
        with_intent_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            intent+: converted,
          }
        ),
      },
      timeout_response:: {
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
      with_failure_conditional(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          failure_conditional: value,
        }
      ),
      with_failure_next_step(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          failure_next_step: value,
        }
      ),
      with_failure_response(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          failure_response: value,
        }
      ),
      with_success_conditional(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          success_conditional: value,
        }
      ),
      with_success_next_step(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          success_next_step: value,
        }
      ),
      with_success_response(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          success_response: value,
        }
      ),
      with_timeout_conditional(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timeout_conditional: value,
        }
      ),
      with_timeout_next_step(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timeout_next_step: value,
        }
      ),
      with_timeout_response(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timeout_response: value,
        }
      ),
      with_failure_conditional_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          failure_conditional+: converted,
        }
      ),
      with_failure_next_step_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          failure_next_step+: converted,
        }
      ),
      with_failure_response_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          failure_response+: converted,
        }
      ),
      with_success_conditional_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          success_conditional+: converted,
        }
      ),
      with_success_next_step_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          success_next_step+: converted,
        }
      ),
      with_success_response_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          success_response+: converted,
        }
      ),
      with_timeout_conditional_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timeout_conditional+: converted,
        }
      ),
      with_timeout_next_step_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timeout_next_step+: converted,
        }
      ),
      with_timeout_response_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timeout_response+: converted,
        }
      ),
    },
    with_fulfillment_updates_specification(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        fulfillment_updates_specification: value,
      }
    ),
    with_post_fulfillment_status_specification(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        post_fulfillment_status_specification: value,
      }
    ),
    with_fulfillment_updates_specification_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        fulfillment_updates_specification+: converted,
      }
    ),
    with_post_fulfillment_status_specification_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        post_fulfillment_status_specification+: converted,
      }
    ),
  },
  initial_response_setting:: {
    local block = self,
    new():: (
      {}
    ),
    code_hook:: {
      local block = self,
      new(active, enable_code_hook_invocation):: (
        {}
        + block.with_active(active)
        + block.with_enable_code_hook_invocation(enable_code_hook_invocation)
      ),
      with_active(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
        {
          active: converted,
        }
      ),
      with_enable_code_hook_invocation(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enable_code_hook_invocation" expected to be of type "bool"';
        {
          enable_code_hook_invocation: converted,
        }
      ),
      with_invocation_label(value):: (
        local converted = value;
        assert std.isString(converted) : '"invocation_label" expected to be of type "string"';
        {
          invocation_label: converted,
        }
      ),
      post_code_hook_specification:: {
        local block = self,
        new():: (
          {}
        ),
        failure_conditional:: {
          local block = self,
          new(active):: (
            {}
            + block.with_active(active)
          ),
          with_active(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
            {
              active: converted,
            }
          ),
          conditional_branch:: {
            local block = self,
            new(name):: (
              {}
              + block.with_name(name)
            ),
            with_name(value):: (
              local converted = value;
              assert std.isString(converted) : '"name" expected to be of type "string"';
              {
                name: converted,
              }
            ),
            condition:: {
              local block = self,
              new(expression_string):: (
                {}
                + block.with_expression_string(expression_string)
              ),
              with_expression_string(value):: (
                local converted = value;
                assert std.isString(converted) : '"expression_string" expected to be of type "string"';
                {
                  expression_string: converted,
                }
              ),
            },
            next_step:: {
              local block = self,
              new():: (
                {}
              ),
              with_session_attributes(value):: (
                local converted = value;
                assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
                {
                  session_attributes: converted,
                }
              ),
              dialog_action:: {
                local block = self,
                new(type):: (
                  {}
                  + block.with_type(type)
                ),
                with_slot_to_elicit(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
                  {
                    slot_to_elicit: converted,
                  }
                ),
                with_suppress_next_message(value):: (
                  local converted = value;
                  assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
                  {
                    suppress_next_message: converted,
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
              intent:: {
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
                slot:: {
                  local block = self,
                  new(map_block_key):: (
                    {}
                    + block.with_map_block_key(map_block_key)
                  ),
                  with_map_block_key(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                    {
                      map_block_key: converted,
                    }
                  ),
                  with_shape(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"shape" expected to be of type "string"';
                    {
                      shape: converted,
                    }
                  ),
                  value:: {
                    local block = self,
                    new():: (
                      {}
                    ),
                    with_interpreted_value(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                      {
                        interpreted_value: converted,
                      }
                    ),
                  },
                  with_value(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value: value,
                    }
                  ),
                  with_value_mixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value+: converted,
                    }
                  ),
                },
                with_slot(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot: value,
                  }
                ),
                with_slot_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot+: converted,
                  }
                ),
              },
              with_dialog_action(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action: value,
                }
              ),
              with_intent(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent: value,
                }
              ),
              with_dialog_action_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action+: converted,
                }
              ),
              with_intent_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent+: converted,
                }
              ),
            },
            response:: {
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
            with_condition(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                condition: value,
              }
            ),
            with_next_step(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step: value,
              }
            ),
            with_response(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response: value,
              }
            ),
            with_condition_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                condition+: converted,
              }
            ),
            with_next_step_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step+: converted,
              }
            ),
            with_response_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response+: converted,
              }
            ),
          },
          default_branch:: {
            local block = self,
            new():: (
              {}
            ),
            next_step:: {
              local block = self,
              new():: (
                {}
              ),
              with_session_attributes(value):: (
                local converted = value;
                assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
                {
                  session_attributes: converted,
                }
              ),
              dialog_action:: {
                local block = self,
                new(type):: (
                  {}
                  + block.with_type(type)
                ),
                with_slot_to_elicit(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
                  {
                    slot_to_elicit: converted,
                  }
                ),
                with_suppress_next_message(value):: (
                  local converted = value;
                  assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
                  {
                    suppress_next_message: converted,
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
              intent:: {
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
                slot:: {
                  local block = self,
                  new(map_block_key):: (
                    {}
                    + block.with_map_block_key(map_block_key)
                  ),
                  with_map_block_key(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                    {
                      map_block_key: converted,
                    }
                  ),
                  with_shape(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"shape" expected to be of type "string"';
                    {
                      shape: converted,
                    }
                  ),
                  value:: {
                    local block = self,
                    new():: (
                      {}
                    ),
                    with_interpreted_value(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                      {
                        interpreted_value: converted,
                      }
                    ),
                  },
                  with_value(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value: value,
                    }
                  ),
                  with_value_mixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value+: converted,
                    }
                  ),
                },
                with_slot(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot: value,
                  }
                ),
                with_slot_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot+: converted,
                  }
                ),
              },
              with_dialog_action(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action: value,
                }
              ),
              with_intent(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent: value,
                }
              ),
              with_dialog_action_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action+: converted,
                }
              ),
              with_intent_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent+: converted,
                }
              ),
            },
            response:: {
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
            with_next_step(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step: value,
              }
            ),
            with_response(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response: value,
              }
            ),
            with_next_step_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step+: converted,
              }
            ),
            with_response_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response+: converted,
              }
            ),
          },
          with_conditional_branch(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              conditional_branch: value,
            }
          ),
          with_default_branch(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              default_branch: value,
            }
          ),
          with_conditional_branch_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              conditional_branch+: converted,
            }
          ),
          with_default_branch_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              default_branch+: converted,
            }
          ),
        },
        failure_next_step:: {
          local block = self,
          new():: (
            {}
          ),
          with_session_attributes(value):: (
            local converted = value;
            assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
            {
              session_attributes: converted,
            }
          ),
          dialog_action:: {
            local block = self,
            new(type):: (
              {}
              + block.with_type(type)
            ),
            with_slot_to_elicit(value):: (
              local converted = value;
              assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
              {
                slot_to_elicit: converted,
              }
            ),
            with_suppress_next_message(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
              {
                suppress_next_message: converted,
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
          intent:: {
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
            slot:: {
              local block = self,
              new(map_block_key):: (
                {}
                + block.with_map_block_key(map_block_key)
              ),
              with_map_block_key(value):: (
                local converted = value;
                assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                {
                  map_block_key: converted,
                }
              ),
              with_shape(value):: (
                local converted = value;
                assert std.isString(converted) : '"shape" expected to be of type "string"';
                {
                  shape: converted,
                }
              ),
              value:: {
                local block = self,
                new():: (
                  {}
                ),
                with_interpreted_value(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                  {
                    interpreted_value: converted,
                  }
                ),
              },
              with_value(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value: value,
                }
              ),
              with_value_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value+: converted,
                }
              ),
            },
            with_slot(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot: value,
              }
            ),
            with_slot_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot+: converted,
              }
            ),
          },
          with_dialog_action(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action: value,
            }
          ),
          with_intent(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent: value,
            }
          ),
          with_dialog_action_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action+: converted,
            }
          ),
          with_intent_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent+: converted,
            }
          ),
        },
        failure_response:: {
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
        success_conditional:: {
          local block = self,
          new(active):: (
            {}
            + block.with_active(active)
          ),
          with_active(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
            {
              active: converted,
            }
          ),
          conditional_branch:: {
            local block = self,
            new(name):: (
              {}
              + block.with_name(name)
            ),
            with_name(value):: (
              local converted = value;
              assert std.isString(converted) : '"name" expected to be of type "string"';
              {
                name: converted,
              }
            ),
            condition:: {
              local block = self,
              new(expression_string):: (
                {}
                + block.with_expression_string(expression_string)
              ),
              with_expression_string(value):: (
                local converted = value;
                assert std.isString(converted) : '"expression_string" expected to be of type "string"';
                {
                  expression_string: converted,
                }
              ),
            },
            next_step:: {
              local block = self,
              new():: (
                {}
              ),
              with_session_attributes(value):: (
                local converted = value;
                assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
                {
                  session_attributes: converted,
                }
              ),
              dialog_action:: {
                local block = self,
                new(type):: (
                  {}
                  + block.with_type(type)
                ),
                with_slot_to_elicit(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
                  {
                    slot_to_elicit: converted,
                  }
                ),
                with_suppress_next_message(value):: (
                  local converted = value;
                  assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
                  {
                    suppress_next_message: converted,
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
              intent:: {
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
                slot:: {
                  local block = self,
                  new(map_block_key):: (
                    {}
                    + block.with_map_block_key(map_block_key)
                  ),
                  with_map_block_key(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                    {
                      map_block_key: converted,
                    }
                  ),
                  with_shape(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"shape" expected to be of type "string"';
                    {
                      shape: converted,
                    }
                  ),
                  value:: {
                    local block = self,
                    new():: (
                      {}
                    ),
                    with_interpreted_value(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                      {
                        interpreted_value: converted,
                      }
                    ),
                  },
                  with_value(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value: value,
                    }
                  ),
                  with_value_mixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value+: converted,
                    }
                  ),
                },
                with_slot(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot: value,
                  }
                ),
                with_slot_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot+: converted,
                  }
                ),
              },
              with_dialog_action(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action: value,
                }
              ),
              with_intent(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent: value,
                }
              ),
              with_dialog_action_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action+: converted,
                }
              ),
              with_intent_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent+: converted,
                }
              ),
            },
            response:: {
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
            with_condition(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                condition: value,
              }
            ),
            with_next_step(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step: value,
              }
            ),
            with_response(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response: value,
              }
            ),
            with_condition_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                condition+: converted,
              }
            ),
            with_next_step_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step+: converted,
              }
            ),
            with_response_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response+: converted,
              }
            ),
          },
          default_branch:: {
            local block = self,
            new():: (
              {}
            ),
            next_step:: {
              local block = self,
              new():: (
                {}
              ),
              with_session_attributes(value):: (
                local converted = value;
                assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
                {
                  session_attributes: converted,
                }
              ),
              dialog_action:: {
                local block = self,
                new(type):: (
                  {}
                  + block.with_type(type)
                ),
                with_slot_to_elicit(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
                  {
                    slot_to_elicit: converted,
                  }
                ),
                with_suppress_next_message(value):: (
                  local converted = value;
                  assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
                  {
                    suppress_next_message: converted,
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
              intent:: {
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
                slot:: {
                  local block = self,
                  new(map_block_key):: (
                    {}
                    + block.with_map_block_key(map_block_key)
                  ),
                  with_map_block_key(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                    {
                      map_block_key: converted,
                    }
                  ),
                  with_shape(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"shape" expected to be of type "string"';
                    {
                      shape: converted,
                    }
                  ),
                  value:: {
                    local block = self,
                    new():: (
                      {}
                    ),
                    with_interpreted_value(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                      {
                        interpreted_value: converted,
                      }
                    ),
                  },
                  with_value(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value: value,
                    }
                  ),
                  with_value_mixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value+: converted,
                    }
                  ),
                },
                with_slot(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot: value,
                  }
                ),
                with_slot_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot+: converted,
                  }
                ),
              },
              with_dialog_action(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action: value,
                }
              ),
              with_intent(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent: value,
                }
              ),
              with_dialog_action_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action+: converted,
                }
              ),
              with_intent_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent+: converted,
                }
              ),
            },
            response:: {
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
            with_next_step(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step: value,
              }
            ),
            with_response(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response: value,
              }
            ),
            with_next_step_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step+: converted,
              }
            ),
            with_response_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response+: converted,
              }
            ),
          },
          with_conditional_branch(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              conditional_branch: value,
            }
          ),
          with_default_branch(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              default_branch: value,
            }
          ),
          with_conditional_branch_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              conditional_branch+: converted,
            }
          ),
          with_default_branch_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              default_branch+: converted,
            }
          ),
        },
        success_next_step:: {
          local block = self,
          new():: (
            {}
          ),
          with_session_attributes(value):: (
            local converted = value;
            assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
            {
              session_attributes: converted,
            }
          ),
          dialog_action:: {
            local block = self,
            new(type):: (
              {}
              + block.with_type(type)
            ),
            with_slot_to_elicit(value):: (
              local converted = value;
              assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
              {
                slot_to_elicit: converted,
              }
            ),
            with_suppress_next_message(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
              {
                suppress_next_message: converted,
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
          intent:: {
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
            slot:: {
              local block = self,
              new(map_block_key):: (
                {}
                + block.with_map_block_key(map_block_key)
              ),
              with_map_block_key(value):: (
                local converted = value;
                assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                {
                  map_block_key: converted,
                }
              ),
              with_shape(value):: (
                local converted = value;
                assert std.isString(converted) : '"shape" expected to be of type "string"';
                {
                  shape: converted,
                }
              ),
              value:: {
                local block = self,
                new():: (
                  {}
                ),
                with_interpreted_value(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                  {
                    interpreted_value: converted,
                  }
                ),
              },
              with_value(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value: value,
                }
              ),
              with_value_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value+: converted,
                }
              ),
            },
            with_slot(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot: value,
              }
            ),
            with_slot_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot+: converted,
              }
            ),
          },
          with_dialog_action(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action: value,
            }
          ),
          with_intent(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent: value,
            }
          ),
          with_dialog_action_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action+: converted,
            }
          ),
          with_intent_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent+: converted,
            }
          ),
        },
        success_response:: {
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
        timeout_conditional:: {
          local block = self,
          new(active):: (
            {}
            + block.with_active(active)
          ),
          with_active(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
            {
              active: converted,
            }
          ),
          conditional_branch:: {
            local block = self,
            new(name):: (
              {}
              + block.with_name(name)
            ),
            with_name(value):: (
              local converted = value;
              assert std.isString(converted) : '"name" expected to be of type "string"';
              {
                name: converted,
              }
            ),
            condition:: {
              local block = self,
              new(expression_string):: (
                {}
                + block.with_expression_string(expression_string)
              ),
              with_expression_string(value):: (
                local converted = value;
                assert std.isString(converted) : '"expression_string" expected to be of type "string"';
                {
                  expression_string: converted,
                }
              ),
            },
            next_step:: {
              local block = self,
              new():: (
                {}
              ),
              with_session_attributes(value):: (
                local converted = value;
                assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
                {
                  session_attributes: converted,
                }
              ),
              dialog_action:: {
                local block = self,
                new(type):: (
                  {}
                  + block.with_type(type)
                ),
                with_slot_to_elicit(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
                  {
                    slot_to_elicit: converted,
                  }
                ),
                with_suppress_next_message(value):: (
                  local converted = value;
                  assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
                  {
                    suppress_next_message: converted,
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
              intent:: {
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
                slot:: {
                  local block = self,
                  new(map_block_key):: (
                    {}
                    + block.with_map_block_key(map_block_key)
                  ),
                  with_map_block_key(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                    {
                      map_block_key: converted,
                    }
                  ),
                  with_shape(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"shape" expected to be of type "string"';
                    {
                      shape: converted,
                    }
                  ),
                  value:: {
                    local block = self,
                    new():: (
                      {}
                    ),
                    with_interpreted_value(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                      {
                        interpreted_value: converted,
                      }
                    ),
                  },
                  with_value(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value: value,
                    }
                  ),
                  with_value_mixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value+: converted,
                    }
                  ),
                },
                with_slot(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot: value,
                  }
                ),
                with_slot_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot+: converted,
                  }
                ),
              },
              with_dialog_action(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action: value,
                }
              ),
              with_intent(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent: value,
                }
              ),
              with_dialog_action_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action+: converted,
                }
              ),
              with_intent_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent+: converted,
                }
              ),
            },
            response:: {
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
            with_condition(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                condition: value,
              }
            ),
            with_next_step(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step: value,
              }
            ),
            with_response(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response: value,
              }
            ),
            with_condition_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                condition+: converted,
              }
            ),
            with_next_step_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step+: converted,
              }
            ),
            with_response_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response+: converted,
              }
            ),
          },
          default_branch:: {
            local block = self,
            new():: (
              {}
            ),
            next_step:: {
              local block = self,
              new():: (
                {}
              ),
              with_session_attributes(value):: (
                local converted = value;
                assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
                {
                  session_attributes: converted,
                }
              ),
              dialog_action:: {
                local block = self,
                new(type):: (
                  {}
                  + block.with_type(type)
                ),
                with_slot_to_elicit(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
                  {
                    slot_to_elicit: converted,
                  }
                ),
                with_suppress_next_message(value):: (
                  local converted = value;
                  assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
                  {
                    suppress_next_message: converted,
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
              intent:: {
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
                slot:: {
                  local block = self,
                  new(map_block_key):: (
                    {}
                    + block.with_map_block_key(map_block_key)
                  ),
                  with_map_block_key(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                    {
                      map_block_key: converted,
                    }
                  ),
                  with_shape(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"shape" expected to be of type "string"';
                    {
                      shape: converted,
                    }
                  ),
                  value:: {
                    local block = self,
                    new():: (
                      {}
                    ),
                    with_interpreted_value(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                      {
                        interpreted_value: converted,
                      }
                    ),
                  },
                  with_value(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value: value,
                    }
                  ),
                  with_value_mixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value+: converted,
                    }
                  ),
                },
                with_slot(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot: value,
                  }
                ),
                with_slot_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot+: converted,
                  }
                ),
              },
              with_dialog_action(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action: value,
                }
              ),
              with_intent(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent: value,
                }
              ),
              with_dialog_action_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action+: converted,
                }
              ),
              with_intent_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent+: converted,
                }
              ),
            },
            response:: {
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
            with_next_step(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step: value,
              }
            ),
            with_response(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response: value,
              }
            ),
            with_next_step_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step+: converted,
              }
            ),
            with_response_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response+: converted,
              }
            ),
          },
          with_conditional_branch(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              conditional_branch: value,
            }
          ),
          with_default_branch(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              default_branch: value,
            }
          ),
          with_conditional_branch_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              conditional_branch+: converted,
            }
          ),
          with_default_branch_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              default_branch+: converted,
            }
          ),
        },
        timeout_next_step:: {
          local block = self,
          new():: (
            {}
          ),
          with_session_attributes(value):: (
            local converted = value;
            assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
            {
              session_attributes: converted,
            }
          ),
          dialog_action:: {
            local block = self,
            new(type):: (
              {}
              + block.with_type(type)
            ),
            with_slot_to_elicit(value):: (
              local converted = value;
              assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
              {
                slot_to_elicit: converted,
              }
            ),
            with_suppress_next_message(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
              {
                suppress_next_message: converted,
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
          intent:: {
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
            slot:: {
              local block = self,
              new(map_block_key):: (
                {}
                + block.with_map_block_key(map_block_key)
              ),
              with_map_block_key(value):: (
                local converted = value;
                assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                {
                  map_block_key: converted,
                }
              ),
              with_shape(value):: (
                local converted = value;
                assert std.isString(converted) : '"shape" expected to be of type "string"';
                {
                  shape: converted,
                }
              ),
              value:: {
                local block = self,
                new():: (
                  {}
                ),
                with_interpreted_value(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                  {
                    interpreted_value: converted,
                  }
                ),
              },
              with_value(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value: value,
                }
              ),
              with_value_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value+: converted,
                }
              ),
            },
            with_slot(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot: value,
              }
            ),
            with_slot_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot+: converted,
              }
            ),
          },
          with_dialog_action(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action: value,
            }
          ),
          with_intent(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent: value,
            }
          ),
          with_dialog_action_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action+: converted,
            }
          ),
          with_intent_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent+: converted,
            }
          ),
        },
        timeout_response:: {
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
        with_failure_conditional(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            failure_conditional: value,
          }
        ),
        with_failure_next_step(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            failure_next_step: value,
          }
        ),
        with_failure_response(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            failure_response: value,
          }
        ),
        with_success_conditional(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            success_conditional: value,
          }
        ),
        with_success_next_step(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            success_next_step: value,
          }
        ),
        with_success_response(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            success_response: value,
          }
        ),
        with_timeout_conditional(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            timeout_conditional: value,
          }
        ),
        with_timeout_next_step(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            timeout_next_step: value,
          }
        ),
        with_timeout_response(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            timeout_response: value,
          }
        ),
        with_failure_conditional_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            failure_conditional+: converted,
          }
        ),
        with_failure_next_step_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            failure_next_step+: converted,
          }
        ),
        with_failure_response_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            failure_response+: converted,
          }
        ),
        with_success_conditional_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            success_conditional+: converted,
          }
        ),
        with_success_next_step_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            success_next_step+: converted,
          }
        ),
        with_success_response_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            success_response+: converted,
          }
        ),
        with_timeout_conditional_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            timeout_conditional+: converted,
          }
        ),
        with_timeout_next_step_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            timeout_next_step+: converted,
          }
        ),
        with_timeout_response_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            timeout_response+: converted,
          }
        ),
      },
      with_post_code_hook_specification(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          post_code_hook_specification: value,
        }
      ),
      with_post_code_hook_specification_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          post_code_hook_specification+: converted,
        }
      ),
    },
    conditional:: {
      local block = self,
      new(active):: (
        {}
        + block.with_active(active)
      ),
      with_active(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
        {
          active: converted,
        }
      ),
      conditional_branch:: {
        local block = self,
        new(name):: (
          {}
          + block.with_name(name)
        ),
        with_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        condition:: {
          local block = self,
          new(expression_string):: (
            {}
            + block.with_expression_string(expression_string)
          ),
          with_expression_string(value):: (
            local converted = value;
            assert std.isString(converted) : '"expression_string" expected to be of type "string"';
            {
              expression_string: converted,
            }
          ),
        },
        next_step:: {
          local block = self,
          new():: (
            {}
          ),
          with_session_attributes(value):: (
            local converted = value;
            assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
            {
              session_attributes: converted,
            }
          ),
          dialog_action:: {
            local block = self,
            new(type):: (
              {}
              + block.with_type(type)
            ),
            with_slot_to_elicit(value):: (
              local converted = value;
              assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
              {
                slot_to_elicit: converted,
              }
            ),
            with_suppress_next_message(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
              {
                suppress_next_message: converted,
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
          intent:: {
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
            slot:: {
              local block = self,
              new(map_block_key):: (
                {}
                + block.with_map_block_key(map_block_key)
              ),
              with_map_block_key(value):: (
                local converted = value;
                assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                {
                  map_block_key: converted,
                }
              ),
              with_shape(value):: (
                local converted = value;
                assert std.isString(converted) : '"shape" expected to be of type "string"';
                {
                  shape: converted,
                }
              ),
              value:: {
                local block = self,
                new():: (
                  {}
                ),
                with_interpreted_value(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                  {
                    interpreted_value: converted,
                  }
                ),
              },
              with_value(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value: value,
                }
              ),
              with_value_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value+: converted,
                }
              ),
            },
            with_slot(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot: value,
              }
            ),
            with_slot_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot+: converted,
              }
            ),
          },
          with_dialog_action(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action: value,
            }
          ),
          with_intent(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent: value,
            }
          ),
          with_dialog_action_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action+: converted,
            }
          ),
          with_intent_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent+: converted,
            }
          ),
        },
        response:: {
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
        with_condition(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            condition: value,
          }
        ),
        with_next_step(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step: value,
          }
        ),
        with_response(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response: value,
          }
        ),
        with_condition_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            condition+: converted,
          }
        ),
        with_next_step_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step+: converted,
          }
        ),
        with_response_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response+: converted,
          }
        ),
      },
      default_branch:: {
        local block = self,
        new():: (
          {}
        ),
        next_step:: {
          local block = self,
          new():: (
            {}
          ),
          with_session_attributes(value):: (
            local converted = value;
            assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
            {
              session_attributes: converted,
            }
          ),
          dialog_action:: {
            local block = self,
            new(type):: (
              {}
              + block.with_type(type)
            ),
            with_slot_to_elicit(value):: (
              local converted = value;
              assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
              {
                slot_to_elicit: converted,
              }
            ),
            with_suppress_next_message(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
              {
                suppress_next_message: converted,
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
          intent:: {
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
            slot:: {
              local block = self,
              new(map_block_key):: (
                {}
                + block.with_map_block_key(map_block_key)
              ),
              with_map_block_key(value):: (
                local converted = value;
                assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                {
                  map_block_key: converted,
                }
              ),
              with_shape(value):: (
                local converted = value;
                assert std.isString(converted) : '"shape" expected to be of type "string"';
                {
                  shape: converted,
                }
              ),
              value:: {
                local block = self,
                new():: (
                  {}
                ),
                with_interpreted_value(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                  {
                    interpreted_value: converted,
                  }
                ),
              },
              with_value(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value: value,
                }
              ),
              with_value_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value+: converted,
                }
              ),
            },
            with_slot(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot: value,
              }
            ),
            with_slot_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot+: converted,
              }
            ),
          },
          with_dialog_action(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action: value,
            }
          ),
          with_intent(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent: value,
            }
          ),
          with_dialog_action_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action+: converted,
            }
          ),
          with_intent_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent+: converted,
            }
          ),
        },
        response:: {
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
        with_next_step(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step: value,
          }
        ),
        with_response(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response: value,
          }
        ),
        with_next_step_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step+: converted,
          }
        ),
        with_response_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response+: converted,
          }
        ),
      },
      with_conditional_branch(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          conditional_branch: value,
        }
      ),
      with_default_branch(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_branch: value,
        }
      ),
      with_conditional_branch_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          conditional_branch+: converted,
        }
      ),
      with_default_branch_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_branch+: converted,
        }
      ),
    },
    initial_response:: {
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
    next_step:: {
      local block = self,
      new():: (
        {}
      ),
      with_session_attributes(value):: (
        local converted = value;
        assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
        {
          session_attributes: converted,
        }
      ),
      dialog_action:: {
        local block = self,
        new(type):: (
          {}
          + block.with_type(type)
        ),
        with_slot_to_elicit(value):: (
          local converted = value;
          assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
          {
            slot_to_elicit: converted,
          }
        ),
        with_suppress_next_message(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
          {
            suppress_next_message: converted,
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
      intent:: {
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
        slot:: {
          local block = self,
          new(map_block_key):: (
            {}
            + block.with_map_block_key(map_block_key)
          ),
          with_map_block_key(value):: (
            local converted = value;
            assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
            {
              map_block_key: converted,
            }
          ),
          with_shape(value):: (
            local converted = value;
            assert std.isString(converted) : '"shape" expected to be of type "string"';
            {
              shape: converted,
            }
          ),
          value:: {
            local block = self,
            new():: (
              {}
            ),
            with_interpreted_value(value):: (
              local converted = value;
              assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
              {
                interpreted_value: converted,
              }
            ),
          },
          with_value(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              value: value,
            }
          ),
          with_value_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              value+: converted,
            }
          ),
        },
        with_slot(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            slot: value,
          }
        ),
        with_slot_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            slot+: converted,
          }
        ),
      },
      with_dialog_action(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dialog_action: value,
        }
      ),
      with_intent(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          intent: value,
        }
      ),
      with_dialog_action_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dialog_action+: converted,
        }
      ),
      with_intent_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          intent+: converted,
        }
      ),
    },
    with_code_hook(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_hook: value,
      }
    ),
    with_conditional(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        conditional: value,
      }
    ),
    with_initial_response(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        initial_response: value,
      }
    ),
    with_next_step(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        next_step: value,
      }
    ),
    with_code_hook_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_hook+: converted,
      }
    ),
    with_conditional_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        conditional+: converted,
      }
    ),
    with_initial_response_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        initial_response+: converted,
      }
    ),
    with_next_step_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        next_step+: converted,
      }
    ),
  },
  input_context:: {
    local block = self,
    new(name):: (
      {}
      + block.with_name(name)
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
  },
  kendra_configuration:: {
    local block = self,
    new(kendra_index):: (
      {}
      + block.with_kendra_index(kendra_index)
    ),
    with_kendra_index(value):: (
      local converted = value;
      assert std.isString(converted) : '"kendra_index" expected to be of type "string"';
      {
        kendra_index: converted,
      }
    ),
    with_query_filter_string(value):: (
      local converted = value;
      assert std.isString(converted) : '"query_filter_string" expected to be of type "string"';
      {
        query_filter_string: converted,
      }
    ),
    with_query_filter_string_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"query_filter_string_enabled" expected to be of type "bool"';
      {
        query_filter_string_enabled: converted,
      }
    ),
  },
  output_context:: {
    local block = self,
    new(name, time_to_live_in_seconds, turns_to_live):: (
      {}
      + block.with_name(name)
      + block.with_time_to_live_in_seconds(time_to_live_in_seconds)
      + block.with_turns_to_live(turns_to_live)
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_time_to_live_in_seconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"time_to_live_in_seconds" expected to be of type "number"';
      {
        time_to_live_in_seconds: converted,
      }
    ),
    with_turns_to_live(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"turns_to_live" expected to be of type "number"';
      {
        turns_to_live: converted,
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
  slot_priority:: {
    local block = self,
    new(priority, slot_id):: (
      {}
      + block.with_priority(priority)
      + block.with_slot_id(slot_id)
    ),
    with_priority(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"priority" expected to be of type "number"';
      {
        priority: converted,
      }
    ),
    with_slot_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"slot_id" expected to be of type "string"';
      {
        slot_id: converted,
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
  with_closing_setting(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      closing_setting: value,
    }
  ),
  with_confirmation_setting(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      confirmation_setting: value,
    }
  ),
  with_dialog_code_hook(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dialog_code_hook: value,
    }
  ),
  with_fulfillment_code_hook(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      fulfillment_code_hook: value,
    }
  ),
  with_initial_response_setting(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      initial_response_setting: value,
    }
  ),
  with_input_context(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_context: value,
    }
  ),
  with_kendra_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kendra_configuration: value,
    }
  ),
  with_output_context(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      output_context: value,
    }
  ),
  with_sample_utterance(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sample_utterance: value,
    }
  ),
  with_slot_priority(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      slot_priority: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_closing_setting_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      closing_setting+: converted,
    }
  ),
  with_confirmation_setting_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      confirmation_setting+: converted,
    }
  ),
  with_dialog_code_hook_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dialog_code_hook+: converted,
    }
  ),
  with_fulfillment_code_hook_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      fulfillment_code_hook+: converted,
    }
  ),
  with_initial_response_setting_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      initial_response_setting+: converted,
    }
  ),
  with_input_context_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_context+: converted,
    }
  ),
  with_kendra_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kendra_configuration+: converted,
    }
  ),
  with_output_context_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      output_context+: converted,
    }
  ),
  with_sample_utterance_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sample_utterance+: converted,
    }
  ),
  with_slot_priority_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      slot_priority+: converted,
    }
  ),
}
