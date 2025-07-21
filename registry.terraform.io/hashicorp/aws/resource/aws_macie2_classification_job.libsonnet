{
  local block = self,
  new(job_type):: (
    {}
    + block.with_job_type(job_type)
  ),
  with_created_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_at" expected to be of type "string"';
    {
      created_at: converted,
    }
  ),
  with_custom_data_identifier_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"custom_data_identifier_ids" expected to be of type "list"';
    {
      custom_data_identifier_ids: converted,
    }
  ),
  with_custom_data_identifier_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"custom_data_identifier_ids" expected to be of type "list"';
    {
      custom_data_identifier_ids+: converted,
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
  with_initial_run(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"initial_run" expected to be of type "bool"';
    {
      initial_run: converted,
    }
  ),
  with_job_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"job_arn" expected to be of type "string"';
    {
      job_arn: converted,
    }
  ),
  with_job_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"job_id" expected to be of type "string"';
    {
      job_id: converted,
    }
  ),
  with_job_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"job_status" expected to be of type "string"';
    {
      job_status: converted,
    }
  ),
  with_job_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"job_type" expected to be of type "string"';
    {
      job_type: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_name_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
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
  with_sampling_percentage(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"sampling_percentage" expected to be of type "number"';
    {
      sampling_percentage: converted,
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
  with_user_paused_details(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"user_paused_details" expected to be of type "list"';
    {
      user_paused_details: converted,
    }
  ),
  with_user_paused_details_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"user_paused_details" expected to be of type "list"';
    {
      user_paused_details+: converted,
    }
  ),
  s3_job_definition:: {
    local block = self,
    new():: (
      {}
    ),
    bucket_criteria:: {
      local block = self,
      new():: (
        {}
      ),
      excludes:: {
        local block = self,
        new():: (
          {}
        ),
        and:: {
          local block = self,
          new():: (
            {}
          ),
          simple_criterion:: {
            local block = self,
            new():: (
              {}
            ),
            with_comparator(value):: (
              local converted = value;
              assert std.isString(converted) : '"comparator" expected to be of type "string"';
              {
                comparator: converted,
              }
            ),
            with_key(value):: (
              local converted = value;
              assert std.isString(converted) : '"key" expected to be of type "string"';
              {
                key: converted,
              }
            ),
            with_values(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"values" expected to be of type "list"';
              {
                values: converted,
              }
            ),
            with_values_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"values" expected to be of type "list"';
              {
                values+: converted,
              }
            ),
          },
          tag_criterion:: {
            local block = self,
            new():: (
              {}
            ),
            with_comparator(value):: (
              local converted = value;
              assert std.isString(converted) : '"comparator" expected to be of type "string"';
              {
                comparator: converted,
              }
            ),
            tag_values:: {
              local block = self,
              new():: (
                {}
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
            with_tag_values(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                tag_values: value,
              }
            ),
            with_tag_values_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                tag_values+: converted,
              }
            ),
          },
          with_simple_criterion(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              simple_criterion: value,
            }
          ),
          with_tag_criterion(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              tag_criterion: value,
            }
          ),
          with_simple_criterion_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              simple_criterion+: converted,
            }
          ),
          with_tag_criterion_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              tag_criterion+: converted,
            }
          ),
        },
        with_and(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            and: value,
          }
        ),
        with_and_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            and+: converted,
          }
        ),
      },
      includes:: {
        local block = self,
        new():: (
          {}
        ),
        and:: {
          local block = self,
          new():: (
            {}
          ),
          simple_criterion:: {
            local block = self,
            new():: (
              {}
            ),
            with_comparator(value):: (
              local converted = value;
              assert std.isString(converted) : '"comparator" expected to be of type "string"';
              {
                comparator: converted,
              }
            ),
            with_key(value):: (
              local converted = value;
              assert std.isString(converted) : '"key" expected to be of type "string"';
              {
                key: converted,
              }
            ),
            with_values(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"values" expected to be of type "list"';
              {
                values: converted,
              }
            ),
            with_values_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"values" expected to be of type "list"';
              {
                values+: converted,
              }
            ),
          },
          tag_criterion:: {
            local block = self,
            new():: (
              {}
            ),
            with_comparator(value):: (
              local converted = value;
              assert std.isString(converted) : '"comparator" expected to be of type "string"';
              {
                comparator: converted,
              }
            ),
            tag_values:: {
              local block = self,
              new():: (
                {}
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
            with_tag_values(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                tag_values: value,
              }
            ),
            with_tag_values_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                tag_values+: converted,
              }
            ),
          },
          with_simple_criterion(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              simple_criterion: value,
            }
          ),
          with_tag_criterion(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              tag_criterion: value,
            }
          ),
          with_simple_criterion_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              simple_criterion+: converted,
            }
          ),
          with_tag_criterion_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              tag_criterion+: converted,
            }
          ),
        },
        with_and(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            and: value,
          }
        ),
        with_and_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            and+: converted,
          }
        ),
      },
      with_excludes(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          excludes: value,
        }
      ),
      with_includes(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          includes: value,
        }
      ),
      with_excludes_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          excludes+: converted,
        }
      ),
      with_includes_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          includes+: converted,
        }
      ),
    },
    bucket_definitions:: {
      local block = self,
      new(account_id, buckets):: (
        {}
        + block.with_account_id(account_id)
        + block.with_buckets(buckets)
      ),
      with_account_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"account_id" expected to be of type "string"';
        {
          account_id: converted,
        }
      ),
      with_buckets(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"buckets" expected to be of type "list"';
        {
          buckets: converted,
        }
      ),
      with_buckets_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"buckets" expected to be of type "list"';
        {
          buckets+: converted,
        }
      ),
    },
    scoping:: {
      local block = self,
      new():: (
        {}
      ),
      excludes:: {
        local block = self,
        new():: (
          {}
        ),
        and:: {
          local block = self,
          new():: (
            {}
          ),
          simple_scope_term:: {
            local block = self,
            new():: (
              {}
            ),
            with_comparator(value):: (
              local converted = value;
              assert std.isString(converted) : '"comparator" expected to be of type "string"';
              {
                comparator: converted,
              }
            ),
            with_key(value):: (
              local converted = value;
              assert std.isString(converted) : '"key" expected to be of type "string"';
              {
                key: converted,
              }
            ),
            with_values(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"values" expected to be of type "list"';
              {
                values: converted,
              }
            ),
            with_values_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"values" expected to be of type "list"';
              {
                values+: converted,
              }
            ),
          },
          tag_scope_term:: {
            local block = self,
            new():: (
              {}
            ),
            with_comparator(value):: (
              local converted = value;
              assert std.isString(converted) : '"comparator" expected to be of type "string"';
              {
                comparator: converted,
              }
            ),
            with_key(value):: (
              local converted = value;
              assert std.isString(converted) : '"key" expected to be of type "string"';
              {
                key: converted,
              }
            ),
            with_target(value):: (
              local converted = value;
              assert std.isString(converted) : '"target" expected to be of type "string"';
              {
                target: converted,
              }
            ),
            tag_values:: {
              local block = self,
              new():: (
                {}
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
            with_tag_values(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                tag_values: value,
              }
            ),
            with_tag_values_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                tag_values+: converted,
              }
            ),
          },
          with_simple_scope_term(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              simple_scope_term: value,
            }
          ),
          with_tag_scope_term(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              tag_scope_term: value,
            }
          ),
          with_simple_scope_term_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              simple_scope_term+: converted,
            }
          ),
          with_tag_scope_term_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              tag_scope_term+: converted,
            }
          ),
        },
        with_and(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            and: value,
          }
        ),
        with_and_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            and+: converted,
          }
        ),
      },
      includes:: {
        local block = self,
        new():: (
          {}
        ),
        and:: {
          local block = self,
          new():: (
            {}
          ),
          simple_scope_term:: {
            local block = self,
            new():: (
              {}
            ),
            with_comparator(value):: (
              local converted = value;
              assert std.isString(converted) : '"comparator" expected to be of type "string"';
              {
                comparator: converted,
              }
            ),
            with_key(value):: (
              local converted = value;
              assert std.isString(converted) : '"key" expected to be of type "string"';
              {
                key: converted,
              }
            ),
            with_values(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"values" expected to be of type "list"';
              {
                values: converted,
              }
            ),
            with_values_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"values" expected to be of type "list"';
              {
                values+: converted,
              }
            ),
          },
          tag_scope_term:: {
            local block = self,
            new():: (
              {}
            ),
            with_comparator(value):: (
              local converted = value;
              assert std.isString(converted) : '"comparator" expected to be of type "string"';
              {
                comparator: converted,
              }
            ),
            with_key(value):: (
              local converted = value;
              assert std.isString(converted) : '"key" expected to be of type "string"';
              {
                key: converted,
              }
            ),
            with_target(value):: (
              local converted = value;
              assert std.isString(converted) : '"target" expected to be of type "string"';
              {
                target: converted,
              }
            ),
            tag_values:: {
              local block = self,
              new():: (
                {}
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
            with_tag_values(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                tag_values: value,
              }
            ),
            with_tag_values_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                tag_values+: converted,
              }
            ),
          },
          with_simple_scope_term(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              simple_scope_term: value,
            }
          ),
          with_tag_scope_term(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              tag_scope_term: value,
            }
          ),
          with_simple_scope_term_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              simple_scope_term+: converted,
            }
          ),
          with_tag_scope_term_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              tag_scope_term+: converted,
            }
          ),
        },
        with_and(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            and: value,
          }
        ),
        with_and_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            and+: converted,
          }
        ),
      },
      with_excludes(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          excludes: value,
        }
      ),
      with_includes(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          includes: value,
        }
      ),
      with_excludes_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          excludes+: converted,
        }
      ),
      with_includes_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          includes+: converted,
        }
      ),
    },
    with_bucket_criteria(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        bucket_criteria: value,
      }
    ),
    with_bucket_definitions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        bucket_definitions: value,
      }
    ),
    with_scoping(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        scoping: value,
      }
    ),
    with_bucket_criteria_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        bucket_criteria+: converted,
      }
    ),
    with_bucket_definitions_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        bucket_definitions+: converted,
      }
    ),
    with_scoping_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        scoping+: converted,
      }
    ),
  },
  schedule_frequency:: {
    local block = self,
    new():: (
      {}
    ),
    with_daily_schedule(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"daily_schedule" expected to be of type "bool"';
      {
        daily_schedule: converted,
      }
    ),
    with_monthly_schedule(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"monthly_schedule" expected to be of type "number"';
      {
        monthly_schedule: converted,
      }
    ),
    with_weekly_schedule(value):: (
      local converted = value;
      assert std.isString(converted) : '"weekly_schedule" expected to be of type "string"';
      {
        weekly_schedule: converted,
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
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_s3_job_definition(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3_job_definition: value,
    }
  ),
  with_schedule_frequency(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schedule_frequency: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_s3_job_definition_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3_job_definition+: converted,
    }
  ),
  with_schedule_frequency_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schedule_frequency+: converted,
    }
  ),
}
