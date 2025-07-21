{
  local block = self,
  new(admin_account_id):: (
    {}
    + block.with_admin_account_id(admin_account_id)
  ),
  with_admin_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"admin_account_id" expected to be of type "string"';
    {
      admin_account_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_organization_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"organization_id" expected to be of type "string"';
    {
      organization_id: converted,
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
