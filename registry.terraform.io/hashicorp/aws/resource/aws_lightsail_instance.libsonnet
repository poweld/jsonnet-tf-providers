{
  local block = self,
  new(availability_zone, blueprint_id, bundle_id, name):: (
    {}
    + block.with_availability_zone(availability_zone)
    + block.with_blueprint_id(blueprint_id)
    + block.with_bundle_id(bundle_id)
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_availability_zone(value):: (
    local converted = value;
    assert std.isString(converted) : '"availability_zone" expected to be of type "string"';
    {
      availability_zone: converted,
    }
  ),
  with_blueprint_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"blueprint_id" expected to be of type "string"';
    {
      blueprint_id: converted,
    }
  ),
  with_bundle_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"bundle_id" expected to be of type "string"';
    {
      bundle_id: converted,
    }
  ),
  with_cpu_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"cpu_count" expected to be of type "number"';
    {
      cpu_count: converted,
    }
  ),
  with_created_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_at" expected to be of type "string"';
    {
      created_at: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_ip_address_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"ip_address_type" expected to be of type "string"';
    {
      ip_address_type: converted,
    }
  ),
  with_ipv6_addresses(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ipv6_addresses" expected to be of type "list"';
    {
      ipv6_addresses: converted,
    }
  ),
  with_ipv6_addresses_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ipv6_addresses" expected to be of type "list"';
    {
      ipv6_addresses+: converted,
    }
  ),
  with_is_static_ip(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"is_static_ip" expected to be of type "bool"';
    {
      is_static_ip: converted,
    }
  ),
  with_key_pair_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_pair_name" expected to be of type "string"';
    {
      key_pair_name: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_private_ip_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"private_ip_address" expected to be of type "string"';
    {
      private_ip_address: converted,
    }
  ),
  with_public_ip_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"public_ip_address" expected to be of type "string"';
    {
      public_ip_address: converted,
    }
  ),
  with_ram_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"ram_size" expected to be of type "number"';
    {
      ram_size: converted,
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
  with_user_data(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_data" expected to be of type "string"';
    {
      user_data: converted,
    }
  ),
  with_username(value):: (
    local converted = value;
    assert std.isString(converted) : '"username" expected to be of type "string"';
    {
      username: converted,
    }
  ),
  add_on:: {
    local block = self,
    new(snapshot_time, status, type):: (
      {}
      + block.with_snapshot_time(snapshot_time)
      + block.with_status(status)
      + block.with_type(type)
    ),
    with_snapshot_time(value):: (
      local converted = value;
      assert std.isString(converted) : '"snapshot_time" expected to be of type "string"';
      {
        snapshot_time: converted,
      }
    ),
    with_status(value):: (
      local converted = value;
      assert std.isString(converted) : '"status" expected to be of type "string"';
      {
        status: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  with_add_on(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      add_on: value,
    }
  ),
  with_add_on_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      add_on+: converted,
    }
  ),
}
