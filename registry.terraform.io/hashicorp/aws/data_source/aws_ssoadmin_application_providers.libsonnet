{
  local block = self,
  new():: (
    {}
  ),
  with_application_providers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"application_providers" expected to be of type "list"';
    {
      application_providers: converted,
    }
  ),
  with_application_providers_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"application_providers" expected to be of type "list"';
    {
      application_providers+: converted,
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
