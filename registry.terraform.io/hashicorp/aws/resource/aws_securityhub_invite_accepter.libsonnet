{
  local block = self,
  new(master_id):: (
    {}
    + block.with_master_id(master_id)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_invitation_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"invitation_id" expected to be of type "string"';
    {
      invitation_id: converted,
    }
  ),
  with_master_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"master_id" expected to be of type "string"';
    {
      master_id: converted,
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
