{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_id" expected to be of type "string"';
    {
      account_id: converted,
    }
  ),
  with_alias(value):: (
    local converted = value;
    assert std.isString(converted) : '"alias" expected to be of type "string"';
    {
      alias: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
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
  configuration:: {
    local block = self,
    new(supporting_access_point):: (
      {}
      + block.with_supporting_access_point(supporting_access_point)
    ),
    with_allowed_features(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_features" expected to be of type "set"';
      {
        allowed_features: converted,
      }
    ),
    with_allowed_features_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_features" expected to be of type "set"';
      {
        allowed_features+: converted,
      }
    ),
    with_cloud_watch_metrics_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"cloud_watch_metrics_enabled" expected to be of type "bool"';
      {
        cloud_watch_metrics_enabled: converted,
      }
    ),
    with_supporting_access_point(value):: (
      local converted = value;
      assert std.isString(converted) : '"supporting_access_point" expected to be of type "string"';
      {
        supporting_access_point: converted,
      }
    ),
    transformation_configuration:: {
      local block = self,
      new(actions):: (
        {}
        + block.with_actions(actions)
      ),
      with_actions(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"actions" expected to be of type "set"';
        {
          actions: converted,
        }
      ),
      with_actions_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"actions" expected to be of type "set"';
        {
          actions+: converted,
        }
      ),
      content_transformation:: {
        local block = self,
        new():: (
          {}
        ),
        aws_lambda:: {
          local block = self,
          new(function_arn):: (
            {}
            + block.with_function_arn(function_arn)
          ),
          with_function_arn(value):: (
            local converted = value;
            assert std.isString(converted) : '"function_arn" expected to be of type "string"';
            {
              function_arn: converted,
            }
          ),
          with_function_payload(value):: (
            local converted = value;
            assert std.isString(converted) : '"function_payload" expected to be of type "string"';
            {
              function_payload: converted,
            }
          ),
        },
        with_aws_lambda(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            aws_lambda: value,
          }
        ),
        with_aws_lambda_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            aws_lambda+: converted,
          }
        ),
      },
      with_content_transformation(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          content_transformation: value,
        }
      ),
      with_content_transformation_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          content_transformation+: converted,
        }
      ),
    },
    with_transformation_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        transformation_configuration: value,
      }
    ),
    with_transformation_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        transformation_configuration+: converted,
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
