{
  local block = self,
  new(subscriber_id):: (
    {}
    + block.with_subscriber_id(subscriber_id)
  ),
  with_endpoint_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_id" expected to be of type "string"';
    {
      endpoint_id: converted,
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
  with_subscriber_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"subscriber_endpoint" expected to be of type "string"';
    {
      subscriber_endpoint: converted,
    }
  ),
  with_subscriber_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"subscriber_id" expected to be of type "string"';
    {
      subscriber_id: converted,
    }
  ),
  configuration:: {
    local block = self,
    new():: (
      {}
    ),
    https_notification_configuration:: {
      local block = self,
      new(endpoint, target_role_arn):: (
        {}
        + block.with_endpoint(endpoint)
        + block.with_target_role_arn(target_role_arn)
      ),
      with_authorization_api_key_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"authorization_api_key_name" expected to be of type "string"';
        {
          authorization_api_key_name: converted,
        }
      ),
      with_authorization_api_key_value(value):: (
        local converted = value;
        assert std.isString(converted) : '"authorization_api_key_value" expected to be of type "string"';
        {
          authorization_api_key_value: converted,
        }
      ),
      with_endpoint(value):: (
        local converted = value;
        assert std.isString(converted) : '"endpoint" expected to be of type "string"';
        {
          endpoint: converted,
        }
      ),
      with_http_method(value):: (
        local converted = value;
        assert std.isString(converted) : '"http_method" expected to be of type "string"';
        {
          http_method: converted,
        }
      ),
      with_target_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"target_role_arn" expected to be of type "string"';
        {
          target_role_arn: converted,
        }
      ),
    },
    sqs_notification_configuration:: {
      local block = self,
      new():: (
        {}
      ),
    },
    with_https_notification_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        https_notification_configuration: value,
      }
    ),
    with_sqs_notification_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sqs_notification_configuration: value,
      }
    ),
    with_https_notification_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        https_notification_configuration+: converted,
      }
    ),
    with_sqs_notification_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sqs_notification_configuration+: converted,
      }
    ),
  },
  with_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration: value,
    }
  ),
  with_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration+: converted,
    }
  ),
}
