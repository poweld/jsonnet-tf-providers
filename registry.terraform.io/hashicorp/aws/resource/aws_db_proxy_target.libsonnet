{
  local block = self,
  new(db_proxy_name, target_group_name):: (
    {}
    + block.with_db_proxy_name(db_proxy_name)
    + block.with_target_group_name(target_group_name)
  ),
  with_db_cluster_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_cluster_identifier" expected to be of type "string"';
    {
      db_cluster_identifier: converted,
    }
  ),
  with_db_instance_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_instance_identifier" expected to be of type "string"';
    {
      db_instance_identifier: converted,
    }
  ),
  with_db_proxy_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_proxy_name" expected to be of type "string"';
    {
      db_proxy_name: converted,
    }
  ),
  with_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint" expected to be of type "string"';
    {
      endpoint: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_port(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"port" expected to be of type "number"';
    {
      port: converted,
    }
  ),
  with_rds_resource_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"rds_resource_id" expected to be of type "string"';
    {
      rds_resource_id: converted,
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
  with_target_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_arn" expected to be of type "string"';
    {
      target_arn: converted,
    }
  ),
  with_target_group_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_group_name" expected to be of type "string"';
    {
      target_group_name: converted,
    }
  ),
  with_tracked_cluster_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"tracked_cluster_id" expected to be of type "string"';
    {
      tracked_cluster_id: converted,
    }
  ),
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
}
