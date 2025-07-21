{
  local block = self,
  new():: (
    {}
  ),
  with_aws_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_region" expected to be of type "string"';
    {
      aws_region: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_templates(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"templates" expected to be of type "list"';
    {
      templates: converted,
    }
  ),
  with_templates_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"templates" expected to be of type "list"';
    {
      templates+: converted,
    }
  ),
}
