{
  local block = self,
  new(account_id, email):: (
    {}
    + block.with_account_id(account_id)
    + block.with_email(email)
  ),
  with_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_id" expected to be of type "string"';
    {
      account_id: converted,
    }
  ),
  with_administrator_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"administrator_account_id" expected to be of type "string"';
    {
      administrator_account_id: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_email(value):: (
    local converted = value;
    assert std.isString(converted) : '"email" expected to be of type "string"';
    {
      email: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_invitation_disable_email_notification(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"invitation_disable_email_notification" expected to be of type "bool"';
    {
      invitation_disable_email_notification: converted,
    }
  ),
  with_invitation_message(value):: (
    local converted = value;
    assert std.isString(converted) : '"invitation_message" expected to be of type "string"';
    {
      invitation_message: converted,
    }
  ),
  with_invite(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"invite" expected to be of type "bool"';
    {
      invite: converted,
    }
  ),
  with_invited_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"invited_at" expected to be of type "string"';
    {
      invited_at: converted,
    }
  ),
  with_master_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"master_account_id" expected to be of type "string"';
    {
      master_account_id: converted,
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
  with_relationship_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"relationship_status" expected to be of type "string"';
    {
      relationship_status: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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
  with_updated_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"updated_at" expected to be of type "string"';
    {
      updated_at: converted,
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
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
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
