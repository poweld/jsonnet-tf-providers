{
  local block = self,
  new(replication_subnet_group_description, replication_subnet_group_id, subnet_ids):: (
    {}
    + block.with_replication_subnet_group_description(replication_subnet_group_description)
    + block.with_replication_subnet_group_id(replication_subnet_group_id)
    + block.with_subnet_ids(subnet_ids)
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
  with_replication_subnet_group_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"replication_subnet_group_arn" expected to be of type "string"';
    {
      replication_subnet_group_arn: converted,
    }
  ),
  with_replication_subnet_group_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"replication_subnet_group_description" expected to be of type "string"';
    {
      replication_subnet_group_description: converted,
    }
  ),
  with_replication_subnet_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"replication_subnet_group_id" expected to be of type "string"';
    {
      replication_subnet_group_id: converted,
    }
  ),
  with_subnet_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
    {
      subnet_ids: converted,
    }
  ),
  with_subnet_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
    {
      subnet_ids+: converted,
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
  with_vpc_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
    {
      vpc_id: converted,
    }
  ),
}
