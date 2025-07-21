{
  local block = self,
  new(peer_region, peer_transit_gateway_id, transit_gateway_id):: (
    {}
    + block.with_peer_region(peer_region)
    + block.with_peer_transit_gateway_id(peer_transit_gateway_id)
    + block.with_transit_gateway_id(transit_gateway_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_peer_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"peer_account_id" expected to be of type "string"';
    {
      peer_account_id: converted,
    }
  ),
  with_peer_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"peer_region" expected to be of type "string"';
    {
      peer_region: converted,
    }
  ),
  with_peer_transit_gateway_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"peer_transit_gateway_id" expected to be of type "string"';
    {
      peer_transit_gateway_id: converted,
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
  with_transit_gateway_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_gateway_id" expected to be of type "string"';
    {
      transit_gateway_id: converted,
    }
  ),
  options:: {
    local block = self,
    new():: (
      {}
    ),
    with_dynamic_routing(value):: (
      local converted = value;
      assert std.isString(converted) : '"dynamic_routing" expected to be of type "string"';
      {
        dynamic_routing: converted,
      }
    ),
  },
  with_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      options: value,
    }
  ),
  with_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      options+: converted,
    }
  ),
}
