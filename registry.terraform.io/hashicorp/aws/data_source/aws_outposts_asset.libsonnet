{
  local block = self,
  new(arn, asset_id):: (
    {}
    + block.with_arn(arn)
    + block.with_asset_id(asset_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_asset_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"asset_id" expected to be of type "string"';
    {
      asset_id: converted,
    }
  ),
  with_asset_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"asset_type" expected to be of type "string"';
    {
      asset_type: converted,
    }
  ),
  with_host_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"host_id" expected to be of type "string"';
    {
      host_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_rack_elevation(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"rack_elevation" expected to be of type "number"';
    {
      rack_elevation: converted,
    }
  ),
  with_rack_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"rack_id" expected to be of type "string"';
    {
      rack_id: converted,
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
}
