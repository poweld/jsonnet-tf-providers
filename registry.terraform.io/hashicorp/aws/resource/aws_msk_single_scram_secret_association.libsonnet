{
  local block = self,
  new(cluster_arn, secret_arn):: (
    {}
    + block.with_cluster_arn(cluster_arn)
    + block.with_secret_arn(secret_arn)
  ),
  with_cluster_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_arn" expected to be of type "string"';
    {
      cluster_arn: converted,
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
  with_secret_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"secret_arn" expected to be of type "string"';
    {
      secret_arn: converted,
    }
  ),
}
