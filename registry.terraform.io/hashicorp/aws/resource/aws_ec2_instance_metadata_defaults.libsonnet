{
  local block = self,
  new():: (
    {}
  ),
  with_http_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"http_endpoint" expected to be of type "string"';
    {
      http_endpoint: converted,
    }
  ),
  with_http_put_response_hop_limit(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"http_put_response_hop_limit" expected to be of type "number"';
    {
      http_put_response_hop_limit: converted,
    }
  ),
  with_http_tokens(value):: (
    local converted = value;
    assert std.isString(converted) : '"http_tokens" expected to be of type "string"';
    {
      http_tokens: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_instance_metadata_tags(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_metadata_tags" expected to be of type "string"';
    {
      instance_metadata_tags: converted,
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
