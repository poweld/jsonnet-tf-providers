{
  local block = self,
  new(availability_zone, instance_count, instance_platform, instance_type):: (
    {}
    + block.with_availability_zone(availability_zone)
    + block.with_instance_count(instance_count)
    + block.with_instance_platform(instance_platform)
    + block.with_instance_type(instance_type)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_availability_zone(value):: (
    local converted = value;
    assert std.isString(converted) : '"availability_zone" expected to be of type "string"';
    {
      availability_zone: converted,
    }
  ),
  with_ebs_optimized(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"ebs_optimized" expected to be of type "bool"';
    {
      ebs_optimized: converted,
    }
  ),
  with_end_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"end_date" expected to be of type "string"';
    {
      end_date: converted,
    }
  ),
  with_end_date_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"end_date_type" expected to be of type "string"';
    {
      end_date_type: converted,
    }
  ),
  with_ephemeral_storage(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"ephemeral_storage" expected to be of type "bool"';
    {
      ephemeral_storage: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_instance_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"instance_count" expected to be of type "number"';
    {
      instance_count: converted,
    }
  ),
  with_instance_match_criteria(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_match_criteria" expected to be of type "string"';
    {
      instance_match_criteria: converted,
    }
  ),
  with_instance_platform(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_platform" expected to be of type "string"';
    {
      instance_platform: converted,
    }
  ),
  with_instance_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_type" expected to be of type "string"';
    {
      instance_type: converted,
    }
  ),
  with_outpost_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"outpost_arn" expected to be of type "string"';
    {
      outpost_arn: converted,
    }
  ),
  with_owner_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_id" expected to be of type "string"';
    {
      owner_id: converted,
    }
  ),
  with_placement_group_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"placement_group_arn" expected to be of type "string"';
    {
      placement_group_arn: converted,
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
  with_tenancy(value):: (
    local converted = value;
    assert std.isString(converted) : '"tenancy" expected to be of type "string"';
    {
      tenancy: converted,
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
