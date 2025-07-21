{
  local block = self,
  new(application_arn):: (
    {}
    + block.with_application_arn(application_arn)
  ),
  with_application_account(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_account" expected to be of type "string"';
    {
      application_account: converted,
    }
  ),
  with_application_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_arn" expected to be of type "string"';
    {
      application_arn: converted,
    }
  ),
  with_application_provider_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_provider_arn" expected to be of type "string"';
    {
      application_provider_arn: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_instance_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_arn" expected to be of type "string"';
    {
      instance_arn: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_portal_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"portal_options" expected to be of type "list"';
    {
      portal_options: converted,
    }
  ),
  with_portal_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"portal_options" expected to be of type "list"';
    {
      portal_options+: converted,
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
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
}
