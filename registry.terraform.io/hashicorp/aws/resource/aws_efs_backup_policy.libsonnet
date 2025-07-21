{
  local block = self,
  new(file_system_id):: (
    {}
    + block.with_file_system_id(file_system_id)
  ),
  with_file_system_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"file_system_id" expected to be of type "string"';
    {
      file_system_id: converted,
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
  backup_policy:: {
    local block = self,
    new(status):: (
      {}
      + block.with_status(status)
    ),
    with_status(value):: (
      local converted = value;
      assert std.isString(converted) : '"status" expected to be of type "string"';
      {
        status: converted,
      }
    ),
  },
  with_backup_policy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      backup_policy: value,
    }
  ),
  with_backup_policy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      backup_policy+: converted,
    }
  ),
}
