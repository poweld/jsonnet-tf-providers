{
  local block = self,
  new(source_file_system_id):: (
    {}
    + block.with_source_file_system_id(source_file_system_id)
  ),
  with_creation_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"creation_time" expected to be of type "string"';
    {
      creation_time: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_original_source_file_system_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"original_source_file_system_arn" expected to be of type "string"';
    {
      original_source_file_system_arn: converted,
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
  with_source_file_system_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_file_system_arn" expected to be of type "string"';
    {
      source_file_system_arn: converted,
    }
  ),
  with_source_file_system_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_file_system_id" expected to be of type "string"';
    {
      source_file_system_id: converted,
    }
  ),
  with_source_file_system_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_file_system_region" expected to be of type "string"';
    {
      source_file_system_region: converted,
    }
  ),
  destination:: {
    local block = self,
    new():: (
      {}
    ),
    with_availability_zone_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"availability_zone_name" expected to be of type "string"';
      {
        availability_zone_name: converted,
      }
    ),
    with_file_system_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"file_system_id" expected to be of type "string"';
      {
        file_system_id: converted,
      }
    ),
    with_kms_key_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
      {
        kms_key_id: converted,
      }
    ),
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
  },
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
  },
  with_destination(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_destination_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination+: converted,
    }
  ),
}
