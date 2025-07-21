{
  local block = self,
  new(offering_id):: (
    {}
    + block.with_offering_id(offering_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_currency_code(value):: (
    local converted = value;
    assert std.isString(converted) : '"currency_code" expected to be of type "string"';
    {
      currency_code: converted,
    }
  ),
  with_db_instance_class(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_instance_class" expected to be of type "string"';
    {
      db_instance_class: converted,
    }
  ),
  with_duration(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"duration" expected to be of type "number"';
    {
      duration: converted,
    }
  ),
  with_fixed_price(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"fixed_price" expected to be of type "number"';
    {
      fixed_price: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_instance_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"instance_count" expected to be of type "number"';
    {
      instance_count: converted,
    }
  ),
  with_lease_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"lease_id" expected to be of type "string"';
    {
      lease_id: converted,
    }
  ),
  with_multi_az(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"multi_az" expected to be of type "bool"';
    {
      multi_az: converted,
    }
  ),
  with_offering_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"offering_id" expected to be of type "string"';
    {
      offering_id: converted,
    }
  ),
  with_offering_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"offering_type" expected to be of type "string"';
    {
      offering_type: converted,
    }
  ),
  with_product_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"product_description" expected to be of type "string"';
    {
      product_description: converted,
    }
  ),
  with_recurring_charges(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"recurring_charges" expected to be of type "list"';
    {
      recurring_charges: converted,
    }
  ),
  with_recurring_charges_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"recurring_charges" expected to be of type "list"';
    {
      recurring_charges+: converted,
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
  with_reservation_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"reservation_id" expected to be of type "string"';
    {
      reservation_id: converted,
    }
  ),
  with_start_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"start_time" expected to be of type "string"';
    {
      start_time: converted,
    }
  ),
  with_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
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
  with_usage_price(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"usage_price" expected to be of type "number"';
    {
      usage_price: converted,
    }
  ),
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
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
