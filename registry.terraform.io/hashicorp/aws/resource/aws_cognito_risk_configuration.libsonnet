{
  local block = self,
  new(user_pool_id):: (
    {}
    + block.with_user_pool_id(user_pool_id)
  ),
  with_client_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_id" expected to be of type "string"';
    {
      client_id: converted,
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
  with_user_pool_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_pool_id" expected to be of type "string"';
    {
      user_pool_id: converted,
    }
  ),
  account_takeover_risk_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    actions:: {
      local block = self,
      new():: (
        {}
      ),
      high_action:: {
        local block = self,
        new(event_action, notify):: (
          {}
          + block.with_event_action(event_action)
          + block.with_notify(notify)
        ),
        with_event_action(value):: (
          local converted = value;
          assert std.isString(converted) : '"event_action" expected to be of type "string"';
          {
            event_action: converted,
          }
        ),
        with_notify(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"notify" expected to be of type "bool"';
          {
            notify: converted,
          }
        ),
      },
      low_action:: {
        local block = self,
        new(event_action, notify):: (
          {}
          + block.with_event_action(event_action)
          + block.with_notify(notify)
        ),
        with_event_action(value):: (
          local converted = value;
          assert std.isString(converted) : '"event_action" expected to be of type "string"';
          {
            event_action: converted,
          }
        ),
        with_notify(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"notify" expected to be of type "bool"';
          {
            notify: converted,
          }
        ),
      },
      medium_action:: {
        local block = self,
        new(event_action, notify):: (
          {}
          + block.with_event_action(event_action)
          + block.with_notify(notify)
        ),
        with_event_action(value):: (
          local converted = value;
          assert std.isString(converted) : '"event_action" expected to be of type "string"';
          {
            event_action: converted,
          }
        ),
        with_notify(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"notify" expected to be of type "bool"';
          {
            notify: converted,
          }
        ),
      },
      with_high_action(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          high_action: value,
        }
      ),
      with_low_action(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          low_action: value,
        }
      ),
      with_medium_action(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          medium_action: value,
        }
      ),
      with_high_action_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          high_action+: converted,
        }
      ),
      with_low_action_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          low_action+: converted,
        }
      ),
      with_medium_action_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          medium_action+: converted,
        }
      ),
    },
    notify_configuration:: {
      local block = self,
      new(source_arn):: (
        {}
        + block.with_source_arn(source_arn)
      ),
      with_from(value):: (
        local converted = value;
        assert std.isString(converted) : '"from" expected to be of type "string"';
        {
          from: converted,
        }
      ),
      with_reply_to(value):: (
        local converted = value;
        assert std.isString(converted) : '"reply_to" expected to be of type "string"';
        {
          reply_to: converted,
        }
      ),
      with_source_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_arn" expected to be of type "string"';
        {
          source_arn: converted,
        }
      ),
      block_email:: {
        local block = self,
        new(html_body, subject, text_body):: (
          {}
          + block.with_html_body(html_body)
          + block.with_subject(subject)
          + block.with_text_body(text_body)
        ),
        with_html_body(value):: (
          local converted = value;
          assert std.isString(converted) : '"html_body" expected to be of type "string"';
          {
            html_body: converted,
          }
        ),
        with_subject(value):: (
          local converted = value;
          assert std.isString(converted) : '"subject" expected to be of type "string"';
          {
            subject: converted,
          }
        ),
        with_text_body(value):: (
          local converted = value;
          assert std.isString(converted) : '"text_body" expected to be of type "string"';
          {
            text_body: converted,
          }
        ),
      },
      mfa_email:: {
        local block = self,
        new(html_body, subject, text_body):: (
          {}
          + block.with_html_body(html_body)
          + block.with_subject(subject)
          + block.with_text_body(text_body)
        ),
        with_html_body(value):: (
          local converted = value;
          assert std.isString(converted) : '"html_body" expected to be of type "string"';
          {
            html_body: converted,
          }
        ),
        with_subject(value):: (
          local converted = value;
          assert std.isString(converted) : '"subject" expected to be of type "string"';
          {
            subject: converted,
          }
        ),
        with_text_body(value):: (
          local converted = value;
          assert std.isString(converted) : '"text_body" expected to be of type "string"';
          {
            text_body: converted,
          }
        ),
      },
      no_action_email:: {
        local block = self,
        new(html_body, subject, text_body):: (
          {}
          + block.with_html_body(html_body)
          + block.with_subject(subject)
          + block.with_text_body(text_body)
        ),
        with_html_body(value):: (
          local converted = value;
          assert std.isString(converted) : '"html_body" expected to be of type "string"';
          {
            html_body: converted,
          }
        ),
        with_subject(value):: (
          local converted = value;
          assert std.isString(converted) : '"subject" expected to be of type "string"';
          {
            subject: converted,
          }
        ),
        with_text_body(value):: (
          local converted = value;
          assert std.isString(converted) : '"text_body" expected to be of type "string"';
          {
            text_body: converted,
          }
        ),
      },
      with_block_email(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          block_email: value,
        }
      ),
      with_mfa_email(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          mfa_email: value,
        }
      ),
      with_no_action_email(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          no_action_email: value,
        }
      ),
      with_block_email_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          block_email+: converted,
        }
      ),
      with_mfa_email_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          mfa_email+: converted,
        }
      ),
      with_no_action_email_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          no_action_email+: converted,
        }
      ),
    },
    with_actions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        actions: value,
      }
    ),
    with_notify_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        notify_configuration: value,
      }
    ),
    with_actions_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        actions+: converted,
      }
    ),
    with_notify_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        notify_configuration+: converted,
      }
    ),
  },
  compromised_credentials_risk_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_event_filter(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"event_filter" expected to be of type "set"';
      {
        event_filter: converted,
      }
    ),
    with_event_filter_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"event_filter" expected to be of type "set"';
      {
        event_filter+: converted,
      }
    ),
    actions:: {
      local block = self,
      new(event_action):: (
        {}
        + block.with_event_action(event_action)
      ),
      with_event_action(value):: (
        local converted = value;
        assert std.isString(converted) : '"event_action" expected to be of type "string"';
        {
          event_action: converted,
        }
      ),
    },
    with_actions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        actions: value,
      }
    ),
    with_actions_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        actions+: converted,
      }
    ),
  },
  risk_exception_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_blocked_ip_range_list(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"blocked_ip_range_list" expected to be of type "set"';
      {
        blocked_ip_range_list: converted,
      }
    ),
    with_blocked_ip_range_list_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"blocked_ip_range_list" expected to be of type "set"';
      {
        blocked_ip_range_list+: converted,
      }
    ),
    with_skipped_ip_range_list(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"skipped_ip_range_list" expected to be of type "set"';
      {
        skipped_ip_range_list: converted,
      }
    ),
    with_skipped_ip_range_list_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"skipped_ip_range_list" expected to be of type "set"';
      {
        skipped_ip_range_list+: converted,
      }
    ),
  },
  with_account_takeover_risk_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      account_takeover_risk_configuration: value,
    }
  ),
  with_compromised_credentials_risk_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      compromised_credentials_risk_configuration: value,
    }
  ),
  with_risk_exception_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      risk_exception_configuration: value,
    }
  ),
  with_account_takeover_risk_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      account_takeover_risk_configuration+: converted,
    }
  ),
  with_compromised_credentials_risk_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      compromised_credentials_risk_configuration+: converted,
    }
  ),
  with_risk_exception_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      risk_exception_configuration+: converted,
    }
  ),
}
