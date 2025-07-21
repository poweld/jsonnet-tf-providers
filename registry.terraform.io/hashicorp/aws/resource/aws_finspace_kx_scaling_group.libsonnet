{
  local block = self,
  new(availability_zone_id, environment_id, host_type, name):: (
    {}
    + block.with_availability_zone_id(availability_zone_id)
    + block.with_environment_id(environment_id)
    + block.with_host_type(host_type)
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_availability_zone_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"availability_zone_id" expected to be of type "string"';
    {
      availability_zone_id: converted,
    }
  ),
  with_clusters(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"clusters" expected to be of type "list"';
    {
      clusters: converted,
    }
  ),
  with_clusters_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"clusters" expected to be of type "list"';
    {
      clusters+: converted,
    }
  ),
  with_created_timestamp(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_timestamp" expected to be of type "string"';
    {
      created_timestamp: converted,
    }
  ),
  with_environment_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"environment_id" expected to be of type "string"';
    {
      environment_id: converted,
    }
  ),
  with_host_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"host_type" expected to be of type "string"';
    {
      host_type: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_last_modified_timestamp(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_modified_timestamp" expected to be of type "string"';
    {
      last_modified_timestamp: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_status_reason(value):: (
    local converted = value;
    assert std.isString(converted) : '"status_reason" expected to be of type "string"';
    {
      status_reason: converted,
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
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
