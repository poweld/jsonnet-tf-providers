{
  local block = self,
  new(bundle_id, directory_id, user_name):: (
    {}
    + block.with_bundle_id(bundle_id)
    + block.with_directory_id(directory_id)
    + block.with_user_name(user_name)
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
  with_tags_all(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
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
  workspace_properties:: {
    local block = self,
    new():: (
      {}
    ),
    with_compute_type_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"compute_type_name" expected to be of type "string"';
      {
        compute_type_name: converted,
      }
    ),
    with_root_volume_size_gib(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"root_volume_size_gib" expected to be of type "number"';
      {
        root_volume_size_gib: converted,
      }
    ),
    with_running_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"running_mode" expected to be of type "string"';
      {
        running_mode: converted,
      }
    ),
    with_running_mode_auto_stop_timeout_in_minutes(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"running_mode_auto_stop_timeout_in_minutes" expected to be of type "number"';
      {
        running_mode_auto_stop_timeout_in_minutes: converted,
      }
    ),
    with_user_volume_size_gib(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"user_volume_size_gib" expected to be of type "number"';
      {
        user_volume_size_gib: converted,
      }
    ),
  },
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_workspace_properties(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      workspace_properties: value,
    }
  ),
  with_workspace_properties_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      workspace_properties+: converted,
    }
  ),
}
