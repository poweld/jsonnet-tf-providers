{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_concurrent_jobs(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"concurrent_jobs" expected to be of type "number"';
    {
      concurrent_jobs: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
  with_pricing_plan(value):: (
    local converted = value;
    assert std.isString(converted) : '"pricing_plan" expected to be of type "string"';
    {
      pricing_plan: converted,
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
  reservation_plan_settings:: {
    local block = self,
    new(commitment, renewal_type, reserved_slots):: (
      {}
      + block.with_commitment(commitment)
      + block.with_renewal_type(renewal_type)
      + block.with_reserved_slots(reserved_slots)
    ),
    with_commitment(value):: (
      local converted = value;
      assert std.isString(converted) : '"commitment" expected to be of type "string"';
      {
        commitment: converted,
      }
    ),
    with_renewal_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"renewal_type" expected to be of type "string"';
      {
        renewal_type: converted,
      }
    ),
    with_reserved_slots(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"reserved_slots" expected to be of type "number"';
      {
        reserved_slots: converted,
      }
    ),
  },
  with_reservation_plan_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      reservation_plan_settings: value,
    }
  ),
  with_reservation_plan_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      reservation_plan_settings+: converted,
    }
  ),
}
