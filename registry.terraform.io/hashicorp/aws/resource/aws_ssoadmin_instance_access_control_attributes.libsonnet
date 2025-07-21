{
  local block = self,
  new(instance_arn):: (
    {}
    + block.with_instance_arn(instance_arn)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_instance_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_arn" expected to be of type "string"';
    {
      instance_arn: converted,
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
  with_status_reason(value):: (
    local converted = value;
    assert std.isString(converted) : '"status_reason" expected to be of type "string"';
    {
      status_reason: converted,
    }
  ),
  attribute:: {
    local block = self,
    new(key):: (
      {}
      + block.with_key(key)
    ),
    with_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
      }
    ),
    value:: {
      local block = self,
      new(source):: (
        {}
        + block.with_source(source)
      ),
      with_source(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"source" expected to be of type "set"';
        {
          source: converted,
        }
      ),
      with_source_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"source" expected to be of type "set"';
        {
          source+: converted,
        }
      ),
    },
    with_value(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        value: value,
      }
    ),
    with_value_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        value+: converted,
      }
    ),
  },
  with_attribute(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      attribute: value,
    }
  ),
  with_attribute_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      attribute+: converted,
    }
  ),
}
