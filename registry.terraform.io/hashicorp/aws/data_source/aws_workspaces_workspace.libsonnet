{
  local block = self,
  new():: (
    {}
  ),
  with_bundle_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"bundle_id" expected to be of type "string"';
    {
      bundle_id: converted,
    }
  ),
  with_computer_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"computer_name" expected to be of type "string"';
    {
      computer_name: converted,
    }
  ),
  with_directory_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"directory_id" expected to be of type "string"';
    {
      directory_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_ip_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"ip_address" expected to be of type "string"';
    {
      ip_address: converted,
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
  with_root_volume_encryption_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"root_volume_encryption_enabled" expected to be of type "bool"';
    {
      root_volume_encryption_enabled: converted,
    }
  ),
  with_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_user_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name" expected to be of type "string"';
    {
      user_name: converted,
    }
  ),
  with_user_volume_encryption_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"user_volume_encryption_enabled" expected to be of type "bool"';
    {
      user_volume_encryption_enabled: converted,
    }
  ),
  with_volume_encryption_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"volume_encryption_key" expected to be of type "string"';
    {
      volume_encryption_key: converted,
    }
  ),
  with_workspace_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"workspace_id" expected to be of type "string"';
    {
      workspace_id: converted,
    }
  ),
  with_workspace_properties(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"workspace_properties" expected to be of type "list"';
    {
      workspace_properties: converted,
    }
  ),
  with_workspace_properties_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"workspace_properties" expected to be of type "list"';
    {
      workspace_properties+: converted,
    }
  ),
}
