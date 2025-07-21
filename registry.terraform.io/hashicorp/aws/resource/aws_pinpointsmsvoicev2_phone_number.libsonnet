{
  local block = self,
  new(iso_country_code, message_type, number_capabilities, number_type):: (
    {}
    + block.with_iso_country_code(iso_country_code)
    + block.with_message_type(message_type)
    + block.with_number_capabilities(number_capabilities)
    + block.with_number_type(number_type)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_deletion_protection_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"deletion_protection_enabled" expected to be of type "bool"';
    {
      deletion_protection_enabled: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_iso_country_code(value):: (
    local converted = value;
    assert std.isString(converted) : '"iso_country_code" expected to be of type "string"';
    {
      iso_country_code: converted,
    }
  ),
  with_message_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"message_type" expected to be of type "string"';
    {
      message_type: converted,
    }
  ),
  with_monthly_leasing_price(value):: (
    local converted = value;
    assert std.isString(converted) : '"monthly_leasing_price" expected to be of type "string"';
    {
      monthly_leasing_price: converted,
    }
  ),
  with_number_capabilities(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"number_capabilities" expected to be of type "set"';
    {
      number_capabilities: converted,
    }
  ),
  with_number_capabilities_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"number_capabilities" expected to be of type "set"';
    {
      number_capabilities+: converted,
    }
  ),
  with_number_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"number_type" expected to be of type "string"';
    {
      number_type: converted,
    }
  ),
  with_opt_out_list_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"opt_out_list_name" expected to be of type "string"';
    {
      opt_out_list_name: converted,
    }
  ),
  with_phone_number(value):: (
    local converted = value;
    assert std.isString(converted) : '"phone_number" expected to be of type "string"';
    {
      phone_number: converted,
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
  with_registration_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"registration_id" expected to be of type "string"';
    {
      registration_id: converted,
    }
  ),
  with_self_managed_opt_outs_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"self_managed_opt_outs_enabled" expected to be of type "bool"';
    {
      self_managed_opt_outs_enabled: converted,
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
  with_two_way_channel_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"two_way_channel_arn" expected to be of type "string"';
    {
      two_way_channel_arn: converted,
    }
  ),
  with_two_way_channel_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"two_way_channel_enabled" expected to be of type "bool"';
    {
      two_way_channel_enabled: converted,
    }
  ),
  with_two_way_channel_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"two_way_channel_role" expected to be of type "string"';
    {
      two_way_channel_role: converted,
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
