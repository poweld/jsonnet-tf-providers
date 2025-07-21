{
  local block = self,
  new(deployment_duration_in_minutes, growth_factor, name, replicate_to):: (
    {}
    + block.with_deployment_duration_in_minutes(deployment_duration_in_minutes)
    + block.with_growth_factor(growth_factor)
    + block.with_name(name)
    + block.with_replicate_to(replicate_to)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_deployment_duration_in_minutes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"deployment_duration_in_minutes" expected to be of type "number"';
    {
      deployment_duration_in_minutes: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_final_bake_time_in_minutes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"final_bake_time_in_minutes" expected to be of type "number"';
    {
      final_bake_time_in_minutes: converted,
    }
  ),
  with_growth_factor(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"growth_factor" expected to be of type "number"';
    {
      growth_factor: converted,
    }
  ),
  with_growth_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"growth_type" expected to be of type "string"';
    {
      growth_type: converted,
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
  with_replicate_to(value):: (
    local converted = value;
    assert std.isString(converted) : '"replicate_to" expected to be of type "string"';
    {
      replicate_to: converted,
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
}
