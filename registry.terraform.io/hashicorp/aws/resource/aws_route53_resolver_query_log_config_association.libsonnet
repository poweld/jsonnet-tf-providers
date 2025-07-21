{
  local block = self,
  new(resolver_query_log_config_id, resource_id):: (
    {}
    + block.with_resolver_query_log_config_id(resolver_query_log_config_id)
    + block.with_resource_id(resource_id)
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
  with_resolver_query_log_config_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"resolver_query_log_config_id" expected to be of type "string"';
    {
      resolver_query_log_config_id: converted,
    }
  ),
  with_resource_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_id" expected to be of type "string"';
    {
      resource_id: converted,
    }
  ),
}
