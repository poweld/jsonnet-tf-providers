{
  local block = self,
  new(transit_gateway_attachment_id):: (
    {}
    + block.with_transit_gateway_attachment_id(transit_gateway_attachment_id)
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
  with_transit_gateway_attachment_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_gateway_attachment_id" expected to be of type "string"';
    {
      transit_gateway_attachment_id: converted,
    }
  ),
  with_transit_gateway_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_gateway_id" expected to be of type "string"';
    {
      transit_gateway_id: converted,
    }
  ),
}
