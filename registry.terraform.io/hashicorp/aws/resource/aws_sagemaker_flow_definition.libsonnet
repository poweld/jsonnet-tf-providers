{
  local block = self,
  new(flow_definition_name, role_arn):: (
    {}
    + block.with_flow_definition_name(flow_definition_name)
    + block.with_role_arn(role_arn)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_flow_definition_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"flow_definition_name" expected to be of type "string"';
    {
      flow_definition_name: converted,
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
  human_loop_activation_config:: {
    local block = self,
    new():: (
      {}
    ),
    human_loop_activation_conditions_config:: {
      local block = self,
      new(human_loop_activation_conditions):: (
        {}
        + block.with_human_loop_activation_conditions(human_loop_activation_conditions)
      ),
      with_human_loop_activation_conditions(value):: (
        local converted = value;
        assert std.isString(converted) : '"human_loop_activation_conditions" expected to be of type "string"';
        {
          human_loop_activation_conditions: converted,
        }
      ),
    },
    with_human_loop_activation_conditions_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        human_loop_activation_conditions_config: value,
      }
    ),
    with_human_loop_activation_conditions_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        human_loop_activation_conditions_config+: converted,
      }
    ),
  },
  human_loop_config:: {
    local block = self,
    new(human_task_ui_arn, task_count, task_description, task_title, workteam_arn):: (
      {}
      + block.with_human_task_ui_arn(human_task_ui_arn)
      + block.with_task_count(task_count)
      + block.with_task_description(task_description)
      + block.with_task_title(task_title)
      + block.with_workteam_arn(workteam_arn)
    ),
    with_human_task_ui_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"human_task_ui_arn" expected to be of type "string"';
      {
        human_task_ui_arn: converted,
      }
    ),
    with_task_availability_lifetime_in_seconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"task_availability_lifetime_in_seconds" expected to be of type "number"';
      {
        task_availability_lifetime_in_seconds: converted,
      }
    ),
    with_task_count(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"task_count" expected to be of type "number"';
      {
        task_count: converted,
      }
    ),
    with_task_description(value):: (
      local converted = value;
      assert std.isString(converted) : '"task_description" expected to be of type "string"';
      {
        task_description: converted,
      }
    ),
    with_task_keywords(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"task_keywords" expected to be of type "set"';
      {
        task_keywords: converted,
      }
    ),
    with_task_keywords_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"task_keywords" expected to be of type "set"';
      {
        task_keywords+: converted,
      }
    ),
    with_task_time_limit_in_seconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"task_time_limit_in_seconds" expected to be of type "number"';
      {
        task_time_limit_in_seconds: converted,
      }
    ),
    with_task_title(value):: (
      local converted = value;
      assert std.isString(converted) : '"task_title" expected to be of type "string"';
      {
        task_title: converted,
      }
    ),
    with_workteam_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"workteam_arn" expected to be of type "string"';
      {
        workteam_arn: converted,
      }
    ),
    public_workforce_task_price:: {
      local block = self,
      new():: (
        {}
      ),
      amount_in_usd:: {
        local block = self,
        new():: (
          {}
        ),
        with_cents(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"cents" expected to be of type "number"';
          {
            cents: converted,
          }
        ),
        with_dollars(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"dollars" expected to be of type "number"';
          {
            dollars: converted,
          }
        ),
        with_tenth_fractions_of_a_cent(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"tenth_fractions_of_a_cent" expected to be of type "number"';
          {
            tenth_fractions_of_a_cent: converted,
          }
        ),
      },
      with_amount_in_usd(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          amount_in_usd: value,
        }
      ),
      with_amount_in_usd_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          amount_in_usd+: converted,
        }
      ),
    },
    with_public_workforce_task_price(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        public_workforce_task_price: value,
      }
    ),
    with_public_workforce_task_price_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        public_workforce_task_price+: converted,
      }
    ),
  },
  human_loop_request_source:: {
    local block = self,
    new(aws_managed_human_loop_request_source):: (
      {}
      + block.with_aws_managed_human_loop_request_source(aws_managed_human_loop_request_source)
    ),
    with_aws_managed_human_loop_request_source(value):: (
      local converted = value;
      assert std.isString(converted) : '"aws_managed_human_loop_request_source" expected to be of type "string"';
      {
        aws_managed_human_loop_request_source: converted,
      }
    ),
  },
  output_config:: {
    local block = self,
    new(s3_output_path):: (
      {}
      + block.with_s3_output_path(s3_output_path)
    ),
    with_kms_key_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
      {
        kms_key_id: converted,
      }
    ),
    with_s3_output_path(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_output_path" expected to be of type "string"';
      {
        s3_output_path: converted,
      }
    ),
  },
  with_human_loop_activation_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      human_loop_activation_config: value,
    }
  ),
  with_human_loop_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      human_loop_config: value,
    }
  ),
  with_human_loop_request_source(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      human_loop_request_source: value,
    }
  ),
  with_output_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      output_config: value,
    }
  ),
  with_human_loop_activation_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      human_loop_activation_config+: converted,
    }
  ),
  with_human_loop_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      human_loop_config+: converted,
    }
  ),
  with_human_loop_request_source_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      human_loop_request_source+: converted,
    }
  ),
  with_output_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      output_config+: converted,
    }
  ),
}
