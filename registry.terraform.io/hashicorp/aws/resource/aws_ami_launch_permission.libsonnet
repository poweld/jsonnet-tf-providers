{
  local block = self,
  new(image_id):: (
    {}
    + block.with_image_id(image_id)
  ),
  with_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_id" expected to be of type "string"';
    {
      account_id: converted,
    }
  ),
  with_group(value):: (
    local converted = value;
    assert std.isString(converted) : '"group" expected to be of type "string"';
    {
      group: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_image_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_id" expected to be of type "string"';
    {
      image_id: converted,
    }
  ),
  with_organization_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"organization_arn" expected to be of type "string"';
    {
      organization_arn: converted,
    }
  ),
  with_organizational_unit_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"organizational_unit_arn" expected to be of type "string"';
    {
      organizational_unit_arn: converted,
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
