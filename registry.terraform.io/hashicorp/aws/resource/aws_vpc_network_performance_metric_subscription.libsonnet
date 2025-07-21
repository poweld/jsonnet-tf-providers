{
  local block = self,
  new(destination, source):: (
    {}
    + block.with_destination(destination)
    + block.with_source(source)
  ),
  with_destination(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination" expected to be of type "string"';
    {
      destination: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_metric(value):: (
    local converted = value;
    assert std.isString(converted) : '"metric" expected to be of type "string"';
    {
      metric: converted,
    }
  ),
  with_period(value):: (
    local converted = value;
    assert std.isString(converted) : '"period" expected to be of type "string"';
    {
      period: converted,
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
  with_source(value):: (
    local converted = value;
    assert std.isString(converted) : '"source" expected to be of type "string"';
    {
      source: converted,
    }
  ),
  with_statistic(value):: (
    local converted = value;
    assert std.isString(converted) : '"statistic" expected to be of type "string"';
    {
      statistic: converted,
    }
  ),
}
