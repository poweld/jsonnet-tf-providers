{
  local block = self,
  new(account_id, detector_id, name, status):: (
    {}
    + block.with_account_id(account_id)
    + block.with_detector_id(detector_id)
    + block.with_name(name)
    + block.with_status(status)
  ),
  with_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_id" expected to be of type "string"';
    {
      account_id: converted,
    }
  ),
  with_detector_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"detector_id" expected to be of type "string"';
    {
      detector_id: converted,
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
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  additional_configuration:: {
    local block = self,
    new(name, status):: (
      {}
      + block.with_name(name)
      + block.with_status(status)
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_status(value):: (
      local converted = value;
      assert std.isString(converted) : '"status" expected to be of type "string"';
      {
        status: converted,
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
