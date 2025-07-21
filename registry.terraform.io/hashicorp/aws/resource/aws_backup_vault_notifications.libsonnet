{
  local block = self,
  new(backup_vault_events, backup_vault_name, sns_topic_arn):: (
    {}
    + block.with_backup_vault_events(backup_vault_events)
    + block.with_backup_vault_name(backup_vault_name)
    + block.with_sns_topic_arn(sns_topic_arn)
  ),
  with_backup_vault_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"backup_vault_arn" expected to be of type "string"';
    {
      backup_vault_arn: converted,
    }
  ),
  with_backup_vault_events(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"backup_vault_events" expected to be of type "set"';
    {
      backup_vault_events: converted,
    }
  ),
  with_backup_vault_events_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"backup_vault_events" expected to be of type "set"';
    {
      backup_vault_events+: converted,
    }
  ),
  with_backup_vault_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"backup_vault_name" expected to be of type "string"';
    {
      backup_vault_name: converted,
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
  with_sns_topic_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"sns_topic_arn" expected to be of type "string"';
    {
      sns_topic_arn: converted,
    }
  ),
}
