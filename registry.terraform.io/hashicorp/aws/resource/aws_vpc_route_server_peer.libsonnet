{
  local block = self,
  new(peer_address, route_server_endpoint_id):: (
    {}
    + block.with_peer_address(peer_address)
    + block.with_route_server_endpoint_id(route_server_endpoint_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_endpoint_eni_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_eni_address" expected to be of type "string"';
    {
      endpoint_eni_address: converted,
    }
  ),
  with_endpoint_eni_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_eni_id" expected to be of type "string"';
    {
      endpoint_eni_id: converted,
    }
  ),
  with_peer_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"peer_address" expected to be of type "string"';
    {
      peer_address: converted,
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
  with_route_server_endpoint_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"route_server_endpoint_id" expected to be of type "string"';
    {
      route_server_endpoint_id: converted,
    }
  ),
  with_route_server_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"route_server_id" expected to be of type "string"';
    {
      route_server_id: converted,
    }
  ),
  with_route_server_peer_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"route_server_peer_id" expected to be of type "string"';
    {
      route_server_peer_id: converted,
    }
  ),
  with_subnet_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"subnet_id" expected to be of type "string"';
    {
      subnet_id: converted,
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
  with_vpc_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
    {
      vpc_id: converted,
    }
  ),
  bgp_options:: {
    local block = self,
    new(peer_asn):: (
      {}
      + block.with_peer_asn(peer_asn)
    ),
    with_peer_asn(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"peer_asn" expected to be of type "number"';
      {
        peer_asn: converted,
      }
    ),
    with_peer_liveness_detection(value):: (
      local converted = value;
      assert std.isString(converted) : '"peer_liveness_detection" expected to be of type "string"';
      {
        peer_liveness_detection: converted,
      }
    ),
  },
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
  },
  with_bgp_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      bgp_options: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_bgp_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      bgp_options+: converted,
    }
  ),
}
