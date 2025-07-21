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
  with_created_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_at" expected to be of type "string"';
    {
      created_at: converted,
    }
  ),
  with_customer_encryption_key_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_encryption_key_arn" expected to be of type "string"';
    {
      customer_encryption_key_arn: converted,
    }
  ),
  with_default_variant(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_variant" expected to be of type "string"';
    {
      default_variant: converted,
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
  with_updated_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"updated_at" expected to be of type "string"';
    {
      updated_at: converted,
    }
  ),
  with_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
  variant:: {
    local block = self,
    new(name, template_type):: (
      {}
      + block.with_name(name)
      + block.with_template_type(template_type)
    ),
    with_additional_model_request_fields(value):: (
      local converted = value;
      assert std.isString(converted) : '"additional_model_request_fields" expected to be of type "string"';
      {
        additional_model_request_fields: converted,
      }
    ),
    with_model_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"model_id" expected to be of type "string"';
      {
        model_id: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_template_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"template_type" expected to be of type "string"';
      {
        template_type: converted,
      }
    ),
    gen_ai_resource:: {
      local block = self,
      new():: (
        {}
      ),
      agent:: {
        local block = self,
        new(agent_identifier):: (
          {}
          + block.with_agent_identifier(agent_identifier)
        ),
        with_agent_identifier(value):: (
          local converted = value;
          assert std.isString(converted) : '"agent_identifier" expected to be of type "string"';
          {
            agent_identifier: converted,
          }
        ),
      },
      with_agent(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          agent: value,
        }
      ),
      with_agent_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          agent+: converted,
        }
      ),
    },
    inference_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      text:: {
        local block = self,
        new():: (
          {}
        ),
        with_max_tokens(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"max_tokens" expected to be of type "number"';
          {
            max_tokens: converted,
          }
        ),
        with_stop_sequences(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"stop_sequences" expected to be of type "list"';
          {
            stop_sequences: converted,
          }
        ),
        with_stop_sequences_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"stop_sequences" expected to be of type "list"';
          {
            stop_sequences+: converted,
          }
        ),
        with_temperature(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"temperature" expected to be of type "number"';
          {
            temperature: converted,
          }
        ),
        with_top_p(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"top_p" expected to be of type "number"';
          {
            top_p: converted,
          }
        ),
      },
      with_text(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          text: value,
        }
      ),
      with_text_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          text+: converted,
        }
      ),
    },
    metadata:: {
      local block = self,
      new(key, value):: (
        {}
        + block.with_key(key)
        + block.with_value(value)
      ),
      with_key(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
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
    template_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      chat:: {
        local block = self,
        new():: (
          {}
        ),
        input_variable:: {
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
        message:: {
          local block = self,
          new(role):: (
            {}
            + block.with_role(role)
          ),
          with_role(value):: (
            local converted = value;
            assert std.isString(converted) : '"role" expected to be of type "string"';
            {
              role: converted,
            }
          ),
          content:: {
            local block = self,
            new():: (
              {}
            ),
            with_text(value):: (
              local converted = value;
              assert std.isString(converted) : '"text" expected to be of type "string"';
              {
                text: converted,
              }
            ),
            cache_point:: {
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
            with_cache_point(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                cache_point: value,
              }
            ),
            with_cache_point_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                cache_point+: converted,
              }
            ),
          },
          with_content(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              content: value,
            }
          ),
          with_content_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              content+: converted,
            }
          ),
        },
        system:: {
          local block = self,
          new():: (
            {}
          ),
          with_text(value):: (
            local converted = value;
            assert std.isString(converted) : '"text" expected to be of type "string"';
            {
              text: converted,
            }
          ),
          cache_point:: {
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
          with_cache_point(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              cache_point: value,
            }
          ),
          with_cache_point_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              cache_point+: converted,
            }
          ),
        },
        tool_configuration:: {
          local block = self,
          new():: (
            {}
          ),
          tool:: {
            local block = self,
            new():: (
              {}
            ),
            cache_point:: {
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
            tool_spec:: {
              local block = self,
              new(name):: (
                {}
                + block.with_name(name)
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
              input_schema:: {
                local block = self,
                new():: (
                  {}
                ),
                with_json(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"json" expected to be of type "string"';
                  {
                    json: converted,
                  }
                ),
              },
              with_input_schema(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  input_schema: value,
                }
              ),
              with_input_schema_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  input_schema+: converted,
                }
              ),
            },
            with_cache_point(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                cache_point: value,
              }
            ),
            with_tool_spec(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                tool_spec: value,
              }
            ),
            with_cache_point_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                cache_point+: converted,
              }
            ),
            with_tool_spec_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                tool_spec+: converted,
              }
            ),
          },
          tool_choice:: {
            local block = self,
            new():: (
              {}
            ),
            any:: {
              local block = self,
              new():: (
                {}
              ),
            },
            auto:: {
              local block = self,
              new():: (
                {}
              ),
            },
            tool:: {
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
            with_any(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                any: value,
              }
            ),
            with_auto(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                auto: value,
              }
            ),
            with_tool(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                tool: value,
              }
            ),
            with_any_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                any+: converted,
              }
            ),
            with_auto_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                auto+: converted,
              }
            ),
            with_tool_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                tool+: converted,
              }
            ),
          },
          with_tool(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              tool: value,
            }
          ),
          with_tool_choice(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              tool_choice: value,
            }
          ),
          with_tool_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              tool+: converted,
            }
          ),
          with_tool_choice_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              tool_choice+: converted,
            }
          ),
        },
        with_input_variable(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            input_variable: value,
          }
        ),
        with_message(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            message: value,
          }
        ),
        with_system(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            system: value,
          }
        ),
        with_tool_configuration(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            tool_configuration: value,
          }
        ),
        with_input_variable_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            input_variable+: converted,
          }
        ),
        with_message_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            message+: converted,
          }
        ),
        with_system_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            system+: converted,
          }
        ),
        with_tool_configuration_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            tool_configuration+: converted,
          }
        ),
      },
      text:: {
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
        cache_point:: {
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
        input_variable:: {
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
        with_cache_point(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            cache_point: value,
          }
        ),
        with_input_variable(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            input_variable: value,
          }
        ),
        with_cache_point_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            cache_point+: converted,
          }
        ),
        with_input_variable_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            input_variable+: converted,
          }
        ),
      },
      with_chat(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          chat: value,
        }
      ),
      with_text(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          text: value,
        }
      ),
      with_chat_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          chat+: converted,
        }
      ),
      with_text_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          text+: converted,
        }
      ),
    },
    with_gen_ai_resource(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        gen_ai_resource: value,
      }
    ),
    with_inference_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        inference_configuration: value,
      }
    ),
    with_metadata(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        metadata: value,
      }
    ),
    with_template_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        template_configuration: value,
      }
    ),
    with_gen_ai_resource_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        gen_ai_resource+: converted,
      }
    ),
    with_inference_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        inference_configuration+: converted,
      }
    ),
    with_metadata_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        metadata+: converted,
      }
    ),
    with_template_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        template_configuration+: converted,
      }
    ),
  },
  with_variant(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      variant: value,
    }
  ),
  with_variant_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      variant+: converted,
    }
  ),
}
