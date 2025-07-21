{
  local block = self,
  new(name, rule_set_name):: (
    {}
    + block.with_name(name)
    + block.with_rule_set_name(rule_set_name)
  ),
  with_after(value):: (
    local converted = value;
    assert std.isString(converted) : '"after" expected to be of type "string"';
    {
      after: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
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
  with_recipients(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"recipients" expected to be of type "set"';
    {
      recipients: converted,
    }
  ),
  with_recipients_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"recipients" expected to be of type "set"';
    {
      recipients+: converted,
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
  with_rule_set_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"rule_set_name" expected to be of type "string"';
    {
      rule_set_name: converted,
    }
  ),
  with_scan_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"scan_enabled" expected to be of type "bool"';
    {
      scan_enabled: converted,
    }
  ),
  with_tls_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"tls_policy" expected to be of type "string"';
    {
      tls_policy: converted,
    }
  ),
  add_header_action:: {
    local block = self,
    new(header_name, header_value, position):: (
      {}
      + block.with_header_name(header_name)
      + block.with_header_value(header_value)
      + block.with_position(position)
    ),
    with_header_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"header_name" expected to be of type "string"';
      {
        header_name: converted,
      }
    ),
    with_header_value(value):: (
      local converted = value;
      assert std.isString(converted) : '"header_value" expected to be of type "string"';
      {
        header_value: converted,
      }
    ),
    with_position(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"position" expected to be of type "number"';
      {
        position: converted,
      }
    ),
  },
  bounce_action:: {
    local block = self,
    new(message, position, sender, smtp_reply_code):: (
      {}
      + block.with_message(message)
      + block.with_position(position)
      + block.with_sender(sender)
      + block.with_smtp_reply_code(smtp_reply_code)
    ),
    with_message(value):: (
      local converted = value;
      assert std.isString(converted) : '"message" expected to be of type "string"';
      {
        message: converted,
      }
    ),
    with_position(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"position" expected to be of type "number"';
      {
        position: converted,
      }
    ),
    with_sender(value):: (
      local converted = value;
      assert std.isString(converted) : '"sender" expected to be of type "string"';
      {
        sender: converted,
      }
    ),
    with_smtp_reply_code(value):: (
      local converted = value;
      assert std.isString(converted) : '"smtp_reply_code" expected to be of type "string"';
      {
        smtp_reply_code: converted,
      }
    ),
    with_status_code(value):: (
      local converted = value;
      assert std.isString(converted) : '"status_code" expected to be of type "string"';
      {
        status_code: converted,
      }
    ),
    with_topic_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"topic_arn" expected to be of type "string"';
      {
        topic_arn: converted,
      }
    ),
  },
  lambda_action:: {
    local block = self,
    new(function_arn, position):: (
      {}
      + block.with_function_arn(function_arn)
      + block.with_position(position)
    ),
    with_function_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"function_arn" expected to be of type "string"';
      {
        function_arn: converted,
      }
    ),
    with_invocation_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"invocation_type" expected to be of type "string"';
      {
        invocation_type: converted,
      }
    ),
    with_position(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"position" expected to be of type "number"';
      {
        position: converted,
      }
    ),
    with_topic_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"topic_arn" expected to be of type "string"';
      {
        topic_arn: converted,
      }
    ),
  },
  s3_action:: {
    local block = self,
    new(bucket_name, position):: (
      {}
      + block.with_bucket_name(bucket_name)
      + block.with_position(position)
    ),
    with_bucket_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
      {
        bucket_name: converted,
      }
    ),
    with_iam_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"iam_role_arn" expected to be of type "string"';
      {
        iam_role_arn: converted,
      }
    ),
    with_kms_key_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
      {
        kms_key_arn: converted,
      }
    ),
    with_object_key_prefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"object_key_prefix" expected to be of type "string"';
      {
        object_key_prefix: converted,
      }
    ),
    with_position(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"position" expected to be of type "number"';
      {
        position: converted,
      }
    ),
    with_topic_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"topic_arn" expected to be of type "string"';
      {
        topic_arn: converted,
      }
    ),
  },
  sns_action:: {
    local block = self,
    new(position, topic_arn):: (
      {}
      + block.with_position(position)
      + block.with_topic_arn(topic_arn)
    ),
    with_encoding(value):: (
      local converted = value;
      assert std.isString(converted) : '"encoding" expected to be of type "string"';
      {
        encoding: converted,
      }
    ),
    with_position(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"position" expected to be of type "number"';
      {
        position: converted,
      }
    ),
    with_topic_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"topic_arn" expected to be of type "string"';
      {
        topic_arn: converted,
      }
    ),
  },
  stop_action:: {
    local block = self,
    new(position, scope):: (
      {}
      + block.with_position(position)
      + block.with_scope(scope)
    ),
    with_position(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"position" expected to be of type "number"';
      {
        position: converted,
      }
    ),
    with_scope(value):: (
      local converted = value;
      assert std.isString(converted) : '"scope" expected to be of type "string"';
      {
        scope: converted,
      }
    ),
    with_topic_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"topic_arn" expected to be of type "string"';
      {
        topic_arn: converted,
      }
    ),
  },
  workmail_action:: {
    local block = self,
    new(organization_arn, position):: (
      {}
      + block.with_organization_arn(organization_arn)
      + block.with_position(position)
    ),
    with_organization_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"organization_arn" expected to be of type "string"';
      {
        organization_arn: converted,
      }
    ),
    with_position(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"position" expected to be of type "number"';
      {
        position: converted,
      }
    ),
    with_topic_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"topic_arn" expected to be of type "string"';
      {
        topic_arn: converted,
      }
    ),
  },
  with_add_header_action(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      add_header_action: value,
    }
  ),
  with_bounce_action(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      bounce_action: value,
    }
  ),
  with_lambda_action(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lambda_action: value,
    }
  ),
  with_s3_action(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3_action: value,
    }
  ),
  with_sns_action(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sns_action: value,
    }
  ),
  with_stop_action(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      stop_action: value,
    }
  ),
  with_workmail_action(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      workmail_action: value,
    }
  ),
  with_add_header_action_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      add_header_action+: converted,
    }
  ),
  with_bounce_action_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      bounce_action+: converted,
    }
  ),
  with_lambda_action_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lambda_action+: converted,
    }
  ),
  with_s3_action_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3_action+: converted,
    }
  ),
  with_sns_action_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sns_action+: converted,
    }
  ),
  with_stop_action_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      stop_action+: converted,
    }
  ),
  with_workmail_action_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      workmail_action+: converted,
    }
  ),
}
