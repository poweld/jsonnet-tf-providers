{
  local block = self,
  new(bot_name, bot_version, name):: (
    {}
    + block.with_bot_name(bot_name)
    + block.with_bot_version(bot_version)
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_bot_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"bot_name" expected to be of type "string"';
    {
      bot_name: converted,
    }
  ),
  with_bot_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"bot_version" expected to be of type "string"';
    {
      bot_version: converted,
    }
  ),
  with_checksum(value):: (
    local converted = value;
    assert std.isString(converted) : '"checksum" expected to be of type "string"';
    {
      checksum: converted,
    }
  ),
  with_created_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_date" expected to be of type "string"';
    {
      created_date: converted,
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
  with_last_updated_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_updated_date" expected to be of type "string"';
    {
      last_updated_date: converted,
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
  conversation_logs:: {
    local block = self,
    new(iam_role_arn):: (
      {}
      + block.with_iam_role_arn(iam_role_arn)
    ),
    with_iam_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"iam_role_arn" expected to be of type "string"';
      {
        iam_role_arn: converted,
      }
    ),
    log_settings:: {
      local block = self,
      new(destination, log_type, resource_arn):: (
        {}
        + block.with_destination(destination)
        + block.with_log_type(log_type)
        + block.with_resource_arn(resource_arn)
      ),
      with_destination(value):: (
        local converted = value;
        assert std.isString(converted) : '"destination" expected to be of type "string"';
        {
          destination: converted,
        }
      ),
      with_kms_key_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
        {
          kms_key_arn: converted,
        }
      ),
      with_log_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_type" expected to be of type "string"';
        {
          log_type: converted,
        }
      ),
      with_resource_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
        {
          resource_arn: converted,
        }
      ),
      with_resource_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"resource_prefix" expected to be of type "string"';
        {
          resource_prefix: converted,
        }
      ),
    },
    with_log_settings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        log_settings: value,
      }
    ),
    with_log_settings_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        log_settings+: converted,
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
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
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
  with_conversation_logs(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      conversation_logs: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_conversation_logs_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      conversation_logs+: converted,
    }
  ),
}
