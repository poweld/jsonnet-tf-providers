{
  local block = self,
  new(application_arn, scope):: (
    {}
    + block.with_application_arn(application_arn)
    + block.with_scope(scope)
  ),
  with_application_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_arn" expected to be of type "string"';
    {
      application_arn: converted,
    }
  ),
  with_authorized_targets(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"authorized_targets" expected to be of type "list"';
    {
      authorized_targets: converted,
    }
  ),
  with_authorized_targets_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"authorized_targets" expected to be of type "list"';
    {
      authorized_targets+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  with_scope(value):: (
    local converted = value;
    assert std.isString(converted) : '"scope" expected to be of type "string"';
    {
      scope: converted,
    }
  ),
}
