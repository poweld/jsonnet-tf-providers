{
  local block = self,
  new(amount, cluster_identifier, feature_type, limit_type):: (
    {}
    + block.with_amount(amount)
    + block.with_cluster_identifier(cluster_identifier)
    + block.with_feature_type(feature_type)
    + block.with_limit_type(limit_type)
  ),
  with_amount(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"amount" expected to be of type "number"';
    {
      amount: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_breach_action(value):: (
    local converted = value;
    assert std.isString(converted) : '"breach_action" expected to be of type "string"';
    {
      breach_action: converted,
    }
  ),
  with_cluster_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_identifier" expected to be of type "string"';
    {
      cluster_identifier: converted,
    }
  ),
  with_feature_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"feature_type" expected to be of type "string"';
    {
      feature_type: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_limit_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"limit_type" expected to be of type "string"';
    {
      limit_type: converted,
    }
  ),
  with_period(value):: (
    local converted = value;
    assert std.isString(converted) : '"period" expected to be of type "string"';
    {
      period: converted,
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
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_tags_all(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
}
