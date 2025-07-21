{
  local block = self,
  new(observability_configuration_name):: (
    {}
    + block.with_observability_configuration_name(observability_configuration_name)
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
  with_latest(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"latest" expected to be of type "bool"';
    {
      latest: converted,
    }
  ),
  with_observability_configuration_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"observability_configuration_name" expected to be of type "string"';
    {
      observability_configuration_name: converted,
    }
  ),
  with_observability_configuration_revision(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"observability_configuration_revision" expected to be of type "number"';
    {
      observability_configuration_revision: converted,
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
  trace_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_vendor(value):: (
      local converted = value;
      assert std.isString(converted) : '"vendor" expected to be of type "string"';
      {
        vendor: converted,
      }
    ),
  },
  with_trace_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      trace_configuration: value,
    }
  ),
  with_trace_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      trace_configuration+: converted,
    }
  ),
}
