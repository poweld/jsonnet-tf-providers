{
  local block = self,
  new(firewall_arn):: (
    {}
    + block.with_firewall_arn(firewall_arn)
  ),
  with_firewall_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"firewall_arn" expected to be of type "string"';
    {
      firewall_arn: converted,
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
  logging_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    log_destination_config:: {
      local block = self,
      new(log_destination, log_destination_type, log_type):: (
        {}
        + block.with_log_destination(log_destination)
        + block.with_log_destination_type(log_destination_type)
        + block.with_log_type(log_type)
      ),
      with_log_destination(value):: (
        local converted = value;
        assert std.isObject(converted) : '"log_destination" expected to be of type "map"';
        {
          log_destination: converted,
        }
      ),
      with_log_destination_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_destination_type" expected to be of type "string"';
        {
          log_destination_type: converted,
        }
      ),
      with_log_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_type" expected to be of type "string"';
        {
          log_type: converted,
        }
      ),
    },
    with_log_destination_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        log_destination_config: value,
      }
    ),
    with_log_destination_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        log_destination_config+: converted,
      }
    ),
  },
  with_logging_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_configuration: value,
    }
  ),
  with_logging_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_configuration+: converted,
    }
  ),
}
