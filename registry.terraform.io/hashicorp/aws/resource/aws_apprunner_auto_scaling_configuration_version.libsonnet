{
  local block = self,
  new(auto_scaling_configuration_name):: (
    {}
    + block.with_auto_scaling_configuration_name(auto_scaling_configuration_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_auto_scaling_configuration_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"auto_scaling_configuration_name" expected to be of type "string"';
    {
      auto_scaling_configuration_name: converted,
    }
  ),
  with_auto_scaling_configuration_revision(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"auto_scaling_configuration_revision" expected to be of type "number"';
    {
      auto_scaling_configuration_revision: converted,
    }
  ),
  with_has_associated_service(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"has_associated_service" expected to be of type "bool"';
    {
      has_associated_service: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_is_default(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"is_default" expected to be of type "bool"';
    {
      is_default: converted,
    }
  ),
  with_latest(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"latest" expected to be of type "bool"';
    {
      latest: converted,
    }
  ),
  with_max_concurrency(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_concurrency" expected to be of type "number"';
    {
      max_concurrency: converted,
    }
  ),
  with_max_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_size" expected to be of type "number"';
    {
      max_size: converted,
    }
  ),
  with_min_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"min_size" expected to be of type "number"';
    {
      min_size: converted,
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
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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
