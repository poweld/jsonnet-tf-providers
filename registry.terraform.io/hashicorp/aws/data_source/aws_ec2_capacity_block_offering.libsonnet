{
  local block = self,
  new(capacity_duration_hours, instance_count, instance_type):: (
    {}
    + block.with_capacity_duration_hours(capacity_duration_hours)
    + block.with_instance_count(instance_count)
    + block.with_instance_type(instance_type)
  ),
  with_availability_zone(value):: (
    local converted = value;
    assert std.isString(converted) : '"availability_zone" expected to be of type "string"';
    {
      availability_zone: converted,
    }
  ),
  with_capacity_block_offering_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"capacity_block_offering_id" expected to be of type "string"';
    {
      capacity_block_offering_id: converted,
    }
  ),
  with_capacity_duration_hours(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"capacity_duration_hours" expected to be of type "number"';
    {
      capacity_duration_hours: converted,
    }
  ),
  with_currency_code(value):: (
    local converted = value;
    assert std.isString(converted) : '"currency_code" expected to be of type "string"';
    {
      currency_code: converted,
    }
  ),
  with_end_date_range(value):: (
    local converted = value;
    assert std.isString(converted) : '"end_date_range" expected to be of type "string"';
    {
      end_date_range: converted,
    }
  ),
  with_instance_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"instance_count" expected to be of type "number"';
    {
      instance_count: converted,
    }
  ),
  with_instance_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_type" expected to be of type "string"';
    {
      instance_type: converted,
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
  with_start_date_range(value):: (
    local converted = value;
    assert std.isString(converted) : '"start_date_range" expected to be of type "string"';
    {
      start_date_range: converted,
    }
  ),
  with_tenancy(value):: (
    local converted = value;
    assert std.isString(converted) : '"tenancy" expected to be of type "string"';
    {
      tenancy: converted,
    }
  ),
  with_upfront_fee(value):: (
    local converted = value;
    assert std.isString(converted) : '"upfront_fee" expected to be of type "string"';
    {
      upfront_fee: converted,
    }
  ),
}
