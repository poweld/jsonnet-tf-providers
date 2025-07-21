{
  local block = self,
  new(model_arn, model_units, provisioned_model_name):: (
    {}
    + block.with_model_arn(model_arn)
    + block.with_model_units(model_units)
    + block.with_provisioned_model_name(provisioned_model_name)
  ),
  with_commitment_duration(value):: (
    local converted = value;
    assert std.isString(converted) : '"commitment_duration" expected to be of type "string"';
    {
      commitment_duration: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_model_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"model_arn" expected to be of type "string"';
    {
      model_arn: converted,
    }
  ),
  with_model_units(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"model_units" expected to be of type "number"';
    {
      model_units: converted,
    }
  ),
  with_provisioned_model_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"provisioned_model_arn" expected to be of type "string"';
    {
      provisioned_model_arn: converted,
    }
  ),
  with_provisioned_model_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"provisioned_model_name" expected to be of type "string"';
    {
      provisioned_model_name: converted,
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
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_create':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
  },
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
