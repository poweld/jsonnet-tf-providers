{
  local block = self,
  new(share_arn):: (
    {}
    + block.with_share_arn(share_arn)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_invitation_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"invitation_arn" expected to be of type "string"';
    {
      invitation_arn: converted,
    }
  ),
  with_receiver_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"receiver_account_id" expected to be of type "string"';
    {
      receiver_account_id: converted,
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
  with_resources(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"resources" expected to be of type "list"';
    {
      resources: converted,
    }
  ),
  with_resources_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"resources" expected to be of type "list"';
    {
      resources+: converted,
    }
  ),
  with_sender_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"sender_account_id" expected to be of type "string"';
    {
      sender_account_id: converted,
    }
  ),
  with_share_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"share_arn" expected to be of type "string"';
    {
      share_arn: converted,
    }
  ),
  with_share_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"share_id" expected to be of type "string"';
    {
      share_id: converted,
    }
  ),
  with_share_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"share_name" expected to be of type "string"';
    {
      share_name: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
  },
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
