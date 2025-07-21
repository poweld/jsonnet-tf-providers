{
  local block = self,
  new(replication_task_id):: (
    {}
    + block.with_replication_task_id(replication_task_id)
  ),
  with_cdc_start_position(value):: (
    local converted = value;
    assert std.isString(converted) : '"cdc_start_position" expected to be of type "string"';
    {
      cdc_start_position: converted,
    }
  ),
  with_cdc_start_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"cdc_start_time" expected to be of type "string"';
    {
      cdc_start_time: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_migration_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"migration_type" expected to be of type "string"';
    {
      migration_type: converted,
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
  with_replication_instance_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"replication_instance_arn" expected to be of type "string"';
    {
      replication_instance_arn: converted,
    }
  ),
  with_replication_task_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"replication_task_arn" expected to be of type "string"';
    {
      replication_task_arn: converted,
    }
  ),
  with_replication_task_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"replication_task_id" expected to be of type "string"';
    {
      replication_task_id: converted,
    }
  ),
  with_replication_task_settings(value):: (
    local converted = value;
    assert std.isString(converted) : '"replication_task_settings" expected to be of type "string"';
    {
      replication_task_settings: converted,
    }
  ),
  with_source_endpoint_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_endpoint_arn" expected to be of type "string"';
    {
      source_endpoint_arn: converted,
    }
  ),
  with_start_replication_task(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"start_replication_task" expected to be of type "bool"';
    {
      start_replication_task: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_table_mappings(value):: (
    local converted = value;
    assert std.isString(converted) : '"table_mappings" expected to be of type "string"';
    {
      table_mappings: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_target_endpoint_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_endpoint_arn" expected to be of type "string"';
    {
      target_endpoint_arn: converted,
    }
  ),
}
