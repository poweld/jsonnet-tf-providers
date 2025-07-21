{
  local block = self,
  new():: (
    {}
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_name_regex(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_regex" expected to be of type "string"';
    {
      name_regex: converted,
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
  with_resolver_rule_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resolver_rule_ids" expected to be of type "set"';
    {
      resolver_rule_ids: converted,
    }
  ),
  with_resolver_rule_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resolver_rule_ids" expected to be of type "set"';
    {
      resolver_rule_ids+: converted,
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
}
