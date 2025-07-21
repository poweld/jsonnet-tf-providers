{
  local block = self,
  new(application_name, snapshot_name):: (
    {}
    + block.with_application_name(application_name)
    + block.with_snapshot_name(snapshot_name)
  ),
  with_application_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_name" expected to be of type "string"';
    {
      application_name: converted,
    }
  ),
  with_application_version_id(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"application_version_id" expected to be of type "number"';
    {
      application_version_id: converted,
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
  with_snapshot_creation_timestamp(value):: (
    local converted = value;
    assert std.isString(converted) : '"snapshot_creation_timestamp" expected to be of type "string"';
    {
      snapshot_creation_timestamp: converted,
    }
  ),
  with_snapshot_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"snapshot_name" expected to be of type "string"';
    {
      snapshot_name: converted,
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
  },
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
