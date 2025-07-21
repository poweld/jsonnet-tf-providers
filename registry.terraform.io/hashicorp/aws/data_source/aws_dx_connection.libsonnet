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
  with_aws_device(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_device" expected to be of type "string"';
    {
      aws_device: converted,
    }
  ),
  with_bandwidth(value):: (
    local converted = value;
    assert std.isString(converted) : '"bandwidth" expected to be of type "string"';
    {
      bandwidth: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_location(value):: (
    local converted = value;
    assert std.isString(converted) : '"location" expected to be of type "string"';
    {
      location: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_owner_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_account_id" expected to be of type "string"';
    {
      owner_account_id: converted,
    }
  ),
  with_partner_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"partner_name" expected to be of type "string"';
    {
      partner_name: converted,
    }
  ),
  with_provider_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_name" expected to be of type "string"';
    {
      provider_name: converted,
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
  with_vlan_id(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"vlan_id" expected to be of type "number"';
    {
      vlan_id: converted,
    }
  ),
}
