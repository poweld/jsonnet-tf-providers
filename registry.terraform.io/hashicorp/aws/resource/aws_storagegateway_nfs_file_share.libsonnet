{
  local block = self,
  new(client_list, gateway_arn, location_arn, role_arn):: (
    {}
    + block.with_client_list(client_list)
    + block.with_gateway_arn(gateway_arn)
    + block.with_location_arn(location_arn)
    + block.with_role_arn(role_arn)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_audit_destination_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"audit_destination_arn" expected to be of type "string"';
    {
      audit_destination_arn: converted,
    }
  ),
  with_bucket_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket_region" expected to be of type "string"';
    {
      bucket_region: converted,
    }
  ),
  with_client_list(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"client_list" expected to be of type "set"';
    {
      client_list: converted,
    }
  ),
  with_client_list_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"client_list" expected to be of type "set"';
    {
      client_list+: converted,
    }
  ),
  with_default_storage_class(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_storage_class" expected to be of type "string"';
    {
      default_storage_class: converted,
    }
  ),
  with_file_share_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"file_share_name" expected to be of type "string"';
    {
      file_share_name: converted,
    }
  ),
  with_fileshare_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"fileshare_id" expected to be of type "string"';
    {
      fileshare_id: converted,
    }
  ),
  with_gateway_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"gateway_arn" expected to be of type "string"';
    {
      gateway_arn: converted,
    }
  ),
  with_guess_mime_type_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"guess_mime_type_enabled" expected to be of type "bool"';
    {
      guess_mime_type_enabled: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_kms_encrypted(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"kms_encrypted" expected to be of type "bool"';
    {
      kms_encrypted: converted,
    }
  ),
  with_kms_key_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
    {
      kms_key_arn: converted,
    }
  ),
  with_location_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"location_arn" expected to be of type "string"';
    {
      location_arn: converted,
    }
  ),
  with_notification_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"notification_policy" expected to be of type "string"';
    {
      notification_policy: converted,
    }
  ),
  with_object_acl(value):: (
    local converted = value;
    assert std.isString(converted) : '"object_acl" expected to be of type "string"';
    {
      object_acl: converted,
    }
  ),
  with_path(value):: (
    local converted = value;
    assert std.isString(converted) : '"path" expected to be of type "string"';
    {
      path: converted,
    }
  ),
  with_read_only(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"read_only" expected to be of type "bool"';
    {
      read_only: converted,
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
  with_requester_pays(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"requester_pays" expected to be of type "bool"';
    {
      requester_pays: converted,
    }
  ),
  with_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
    }
  ),
  with_squash(value):: (
    local converted = value;
    assert std.isString(converted) : '"squash" expected to be of type "string"';
    {
      squash: converted,
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
  with_vpc_endpoint_dns_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_endpoint_dns_name" expected to be of type "string"';
    {
      vpc_endpoint_dns_name: converted,
    }
  ),
  cache_attributes:: {
    local block = self,
    new():: (
      {}
    ),
    with_cache_stale_timeout_in_seconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"cache_stale_timeout_in_seconds" expected to be of type "number"';
      {
        cache_stale_timeout_in_seconds: converted,
      }
    ),
  },
  nfs_file_share_defaults:: {
    local block = self,
    new():: (
      {}
    ),
    with_directory_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"directory_mode" expected to be of type "string"';
      {
        directory_mode: converted,
      }
    ),
    with_file_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"file_mode" expected to be of type "string"';
      {
        file_mode: converted,
      }
    ),
    with_group_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"group_id" expected to be of type "string"';
      {
        group_id: converted,
      }
    ),
    with_owner_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"owner_id" expected to be of type "string"';
      {
        owner_id: converted,
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
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_cache_attributes(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cache_attributes: value,
    }
  ),
  with_nfs_file_share_defaults(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      nfs_file_share_defaults: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_cache_attributes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cache_attributes+: converted,
    }
  ),
  with_nfs_file_share_defaults_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      nfs_file_share_defaults+: converted,
    }
  ),
}
