{
  local block = self,
  new(control_status, standards_control_arn):: (
    {}
    + block.with_control_status(control_status)
    + block.with_standards_control_arn(standards_control_arn)
  ),
  with_control_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"control_id" expected to be of type "string"';
    {
      control_id: converted,
    }
  ),
  with_control_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"control_status" expected to be of type "string"';
    {
      control_status: converted,
    }
  ),
  with_control_status_updated_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"control_status_updated_at" expected to be of type "string"';
    {
      control_status_updated_at: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_disabled_reason(value):: (
    local converted = value;
    assert std.isString(converted) : '"disabled_reason" expected to be of type "string"';
    {
      disabled_reason: converted,
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
  with_related_requirements(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"related_requirements" expected to be of type "list"';
    {
      related_requirements: converted,
    }
  ),
  with_related_requirements_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"related_requirements" expected to be of type "list"';
    {
      related_requirements+: converted,
    }
  ),
  with_remediation_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"remediation_url" expected to be of type "string"';
    {
      remediation_url: converted,
    }
  ),
  with_severity_rating(value):: (
    local converted = value;
    assert std.isString(converted) : '"severity_rating" expected to be of type "string"';
    {
      severity_rating: converted,
    }
  ),
  with_standards_control_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"standards_control_arn" expected to be of type "string"';
    {
      standards_control_arn: converted,
    }
  ),
  with_title(value):: (
    local converted = value;
    assert std.isString(converted) : '"title" expected to be of type "string"';
    {
      title: converted,
    }
  ),
}
