{
  local block = self,
  new(folder_id, member_id, member_type):: (
    {}
    + block.with_folder_id(folder_id)
    + block.with_member_id(member_id)
    + block.with_member_type(member_type)
  ),
  with_aws_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_account_id" expected to be of type "string"';
    {
      aws_account_id: converted,
    }
  ),
  with_folder_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"folder_id" expected to be of type "string"';
    {
      folder_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_member_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"member_id" expected to be of type "string"';
    {
      member_id: converted,
    }
  ),
  with_member_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"member_type" expected to be of type "string"';
    {
      member_type: converted,
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
