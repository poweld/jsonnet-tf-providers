{
  local block = self,
  new(detector_id):: (
    {}
    + block.with_detector_id(detector_id)
  ),
  with_detector_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"detector_id" expected to be of type "string"';
    {
      detector_id: converted,
    }
  ),
  with_finding_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"finding_ids" expected to be of type "list"';
    {
      finding_ids: converted,
    }
  ),
  with_finding_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"finding_ids" expected to be of type "list"';
    {
      finding_ids+: converted,
    }
  ),
  with_has_findings(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"has_findings" expected to be of type "bool"';
    {
      has_findings: converted,
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
}
