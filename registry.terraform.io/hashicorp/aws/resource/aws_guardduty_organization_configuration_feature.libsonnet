{
  local block = self,
  new(auto_enable, detector_id, name):: (
    {}
    + block.with_auto_enable(auto_enable)
    + block.with_detector_id(detector_id)
    + block.with_name(name)
  ),
  with_auto_enable(value):: (
    local converted = value;
    assert std.isString(converted) : '"auto_enable" expected to be of type "string"';
    {
      auto_enable: converted,
    }
  ),
  with_detector_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"detector_id" expected to be of type "string"';
    {
      detector_id: converted,
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
  additional_configuration:: {
    local block = self,
    new(auto_enable, name):: (
      {}
      + block.with_auto_enable(auto_enable)
      + block.with_name(name)
    ),
    with_auto_enable(value):: (
      local converted = value;
      assert std.isString(converted) : '"auto_enable" expected to be of type "string"';
      {
        auto_enable: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
  },
  with_additional_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      additional_configuration: value,
    }
  ),
  with_additional_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      additional_configuration+: converted,
    }
  ),
}
