{
  local block = self,
  new(reserved_cache_nodes_offering_id):: (
    {}
    + block.with_reserved_cache_nodes_offering_id(reserved_cache_nodes_offering_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_cache_node_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"cache_node_count" expected to be of type "number"';
    {
      cache_node_count: converted,
    }
  ),
  with_cache_node_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"cache_node_type" expected to be of type "string"';
    {
      cache_node_type: converted,
    }
  ),
  with_duration(value):: (
    local converted = value;
    assert std.isString(converted) : '"duration" expected to be of type "string"';
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
  with_reserved_cache_nodes_offering_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"reserved_cache_nodes_offering_id" expected to be of type "string"';
    {
      reserved_cache_nodes_offering_id: converted,
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
    '#with_create':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    '#with_delete':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    '#with_update':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
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
