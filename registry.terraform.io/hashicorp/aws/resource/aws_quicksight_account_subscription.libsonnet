{
  local block = self,
  new(account_name, authentication_method, edition, notification_email):: (
    {}
    + block.with_account_name(account_name)
    + block.with_authentication_method(authentication_method)
    + block.with_edition(edition)
    + block.with_notification_email(notification_email)
  ),
  with_account_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_name" expected to be of type "string"';
    {
      account_name: converted,
    }
  ),
  with_account_subscription_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_subscription_status" expected to be of type "string"';
    {
      account_subscription_status: converted,
    }
  ),
  with_active_directory_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"active_directory_name" expected to be of type "string"';
    {
      active_directory_name: converted,
    }
  ),
  with_admin_group(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"admin_group" expected to be of type "list"';
    {
      admin_group: converted,
    }
  ),
  with_admin_group_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"admin_group" expected to be of type "list"';
    {
      admin_group+: converted,
    }
  ),
  with_authentication_method(value):: (
    local converted = value;
    assert std.isString(converted) : '"authentication_method" expected to be of type "string"';
    {
      authentication_method: converted,
    }
  ),
  with_author_group(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"author_group" expected to be of type "list"';
    {
      author_group: converted,
    }
  ),
  with_author_group_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"author_group" expected to be of type "list"';
    {
      author_group+: converted,
    }
  ),
  with_aws_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_account_id" expected to be of type "string"';
    {
      aws_account_id: converted,
    }
  ),
  with_contact_number(value):: (
    local converted = value;
    assert std.isString(converted) : '"contact_number" expected to be of type "string"';
    {
      contact_number: converted,
    }
  ),
  with_directory_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"directory_id" expected to be of type "string"';
    {
      directory_id: converted,
    }
  ),
  with_edition(value):: (
    local converted = value;
    assert std.isString(converted) : '"edition" expected to be of type "string"';
    {
      edition: converted,
    }
  ),
  with_email_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"email_address" expected to be of type "string"';
    {
      email_address: converted,
    }
  ),
  with_first_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"first_name" expected to be of type "string"';
    {
      first_name: converted,
    }
  ),
  with_iam_identity_center_instance_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_identity_center_instance_arn" expected to be of type "string"';
    {
      iam_identity_center_instance_arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_last_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_name" expected to be of type "string"';
    {
      last_name: converted,
    }
  ),
  with_notification_email(value):: (
    local converted = value;
    assert std.isString(converted) : '"notification_email" expected to be of type "string"';
    {
      notification_email: converted,
    }
  ),
  with_reader_group(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"reader_group" expected to be of type "list"';
    {
      reader_group: converted,
    }
  ),
  with_reader_group_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"reader_group" expected to be of type "list"';
    {
      reader_group+: converted,
    }
  ),
  with_realm(value):: (
    local converted = value;
    assert std.isString(converted) : '"realm" expected to be of type "string"';
    {
      realm: converted,
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
    with_read(value):: (
      local converted = value;
      assert std.isString(converted) : '"read" expected to be of type "string"';
      {
        read: converted,
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
