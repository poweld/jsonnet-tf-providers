{
  local block = self,
  new(application_id):: (
    {}
    + block.with_application_id(application_id)
  ),
  with_application_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_id" expected to be of type "string"';
    {
      application_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  with_required_capabilities(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"required_capabilities" expected to be of type "set"';
    {
      required_capabilities: converted,
    }
  ),
  with_required_capabilities_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"required_capabilities" expected to be of type "set"';
    {
      required_capabilities+: converted,
    }
  ),
  with_semantic_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"semantic_version" expected to be of type "string"';
    {
      semantic_version: converted,
    }
  ),
  with_source_code_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_code_url" expected to be of type "string"';
    {
      source_code_url: converted,
    }
  ),
  with_template_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"template_url" expected to be of type "string"';
    {
      template_url: converted,
    }
  ),
}
