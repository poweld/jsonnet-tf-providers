{
  local block = self,
  new(display_name, iam_service_role_arn, identity_center_instance_arn):: (
    {}
    + block.with_display_name(display_name)
    + block.with_iam_service_role_arn(iam_service_role_arn)
    + block.with_identity_center_instance_arn(identity_center_instance_arn)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  '#with_description':: 'A description of the Amazon Q application.',
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  '#with_display_name':: 'The display name of the Amazon Q application.',
  with_display_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"display_name" expected to be of type "string"';
    {
      display_name: converted,
    }
  ),
  '#with_iam_service_role_arn':: 'The Amazon Resource Name (ARN) of the IAM service role that provides permissions for the Amazon Q application.',
  with_iam_service_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_service_role_arn" expected to be of type "string"';
    {
      iam_service_role_arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_identity_center_application_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_center_application_arn" expected to be of type "string"';
    {
      identity_center_application_arn: converted,
    }
  ),
  '#with_identity_center_instance_arn':: 'ARN of the IAM Identity Center instance you are either creating for—or connecting to—your Amazon Q Business application',
  with_identity_center_instance_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_center_instance_arn" expected to be of type "string"';
    {
      identity_center_instance_arn: converted,
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
  attachments_configuration:: {
    local block = self,
    new(attachments_control_mode):: (
      {}
      + block.with_attachments_control_mode(attachments_control_mode)
    ),
    '#with_attachments_control_mode':: 'Status information about whether file upload functionality is activated or deactivated for your end user.',
    with_attachments_control_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"attachments_control_mode" expected to be of type "string"';
      {
        attachments_control_mode: converted,
      }
    ),
  },
  encryption_configuration:: {
    local block = self,
    new(kms_key_id):: (
      {}
      + block.with_kms_key_id(kms_key_id)
    ),
    '#with_kms_key_id':: "The identifier of the AWS KMS key that is used to encrypt your data. Amazon Q doesn't support asymmetric keys.",
    with_kms_key_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
      {
        kms_key_id: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_create':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    '#with_delete':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    '#with_update':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_attachments_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      attachments_configuration: value,
    }
  ),
  with_encryption_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_configuration: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_attachments_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      attachments_configuration+: converted,
    }
  ),
  with_encryption_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_configuration+: converted,
    }
  ),
}
