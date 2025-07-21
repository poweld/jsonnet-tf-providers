{
  local block = self,
  new(account, cluster_identifier):: (
    {}
    + block.with_account(account)
    + block.with_cluster_identifier(cluster_identifier)
  ),
  with_account(value):: (
    local converted = value;
    assert std.isString(converted) : '"account" expected to be of type "string"';
    {
      account: converted,
    }
  ),
  with_allowed_all_vpcs(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"allowed_all_vpcs" expected to be of type "bool"';
    {
      allowed_all_vpcs: converted,
    }
  ),
  with_cluster_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_identifier" expected to be of type "string"';
    {
      cluster_identifier: converted,
    }
  ),
  with_endpoint_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"endpoint_count" expected to be of type "number"';
    {
      endpoint_count: converted,
    }
  ),
  with_force_delete(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_delete" expected to be of type "bool"';
    {
      force_delete: converted,
    }
  ),
  with_grantee(value):: (
    local converted = value;
    assert std.isString(converted) : '"grantee" expected to be of type "string"';
    {
      grantee: converted,
    }
  ),
  with_grantor(value):: (
    local converted = value;
    assert std.isString(converted) : '"grantor" expected to be of type "string"';
    {
      grantor: converted,
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
  with_vpc_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_ids" expected to be of type "set"';
    {
      vpc_ids: converted,
    }
  ),
  with_vpc_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_ids" expected to be of type "set"';
    {
      vpc_ids+: converted,
    }
  ),
}
