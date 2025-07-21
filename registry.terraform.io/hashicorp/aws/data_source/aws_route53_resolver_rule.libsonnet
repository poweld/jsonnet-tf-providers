{
  local block = self,
  new():: (
    {}
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
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
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_owner_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_id" expected to be of type "string"';
    {
      owner_id: converted,
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
  with_resolver_endpoint_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"resolver_endpoint_id" expected to be of type "string"';
    {
      resolver_endpoint_id: converted,
    }
  ),
  with_resolver_rule_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"resolver_rule_id" expected to be of type "string"';
    {
      resolver_rule_id: converted,
    }
  ),
  with_rule_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"rule_type" expected to be of type "string"';
    {
      rule_type: converted,
    }
  ),
  with_share_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"share_status" expected to be of type "string"';
    {
      share_status: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
}
