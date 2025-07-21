{
  local block = self,
  new(backup_vault_name):: (
    {}
    + block.with_backup_vault_name(backup_vault_name)
  ),
  with_backup_vault_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"backup_vault_arn" expected to be of type "string"';
    {
      backup_vault_arn: converted,
    }
  ),
  with_backup_vault_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"backup_vault_name" expected to be of type "string"';
    {
      backup_vault_name: converted,
    }
  ),
  with_changeable_for_days(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"changeable_for_days" expected to be of type "number"';
    {
      changeable_for_days: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_max_retention_days(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_retention_days" expected to be of type "number"';
    {
      max_retention_days: converted,
    }
  ),
  with_min_retention_days(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"min_retention_days" expected to be of type "number"';
    {
      min_retention_days: converted,
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
}
