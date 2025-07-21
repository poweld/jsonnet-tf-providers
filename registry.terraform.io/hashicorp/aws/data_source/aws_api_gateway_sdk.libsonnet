{
  local block = self,
  new(rest_api_id, sdk_type, stage_name):: (
    {}
    + block.with_rest_api_id(rest_api_id)
    + block.with_sdk_type(sdk_type)
    + block.with_stage_name(stage_name)
  ),
  with_body(value):: (
    local converted = value;
    assert std.isString(converted) : '"body" expected to be of type "string"';
    {
      body: converted,
    }
  ),
  with_content_disposition(value):: (
    local converted = value;
    assert std.isString(converted) : '"content_disposition" expected to be of type "string"';
    {
      content_disposition: converted,
    }
  ),
  with_content_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"content_type" expected to be of type "string"';
    {
      content_type: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_parameters(value):: (
    local converted = value;
    assert std.isObject(converted) : '"parameters" expected to be of type "map"';
    {
      parameters: converted,
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
  with_rest_api_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"rest_api_id" expected to be of type "string"';
    {
      rest_api_id: converted,
    }
  ),
  with_sdk_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"sdk_type" expected to be of type "string"';
    {
      sdk_type: converted,
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
