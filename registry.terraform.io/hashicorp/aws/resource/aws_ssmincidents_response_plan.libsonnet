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
  with_chat_channel(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"chat_channel" expected to be of type "set"';
    {
      chat_channel: converted,
    }
  ),
  with_chat_channel_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"chat_channel" expected to be of type "set"';
    {
      chat_channel+: converted,
    }
  ),
  with_display_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"display_name" expected to be of type "string"';
    {
      display_name: converted,
    }
  ),
  with_engagements(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"engagements" expected to be of type "set"';
    {
      engagements: converted,
    }
  ),
  with_engagements_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"engagements" expected to be of type "set"';
    {
      engagements+: converted,
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
  action:: {
    local block = self,
    new():: (
      {}
    ),
    ssm_automation:: {
      local block = self,
      new(document_name, role_arn):: (
        {}
        + block.with_document_name(document_name)
        + block.with_role_arn(role_arn)
      ),
      with_document_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"document_name" expected to be of type "string"';
        {
          document_name: converted,
        }
      ),
      with_document_version(value):: (
        local converted = value;
        assert std.isString(converted) : '"document_version" expected to be of type "string"';
        {
          document_version: converted,
        }
      ),
      with_dynamic_parameters(value):: (
        local converted = value;
        assert std.isObject(converted) : '"dynamic_parameters" expected to be of type "map"';
        {
          dynamic_parameters: converted,
        }
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      with_target_account(value):: (
        local converted = value;
        assert std.isString(converted) : '"target_account" expected to be of type "string"';
        {
          target_account: converted,
        }
      ),
      parameter:: {
        local block = self,
        new(name, values):: (
          {}
          + block.with_name(name)
          + block.with_values(values)
        ),
        with_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        with_values(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values: converted,
          }
        ),
        with_values_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values+: converted,
          }
        ),
      },
      with_parameter(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          parameter: value,
        }
      ),
      with_parameter_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          parameter+: converted,
        }
      ),
    },
    with_ssm_automation(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ssm_automation: value,
      }
    ),
    with_ssm_automation_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ssm_automation+: converted,
      }
    ),
  },
  incident_template:: {
    local block = self,
    new(impact, title):: (
      {}
      + block.with_impact(impact)
      + block.with_title(title)
    ),
    with_dedupe_string(value):: (
      local converted = value;
      assert std.isString(converted) : '"dedupe_string" expected to be of type "string"';
      {
        dedupe_string: converted,
      }
    ),
    with_impact(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"impact" expected to be of type "number"';
      {
        impact: converted,
      }
    ),
    with_incident_tags(value):: (
      local converted = value;
      assert std.isObject(converted) : '"incident_tags" expected to be of type "map"';
      {
        incident_tags: converted,
      }
    ),
    with_summary(value):: (
      local converted = value;
      assert std.isString(converted) : '"summary" expected to be of type "string"';
      {
        summary: converted,
      }
    ),
    with_title(value):: (
      local converted = value;
      assert std.isString(converted) : '"title" expected to be of type "string"';
      {
        title: converted,
      }
    ),
    notification_target:: {
      local block = self,
      new(sns_topic_arn):: (
        {}
        + block.with_sns_topic_arn(sns_topic_arn)
      ),
      with_sns_topic_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"sns_topic_arn" expected to be of type "string"';
        {
          sns_topic_arn: converted,
        }
      ),
    },
    with_notification_target(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        notification_target: value,
      }
    ),
    with_notification_target_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        notification_target+: converted,
      }
    ),
  },
  integration:: {
    local block = self,
    new():: (
      {}
    ),
    pagerduty:: {
      local block = self,
      new(name, secret_id, service_id):: (
        {}
        + block.with_name(name)
        + block.with_secret_id(secret_id)
        + block.with_service_id(service_id)
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_secret_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"secret_id" expected to be of type "string"';
        {
          secret_id: converted,
        }
      ),
      with_service_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"service_id" expected to be of type "string"';
        {
          service_id: converted,
        }
      ),
    },
    with_pagerduty(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        pagerduty: value,
      }
    ),
    with_pagerduty_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        pagerduty+: converted,
      }
    ),
  },
  with_action(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      action: value,
    }
  ),
  with_incident_template(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      incident_template: value,
    }
  ),
  with_integration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      integration: value,
    }
  ),
  with_action_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      action+: converted,
    }
  ),
  with_incident_template_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      incident_template+: converted,
    }
  ),
  with_integration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      integration+: converted,
    }
  ),
}
