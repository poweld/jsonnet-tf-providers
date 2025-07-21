{
  local block = self,
  new(name, role_arn):: (
    {}
    + block.with_name(name)
    + block.with_role_arn(role_arn)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_execution_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"execution_mode" expected to be of type "string"';
    {
      execution_mode: converted,
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
  with_pipeline_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"pipeline_type" expected to be of type "string"';
    {
      pipeline_type: converted,
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
  with_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
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
  with_trigger_all(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"trigger_all" expected to be of type "list"';
    {
      trigger_all: converted,
    }
  ),
  with_trigger_all_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"trigger_all" expected to be of type "list"';
    {
      trigger_all+: converted,
    }
  ),
  artifact_store:: {
    local block = self,
    new(location, type):: (
      {}
      + block.with_location(location)
      + block.with_type(type)
    ),
    with_location(value):: (
      local converted = value;
      assert std.isString(converted) : '"location" expected to be of type "string"';
      {
        location: converted,
      }
    ),
    with_region(value):: (
      local converted = value;
      assert std.isString(converted) : '"region" expected to be of type "string"';
      {
        region: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    encryption_key:: {
      local block = self,
      new(id, type):: (
        {}
        + block.with_id(id)
        + block.with_type(type)
      ),
      with_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"id" expected to be of type "string"';
        {
          id: converted,
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
    with_encryption_key(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        encryption_key: value,
      }
    ),
    with_encryption_key_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        encryption_key+: converted,
      }
    ),
  },
  stage:: {
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
    action:: {
      local block = self,
      new(category, name, owner, provider, version):: (
        {}
        + block.with_category(category)
        + block.with_name(name)
        + block.with_owner(owner)
        + block.with_provider(provider)
        + block.with_version(version)
      ),
      with_category(value):: (
        local converted = value;
        assert std.isString(converted) : '"category" expected to be of type "string"';
        {
          category: converted,
        }
      ),
      with_configuration(value):: (
        local converted = value;
        assert std.isObject(converted) : '"configuration" expected to be of type "map"';
        {
          configuration: converted,
        }
      ),
      with_input_artifacts(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"input_artifacts" expected to be of type "list"';
        {
          input_artifacts: converted,
        }
      ),
      with_input_artifacts_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"input_artifacts" expected to be of type "list"';
        {
          input_artifacts+: converted,
        }
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_namespace(value):: (
        local converted = value;
        assert std.isString(converted) : '"namespace" expected to be of type "string"';
        {
          namespace: converted,
        }
      ),
      with_output_artifacts(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"output_artifacts" expected to be of type "list"';
        {
          output_artifacts: converted,
        }
      ),
      with_output_artifacts_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"output_artifacts" expected to be of type "list"';
        {
          output_artifacts+: converted,
        }
      ),
      with_owner(value):: (
        local converted = value;
        assert std.isString(converted) : '"owner" expected to be of type "string"';
        {
          owner: converted,
        }
      ),
      with_provider(value):: (
        local converted = value;
        assert std.isString(converted) : '"provider" expected to be of type "string"';
        {
          provider: converted,
        }
      ),
      with_region(value):: (
        local converted = value;
        assert std.isString(converted) : '"region" expected to be of type "string"';
        {
          region: converted,
        }
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      with_run_order(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"run_order" expected to be of type "number"';
        {
          run_order: converted,
        }
      ),
      with_timeout_in_minutes(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"timeout_in_minutes" expected to be of type "number"';
        {
          timeout_in_minutes: converted,
        }
      ),
      with_version(value):: (
        local converted = value;
        assert std.isString(converted) : '"version" expected to be of type "string"';
        {
          version: converted,
        }
      ),
    },
    before_entry:: {
      local block = self,
      new():: (
        {}
      ),
      condition:: {
        local block = self,
        new():: (
          {}
        ),
        with_result(value):: (
          local converted = value;
          assert std.isString(converted) : '"result" expected to be of type "string"';
          {
            result: converted,
          }
        ),
        rule:: {
          local block = self,
          new(name):: (
            {}
            + block.with_name(name)
          ),
          with_commands(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"commands" expected to be of type "list"';
            {
              commands: converted,
            }
          ),
          with_commands_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"commands" expected to be of type "list"';
            {
              commands+: converted,
            }
          ),
          with_configuration(value):: (
            local converted = value;
            assert std.isObject(converted) : '"configuration" expected to be of type "map"';
            {
              configuration: converted,
            }
          ),
          with_input_artifacts(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"input_artifacts" expected to be of type "list"';
            {
              input_artifacts: converted,
            }
          ),
          with_input_artifacts_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"input_artifacts" expected to be of type "list"';
            {
              input_artifacts+: converted,
            }
          ),
          with_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"name" expected to be of type "string"';
            {
              name: converted,
            }
          ),
          with_region(value):: (
            local converted = value;
            assert std.isString(converted) : '"region" expected to be of type "string"';
            {
              region: converted,
            }
          ),
          with_role_arn(value):: (
            local converted = value;
            assert std.isString(converted) : '"role_arn" expected to be of type "string"';
            {
              role_arn: converted,
            }
          ),
          with_timeout_in_minutes(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"timeout_in_minutes" expected to be of type "number"';
            {
              timeout_in_minutes: converted,
            }
          ),
          rule_type_id:: {
            local block = self,
            new(category, provider):: (
              {}
              + block.with_category(category)
              + block.with_provider(provider)
            ),
            with_category(value):: (
              local converted = value;
              assert std.isString(converted) : '"category" expected to be of type "string"';
              {
                category: converted,
              }
            ),
            with_owner(value):: (
              local converted = value;
              assert std.isString(converted) : '"owner" expected to be of type "string"';
              {
                owner: converted,
              }
            ),
            with_provider(value):: (
              local converted = value;
              assert std.isString(converted) : '"provider" expected to be of type "string"';
              {
                provider: converted,
              }
            ),
            with_version(value):: (
              local converted = value;
              assert std.isString(converted) : '"version" expected to be of type "string"';
              {
                version: converted,
              }
            ),
          },
          with_rule_type_id(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              rule_type_id: value,
            }
          ),
          with_rule_type_id_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              rule_type_id+: converted,
            }
          ),
        },
        with_rule(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            rule: value,
          }
        ),
        with_rule_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            rule+: converted,
          }
        ),
      },
      with_condition(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          condition: value,
        }
      ),
      with_condition_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          condition+: converted,
        }
      ),
    },
    on_failure:: {
      local block = self,
      new():: (
        {}
      ),
      with_result(value):: (
        local converted = value;
        assert std.isString(converted) : '"result" expected to be of type "string"';
        {
          result: converted,
        }
      ),
      condition:: {
        local block = self,
        new():: (
          {}
        ),
        with_result(value):: (
          local converted = value;
          assert std.isString(converted) : '"result" expected to be of type "string"';
          {
            result: converted,
          }
        ),
        rule:: {
          local block = self,
          new(name):: (
            {}
            + block.with_name(name)
          ),
          with_commands(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"commands" expected to be of type "list"';
            {
              commands: converted,
            }
          ),
          with_commands_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"commands" expected to be of type "list"';
            {
              commands+: converted,
            }
          ),
          with_configuration(value):: (
            local converted = value;
            assert std.isObject(converted) : '"configuration" expected to be of type "map"';
            {
              configuration: converted,
            }
          ),
          with_input_artifacts(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"input_artifacts" expected to be of type "list"';
            {
              input_artifacts: converted,
            }
          ),
          with_input_artifacts_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"input_artifacts" expected to be of type "list"';
            {
              input_artifacts+: converted,
            }
          ),
          with_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"name" expected to be of type "string"';
            {
              name: converted,
            }
          ),
          with_region(value):: (
            local converted = value;
            assert std.isString(converted) : '"region" expected to be of type "string"';
            {
              region: converted,
            }
          ),
          with_role_arn(value):: (
            local converted = value;
            assert std.isString(converted) : '"role_arn" expected to be of type "string"';
            {
              role_arn: converted,
            }
          ),
          with_timeout_in_minutes(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"timeout_in_minutes" expected to be of type "number"';
            {
              timeout_in_minutes: converted,
            }
          ),
          rule_type_id:: {
            local block = self,
            new(category, provider):: (
              {}
              + block.with_category(category)
              + block.with_provider(provider)
            ),
            with_category(value):: (
              local converted = value;
              assert std.isString(converted) : '"category" expected to be of type "string"';
              {
                category: converted,
              }
            ),
            with_owner(value):: (
              local converted = value;
              assert std.isString(converted) : '"owner" expected to be of type "string"';
              {
                owner: converted,
              }
            ),
            with_provider(value):: (
              local converted = value;
              assert std.isString(converted) : '"provider" expected to be of type "string"';
              {
                provider: converted,
              }
            ),
            with_version(value):: (
              local converted = value;
              assert std.isString(converted) : '"version" expected to be of type "string"';
              {
                version: converted,
              }
            ),
          },
          with_rule_type_id(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              rule_type_id: value,
            }
          ),
          with_rule_type_id_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              rule_type_id+: converted,
            }
          ),
        },
        with_rule(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            rule: value,
          }
        ),
        with_rule_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            rule+: converted,
          }
        ),
      },
      retry_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        with_retry_mode(value):: (
          local converted = value;
          assert std.isString(converted) : '"retry_mode" expected to be of type "string"';
          {
            retry_mode: converted,
          }
        ),
      },
      with_condition(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          condition: value,
        }
      ),
      with_retry_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          retry_configuration: value,
        }
      ),
      with_condition_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          condition+: converted,
        }
      ),
      with_retry_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          retry_configuration+: converted,
        }
      ),
    },
    on_success:: {
      local block = self,
      new():: (
        {}
      ),
      condition:: {
        local block = self,
        new():: (
          {}
        ),
        with_result(value):: (
          local converted = value;
          assert std.isString(converted) : '"result" expected to be of type "string"';
          {
            result: converted,
          }
        ),
        rule:: {
          local block = self,
          new(name):: (
            {}
            + block.with_name(name)
          ),
          with_commands(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"commands" expected to be of type "list"';
            {
              commands: converted,
            }
          ),
          with_commands_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"commands" expected to be of type "list"';
            {
              commands+: converted,
            }
          ),
          with_configuration(value):: (
            local converted = value;
            assert std.isObject(converted) : '"configuration" expected to be of type "map"';
            {
              configuration: converted,
            }
          ),
          with_input_artifacts(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"input_artifacts" expected to be of type "list"';
            {
              input_artifacts: converted,
            }
          ),
          with_input_artifacts_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"input_artifacts" expected to be of type "list"';
            {
              input_artifacts+: converted,
            }
          ),
          with_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"name" expected to be of type "string"';
            {
              name: converted,
            }
          ),
          with_region(value):: (
            local converted = value;
            assert std.isString(converted) : '"region" expected to be of type "string"';
            {
              region: converted,
            }
          ),
          with_role_arn(value):: (
            local converted = value;
            assert std.isString(converted) : '"role_arn" expected to be of type "string"';
            {
              role_arn: converted,
            }
          ),
          with_timeout_in_minutes(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"timeout_in_minutes" expected to be of type "number"';
            {
              timeout_in_minutes: converted,
            }
          ),
          rule_type_id:: {
            local block = self,
            new(category, provider):: (
              {}
              + block.with_category(category)
              + block.with_provider(provider)
            ),
            with_category(value):: (
              local converted = value;
              assert std.isString(converted) : '"category" expected to be of type "string"';
              {
                category: converted,
              }
            ),
            with_owner(value):: (
              local converted = value;
              assert std.isString(converted) : '"owner" expected to be of type "string"';
              {
                owner: converted,
              }
            ),
            with_provider(value):: (
              local converted = value;
              assert std.isString(converted) : '"provider" expected to be of type "string"';
              {
                provider: converted,
              }
            ),
            with_version(value):: (
              local converted = value;
              assert std.isString(converted) : '"version" expected to be of type "string"';
              {
                version: converted,
              }
            ),
          },
          with_rule_type_id(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              rule_type_id: value,
            }
          ),
          with_rule_type_id_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              rule_type_id+: converted,
            }
          ),
        },
        with_rule(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            rule: value,
          }
        ),
        with_rule_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            rule+: converted,
          }
        ),
      },
      with_condition(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          condition: value,
        }
      ),
      with_condition_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          condition+: converted,
        }
      ),
    },
    with_action(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        action: value,
      }
    ),
    with_before_entry(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        before_entry: value,
      }
    ),
    with_on_failure(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        on_failure: value,
      }
    ),
    with_on_success(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        on_success: value,
      }
    ),
    with_action_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        action+: converted,
      }
    ),
    with_before_entry_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        before_entry+: converted,
      }
    ),
    with_on_failure_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        on_failure+: converted,
      }
    ),
    with_on_success_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        on_success+: converted,
      }
    ),
  },
  trigger:: {
    local block = self,
    new(provider_type):: (
      {}
      + block.with_provider_type(provider_type)
    ),
    with_provider_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"provider_type" expected to be of type "string"';
      {
        provider_type: converted,
      }
    ),
    git_configuration:: {
      local block = self,
      new(source_action_name):: (
        {}
        + block.with_source_action_name(source_action_name)
      ),
      with_source_action_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_action_name" expected to be of type "string"';
        {
          source_action_name: converted,
        }
      ),
      pull_request:: {
        local block = self,
        new():: (
          {}
        ),
        with_events(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"events" expected to be of type "list"';
          {
            events: converted,
          }
        ),
        with_events_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"events" expected to be of type "list"';
          {
            events+: converted,
          }
        ),
        branches:: {
          local block = self,
          new():: (
            {}
          ),
          with_excludes(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"excludes" expected to be of type "list"';
            {
              excludes: converted,
            }
          ),
          with_excludes_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"excludes" expected to be of type "list"';
            {
              excludes+: converted,
            }
          ),
          with_includes(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"includes" expected to be of type "list"';
            {
              includes: converted,
            }
          ),
          with_includes_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"includes" expected to be of type "list"';
            {
              includes+: converted,
            }
          ),
        },
        file_paths:: {
          local block = self,
          new():: (
            {}
          ),
          with_excludes(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"excludes" expected to be of type "list"';
            {
              excludes: converted,
            }
          ),
          with_excludes_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"excludes" expected to be of type "list"';
            {
              excludes+: converted,
            }
          ),
          with_includes(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"includes" expected to be of type "list"';
            {
              includes: converted,
            }
          ),
          with_includes_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"includes" expected to be of type "list"';
            {
              includes+: converted,
            }
          ),
        },
        with_branches(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            branches: value,
          }
        ),
        with_file_paths(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            file_paths: value,
          }
        ),
        with_branches_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            branches+: converted,
          }
        ),
        with_file_paths_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            file_paths+: converted,
          }
        ),
      },
      push:: {
        local block = self,
        new():: (
          {}
        ),
        branches:: {
          local block = self,
          new():: (
            {}
          ),
          with_excludes(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"excludes" expected to be of type "list"';
            {
              excludes: converted,
            }
          ),
          with_excludes_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"excludes" expected to be of type "list"';
            {
              excludes+: converted,
            }
          ),
          with_includes(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"includes" expected to be of type "list"';
            {
              includes: converted,
            }
          ),
          with_includes_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"includes" expected to be of type "list"';
            {
              includes+: converted,
            }
          ),
        },
        file_paths:: {
          local block = self,
          new():: (
            {}
          ),
          with_excludes(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"excludes" expected to be of type "list"';
            {
              excludes: converted,
            }
          ),
          with_excludes_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"excludes" expected to be of type "list"';
            {
              excludes+: converted,
            }
          ),
          with_includes(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"includes" expected to be of type "list"';
            {
              includes: converted,
            }
          ),
          with_includes_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"includes" expected to be of type "list"';
            {
              includes+: converted,
            }
          ),
        },
        tags:: {
          local block = self,
          new():: (
            {}
          ),
          with_excludes(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"excludes" expected to be of type "list"';
            {
              excludes: converted,
            }
          ),
          with_excludes_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"excludes" expected to be of type "list"';
            {
              excludes+: converted,
            }
          ),
          with_includes(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"includes" expected to be of type "list"';
            {
              includes: converted,
            }
          ),
          with_includes_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"includes" expected to be of type "list"';
            {
              includes+: converted,
            }
          ),
        },
        with_branches(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            branches: value,
          }
        ),
        with_file_paths(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            file_paths: value,
          }
        ),
        with_tags(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            tags: value,
          }
        ),
        with_branches_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            branches+: converted,
          }
        ),
        with_file_paths_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            file_paths+: converted,
          }
        ),
        with_tags_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            tags+: converted,
          }
        ),
      },
      with_pull_request(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          pull_request: value,
        }
      ),
      with_push(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          push: value,
        }
      ),
      with_pull_request_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          pull_request+: converted,
        }
      ),
      with_push_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          push+: converted,
        }
      ),
    },
    with_git_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        git_configuration: value,
      }
    ),
    with_git_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        git_configuration+: converted,
      }
    ),
  },
  variable:: {
    local block = self,
    new(name):: (
      {}
      + block.with_name(name)
    ),
    with_default_value(value):: (
      local converted = value;
      assert std.isString(converted) : '"default_value" expected to be of type "string"';
      {
        default_value: converted,
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
  },
  with_artifact_store(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      artifact_store: value,
    }
  ),
  with_stage(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      stage: value,
    }
  ),
  with_trigger(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      trigger: value,
    }
  ),
  with_variable(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      variable: value,
    }
  ),
  with_artifact_store_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      artifact_store+: converted,
    }
  ),
  with_stage_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      stage+: converted,
    }
  ),
  with_trigger_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      trigger+: converted,
    }
  ),
  with_variable_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      variable+: converted,
    }
  ),
}
