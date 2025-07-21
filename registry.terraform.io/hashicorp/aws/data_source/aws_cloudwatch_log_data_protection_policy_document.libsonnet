{
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
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_json(value):: (
    local converted = value;
    assert std.isString(converted) : '"json" expected to be of type "string"';
    {
      json: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
  configuration:: {
    local block = self,
    new():: (
      {}
    ),
    custom_data_identifier:: {
      local block = self,
      new(name, regex):: (
        {}
        + block.with_name(name)
        + block.with_regex(regex)
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_regex(value):: (
        local converted = value;
        assert std.isString(converted) : '"regex" expected to be of type "string"';
        {
          regex: converted,
        }
      ),
    },
    with_custom_data_identifier(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_data_identifier: value,
      }
    ),
    with_custom_data_identifier_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_data_identifier+: converted,
      }
    ),
  },
  statement:: {
    local block = self,
    new(data_identifiers):: (
      {}
      + block.with_data_identifiers(data_identifiers)
    ),
    with_data_identifiers(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"data_identifiers" expected to be of type "set"';
      {
        data_identifiers: converted,
      }
    ),
    with_data_identifiers_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"data_identifiers" expected to be of type "set"';
      {
        data_identifiers+: converted,
      }
    ),
    with_sid(value):: (
      local converted = value;
      assert std.isString(converted) : '"sid" expected to be of type "string"';
      {
        sid: converted,
      }
    ),
    operation:: {
      local block = self,
      new():: (
        {}
      ),
      audit:: {
        local block = self,
        new():: (
          {}
        ),
        findings_destination:: {
          local block = self,
          new():: (
            {}
          ),
          cloudwatch_logs:: {
            local block = self,
            new(log_group):: (
              {}
              + block.with_log_group(log_group)
            ),
            with_log_group(value):: (
              local converted = value;
              assert std.isString(converted) : '"log_group" expected to be of type "string"';
              {
                log_group: converted,
              }
            ),
          },
          firehose:: {
            local block = self,
            new(delivery_stream):: (
              {}
              + block.with_delivery_stream(delivery_stream)
            ),
            with_delivery_stream(value):: (
              local converted = value;
              assert std.isString(converted) : '"delivery_stream" expected to be of type "string"';
              {
                delivery_stream: converted,
              }
            ),
          },
          s3:: {
            local block = self,
            new(bucket):: (
              {}
              + block.with_bucket(bucket)
            ),
            with_bucket(value):: (
              local converted = value;
              assert std.isString(converted) : '"bucket" expected to be of type "string"';
              {
                bucket: converted,
              }
            ),
          },
          with_cloudwatch_logs(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              cloudwatch_logs: value,
            }
          ),
          with_firehose(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              firehose: value,
            }
          ),
          with_s3(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              s3: value,
            }
          ),
          with_cloudwatch_logs_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              cloudwatch_logs+: converted,
            }
          ),
          with_firehose_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              firehose+: converted,
            }
          ),
          with_s3_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              s3+: converted,
            }
          ),
        },
        with_findings_destination(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            findings_destination: value,
          }
        ),
        with_findings_destination_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            findings_destination+: converted,
          }
        ),
      },
      deidentify:: {
        local block = self,
        new():: (
          {}
        ),
        mask_config:: {
          local block = self,
          new():: (
            {}
          ),
        },
        with_mask_config(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            mask_config: value,
          }
        ),
        with_mask_config_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            mask_config+: converted,
          }
        ),
      },
      with_audit(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          audit: value,
        }
      ),
      with_deidentify(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          deidentify: value,
        }
      ),
      with_audit_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          audit+: converted,
        }
      ),
      with_deidentify_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          deidentify+: converted,
        }
      ),
    },
    with_operation(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        operation: value,
      }
    ),
    with_operation_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        operation+: converted,
      }
    ),
  },
  with_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration: value,
    }
  ),
  with_statement(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      statement: value,
    }
  ),
  with_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration+: converted,
    }
  ),
  with_statement_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      statement+: converted,
    }
  ),
}
