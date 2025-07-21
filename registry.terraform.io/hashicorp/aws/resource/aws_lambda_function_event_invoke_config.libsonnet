{
  local block = self,
  new(function_name):: (
    {}
    + block.with_function_name(function_name)
  ),
  with_function_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"function_name" expected to be of type "string"';
    {
      function_name: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_maximum_event_age_in_seconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"maximum_event_age_in_seconds" expected to be of type "number"';
    {
      maximum_event_age_in_seconds: converted,
    }
  ),
  with_maximum_retry_attempts(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"maximum_retry_attempts" expected to be of type "number"';
    {
      maximum_retry_attempts: converted,
    }
  ),
  with_qualifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"qualifier" expected to be of type "string"';
    {
      qualifier: converted,
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
  destination_config:: {
    local block = self,
    new():: (
      {}
    ),
    on_failure:: {
      local block = self,
      new(destination):: (
        {}
        + block.with_destination(destination)
      ),
      with_destination(value):: (
        local converted = value;
        assert std.isString(converted) : '"destination" expected to be of type "string"';
        {
          destination: converted,
        }
      ),
    },
    on_success:: {
      local block = self,
      new(destination):: (
        {}
        + block.with_destination(destination)
      ),
      with_destination(value):: (
        local converted = value;
        assert std.isString(converted) : '"destination" expected to be of type "string"';
        {
          destination: converted,
        }
      ),
    },
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
  with_destination_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination_config: value,
    }
  ),
  with_destination_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination_config+: converted,
    }
  ),
}
