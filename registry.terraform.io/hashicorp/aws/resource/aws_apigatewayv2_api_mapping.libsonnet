{
  local block = self,
  new(api_id, domain_name, stage):: (
    {}
    + block.with_api_id(api_id)
    + block.with_domain_name(domain_name)
    + block.with_stage(stage)
  ),
  with_api_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_id" expected to be of type "string"';
    {
      api_id: converted,
    }
  ),
  with_api_mapping_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_mapping_key" expected to be of type "string"';
    {
      api_mapping_key: converted,
    }
  ),
  with_domain_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
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
  with_stage(value):: (
    local converted = value;
    assert std.isString(converted) : '"stage" expected to be of type "string"';
    {
      stage: converted,
    }
  ),
}
