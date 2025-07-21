{
  local block = self,
  new(log_destination_configs, resource_arn):: (
    {}
    + block.with_log_destination_configs(log_destination_configs)
    + block.with_resource_arn(resource_arn)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_log_destination_configs':: 'AWS Kinesis Firehose Delivery Stream ARNs',
  with_log_destination_configs(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"log_destination_configs" expected to be of type "set"';
    {
      log_destination_configs: converted,
    }
  ),
  '#with_log_destination_configs_mixin':: 'AWS Kinesis Firehose Delivery Stream ARNs',
  with_log_destination_configs_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"log_destination_configs" expected to be of type "set"';
    {
      log_destination_configs+: converted,
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
  '#with_resource_arn':: 'AWS WebACL ARN',
  with_resource_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
    {
      resource_arn: converted,
    }
  ),
  logging_filter:: {
    local block = self,
    new(default_behavior):: (
      {}
      + block.with_default_behavior(default_behavior)
    ),
    with_default_behavior(value):: (
      local converted = value;
      assert std.isString(converted) : '"default_behavior" expected to be of type "string"';
      {
        default_behavior: converted,
      }
    ),
    filter:: {
      local block = self,
      new(behavior, requirement):: (
        {}
        + block.with_behavior(behavior)
        + block.with_requirement(requirement)
      ),
      with_behavior(value):: (
        local converted = value;
        assert std.isString(converted) : '"behavior" expected to be of type "string"';
        {
          behavior: converted,
        }
      ),
      with_requirement(value):: (
        local converted = value;
        assert std.isString(converted) : '"requirement" expected to be of type "string"';
        {
          requirement: converted,
        }
      ),
      condition:: {
        local block = self,
        new():: (
          {}
        ),
        action_condition:: {
          local block = self,
          new(action):: (
            {}
            + block.with_action(action)
          ),
          with_action(value):: (
            local converted = value;
            assert std.isString(converted) : '"action" expected to be of type "string"';
            {
              action: converted,
            }
          ),
        },
        label_name_condition:: {
          local block = self,
          new(label_name):: (
            {}
            + block.with_label_name(label_name)
          ),
          with_label_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"label_name" expected to be of type "string"';
            {
              label_name: converted,
            }
          ),
        },
        with_action_condition(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            action_condition: value,
          }
        ),
        with_label_name_condition(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            label_name_condition: value,
          }
        ),
        with_action_condition_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            action_condition+: converted,
          }
        ),
        with_label_name_condition_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            label_name_condition+: converted,
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
    with_filter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filter: value,
      }
    ),
    with_filter_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filter+: converted,
      }
    ),
  },
  redacted_fields:: {
    local block = self,
    new():: (
      {}
    ),
    method:: {
      local block = self,
      new():: (
        {}
      ),
    },
    query_string:: {
      local block = self,
      new():: (
        {}
      ),
    },
    single_header:: {
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
    uri_path:: {
      local block = self,
      new():: (
        {}
      ),
    },
    with_method(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        method: value,
      }
    ),
    with_query_string(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        query_string: value,
      }
    ),
    with_single_header(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        single_header: value,
      }
    ),
    with_uri_path(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        uri_path: value,
      }
    ),
    with_method_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        method+: converted,
      }
    ),
    with_query_string_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        query_string+: converted,
      }
    ),
    with_single_header_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        single_header+: converted,
      }
    ),
    with_uri_path_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        uri_path+: converted,
      }
    ),
  },
  with_logging_filter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_filter: value,
    }
  ),
  with_redacted_fields(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      redacted_fields: value,
    }
  ),
  with_logging_filter_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_filter+: converted,
    }
  ),
  with_redacted_fields_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      redacted_fields+: converted,
    }
  ),
}
