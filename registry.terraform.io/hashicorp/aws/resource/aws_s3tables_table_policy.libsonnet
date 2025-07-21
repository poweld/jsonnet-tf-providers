{
  local block = self,
  new(name, namespace, resource_policy, table_bucket_arn):: (
    {}
    + block.with_name(name)
    + block.with_namespace(namespace)
    + block.with_resource_policy(resource_policy)
    + block.with_table_bucket_arn(table_bucket_arn)
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_namespace(value):: (
    local converted = value;
    assert std.isString(converted) : '"namespace" expected to be of type "string"';
    {
      namespace: converted,
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
  with_resource_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_policy" expected to be of type "string"';
    {
      resource_policy: converted,
    }
  ),
  with_table_bucket_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"table_bucket_arn" expected to be of type "string"';
    {
      table_bucket_arn: converted,
    }
  ),
}
