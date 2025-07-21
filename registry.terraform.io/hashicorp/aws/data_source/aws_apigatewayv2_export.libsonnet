{
  local block = self,
  new(api_id, output_type, specification):: (
    {}
    + block.with_api_id(api_id)
    + block.with_output_type(output_type)
    + block.with_specification(specification)
  ),
  with_api_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_id" expected to be of type "string"';
    {
      api_id: converted,
    }
  ),
  with_body(value):: (
    local converted = value;
    assert std.isString(converted) : '"body" expected to be of type "string"';
    {
      body: converted,
    }
  ),
  with_export_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"export_version" expected to be of type "string"';
    {
      export_version: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_include_extensions(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_extensions" expected to be of type "bool"';
    {
      include_extensions: converted,
    }
  ),
  with_output_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"output_type" expected to be of type "string"';
    {
      output_type: converted,
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
  with_specification(value):: (
    local converted = value;
    assert std.isString(converted) : '"specification" expected to be of type "string"';
    {
      specification: converted,
    }
  ),
  with_stage_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"stage_name" expected to be of type "string"';
    {
      stage_name: converted,
    }
  ),
}
