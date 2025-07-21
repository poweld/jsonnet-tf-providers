{
  local block = self,
  new(app_id, environment_name):: (
    {}
    + block.with_app_id(app_id)
    + block.with_environment_name(environment_name)
  ),
  with_app_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_id" expected to be of type "string"';
    {
      app_id: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_deployment_artifacts(value):: (
    local converted = value;
    assert std.isString(converted) : '"deployment_artifacts" expected to be of type "string"';
    {
      deployment_artifacts: converted,
    }
  ),
  with_environment_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"environment_name" expected to be of type "string"';
    {
      environment_name: converted,
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
  with_stack_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"stack_name" expected to be of type "string"';
    {
      stack_name: converted,
    }
  ),
}
