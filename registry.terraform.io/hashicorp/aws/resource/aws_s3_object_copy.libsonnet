{
  local block = self,
  new(bucket, key, source):: (
    {}
    + block.with_bucket(bucket)
    + block.with_key(key)
    + block.with_source(source)
  ),
  with_acl(value):: (
    local converted = value;
    assert std.isString(converted) : '"acl" expected to be of type "string"';
    {
      acl: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_bucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket" expected to be of type "string"';
    {
      bucket: converted,
    }
  ),
  with_bucket_key_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"bucket_key_enabled" expected to be of type "bool"';
    {
      bucket_key_enabled: converted,
    }
  ),
  with_cache_control(value):: (
    local converted = value;
    assert std.isString(converted) : '"cache_control" expected to be of type "string"';
    {
      cache_control: converted,
    }
  ),
  with_checksum_algorithm(value):: (
    local converted = value;
    assert std.isString(converted) : '"checksum_algorithm" expected to be of type "string"';
    {
      checksum_algorithm: converted,
    }
  ),
  with_checksum_crc32(value):: (
    local converted = value;
    assert std.isString(converted) : '"checksum_crc32" expected to be of type "string"';
    {
      checksum_crc32: converted,
    }
  ),
  with_checksum_crc32c(value):: (
    local converted = value;
    assert std.isString(converted) : '"checksum_crc32c" expected to be of type "string"';
    {
      checksum_crc32c: converted,
    }
  ),
  with_checksum_crc64nvme(value):: (
    local converted = value;
    assert std.isString(converted) : '"checksum_crc64nvme" expected to be of type "string"';
    {
      checksum_crc64nvme: converted,
    }
  ),
  with_checksum_sha1(value):: (
    local converted = value;
    assert std.isString(converted) : '"checksum_sha1" expected to be of type "string"';
    {
      checksum_sha1: converted,
    }
  ),
  with_checksum_sha256(value):: (
    local converted = value;
    assert std.isString(converted) : '"checksum_sha256" expected to be of type "string"';
    {
      checksum_sha256: converted,
    }
  ),
  with_content_disposition(value):: (
    local converted = value;
    assert std.isString(converted) : '"content_disposition" expected to be of type "string"';
    {
      content_disposition: converted,
    }
  ),
  with_content_encoding(value):: (
    local converted = value;
    assert std.isString(converted) : '"content_encoding" expected to be of type "string"';
    {
      content_encoding: converted,
    }
  ),
  with_content_language(value):: (
    local converted = value;
    assert std.isString(converted) : '"content_language" expected to be of type "string"';
    {
      content_language: converted,
    }
  ),
  with_content_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"content_type" expected to be of type "string"';
    {
      content_type: converted,
    }
  ),
  with_copy_if_match(value):: (
    local converted = value;
    assert std.isString(converted) : '"copy_if_match" expected to be of type "string"';
    {
      copy_if_match: converted,
    }
  ),
  with_copy_if_modified_since(value):: (
    local converted = value;
    assert std.isString(converted) : '"copy_if_modified_since" expected to be of type "string"';
    {
      copy_if_modified_since: converted,
    }
  ),
  with_copy_if_none_match(value):: (
    local converted = value;
    assert std.isString(converted) : '"copy_if_none_match" expected to be of type "string"';
    {
      copy_if_none_match: converted,
    }
  ),
  with_copy_if_unmodified_since(value):: (
    local converted = value;
    assert std.isString(converted) : '"copy_if_unmodified_since" expected to be of type "string"';
    {
      copy_if_unmodified_since: converted,
    }
  ),
  with_customer_algorithm(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_algorithm" expected to be of type "string"';
    {
      customer_algorithm: converted,
    }
  ),
  with_customer_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_key" expected to be of type "string"';
    {
      customer_key: converted,
    }
  ),
  with_customer_key_md5(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_key_md5" expected to be of type "string"';
    {
      customer_key_md5: converted,
    }
  ),
  with_etag(value):: (
    local converted = value;
    assert std.isString(converted) : '"etag" expected to be of type "string"';
    {
      etag: converted,
    }
  ),
  with_expected_bucket_owner(value):: (
    local converted = value;
    assert std.isString(converted) : '"expected_bucket_owner" expected to be of type "string"';
    {
      expected_bucket_owner: converted,
    }
  ),
  with_expected_source_bucket_owner(value):: (
    local converted = value;
    assert std.isString(converted) : '"expected_source_bucket_owner" expected to be of type "string"';
    {
      expected_source_bucket_owner: converted,
    }
  ),
  with_expiration(value):: (
    local converted = value;
    assert std.isString(converted) : '"expiration" expected to be of type "string"';
    {
      expiration: converted,
    }
  ),
  with_expires(value):: (
    local converted = value;
    assert std.isString(converted) : '"expires" expected to be of type "string"';
    {
      expires: converted,
    }
  ),
  with_force_destroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_destroy" expected to be of type "bool"';
    {
      force_destroy: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"key" expected to be of type "string"';
    {
      key: converted,
    }
  ),
  with_kms_encryption_context(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_encryption_context" expected to be of type "string"';
    {
      kms_encryption_context: converted,
    }
  ),
  with_kms_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  with_last_modified(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_modified" expected to be of type "string"';
    {
      last_modified: converted,
    }
  ),
  with_metadata(value):: (
    local converted = value;
    assert std.isObject(converted) : '"metadata" expected to be of type "map"';
    {
      metadata: converted,
    }
  ),
  with_metadata_directive(value):: (
    local converted = value;
    assert std.isString(converted) : '"metadata_directive" expected to be of type "string"';
    {
      metadata_directive: converted,
    }
  ),
  with_object_lock_legal_hold_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"object_lock_legal_hold_status" expected to be of type "string"';
    {
      object_lock_legal_hold_status: converted,
    }
  ),
  with_object_lock_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"object_lock_mode" expected to be of type "string"';
    {
      object_lock_mode: converted,
    }
  ),
  with_object_lock_retain_until_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"object_lock_retain_until_date" expected to be of type "string"';
    {
      object_lock_retain_until_date: converted,
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
  with_request_charged(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"request_charged" expected to be of type "bool"';
    {
      request_charged: converted,
    }
  ),
  with_request_payer(value):: (
    local converted = value;
    assert std.isString(converted) : '"request_payer" expected to be of type "string"';
    {
      request_payer: converted,
    }
  ),
  with_server_side_encryption(value):: (
    local converted = value;
    assert std.isString(converted) : '"server_side_encryption" expected to be of type "string"';
    {
      server_side_encryption: converted,
    }
  ),
  with_source(value):: (
    local converted = value;
    assert std.isString(converted) : '"source" expected to be of type "string"';
    {
      source: converted,
    }
  ),
  with_source_customer_algorithm(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_customer_algorithm" expected to be of type "string"';
    {
      source_customer_algorithm: converted,
    }
  ),
  with_source_customer_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_customer_key" expected to be of type "string"';
    {
      source_customer_key: converted,
    }
  ),
  with_source_customer_key_md5(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_customer_key_md5" expected to be of type "string"';
    {
      source_customer_key_md5: converted,
    }
  ),
  with_source_version_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_version_id" expected to be of type "string"';
    {
      source_version_id: converted,
    }
  ),
  with_storage_class(value):: (
    local converted = value;
    assert std.isString(converted) : '"storage_class" expected to be of type "string"';
    {
      storage_class: converted,
    }
  ),
  with_tagging_directive(value):: (
    local converted = value;
    assert std.isString(converted) : '"tagging_directive" expected to be of type "string"';
    {
      tagging_directive: converted,
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
  with_version_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"version_id" expected to be of type "string"';
    {
      version_id: converted,
    }
  ),
  with_website_redirect(value):: (
    local converted = value;
    assert std.isString(converted) : '"website_redirect" expected to be of type "string"';
    {
      website_redirect: converted,
    }
  ),
  grant:: {
    local block = self,
    new(permissions, type):: (
      {}
      + block.with_permissions(permissions)
      + block.with_type(type)
    ),
    with_email(value):: (
      local converted = value;
      assert std.isString(converted) : '"email" expected to be of type "string"';
      {
        email: converted,
      }
    ),
    with_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    with_permissions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"permissions" expected to be of type "set"';
      {
        permissions: converted,
      }
    ),
    with_permissions_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"permissions" expected to be of type "set"';
      {
        permissions+: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    with_uri(value):: (
      local converted = value;
      assert std.isString(converted) : '"uri" expected to be of type "string"';
      {
        uri: converted,
      }
    ),
  },
  override_provider:: {
    local block = self,
    new():: (
      {}
    ),
    default_tags:: {
      local block = self,
      new():: (
        {}
      ),
      with_tags(value):: (
        local converted = value;
        assert std.isObject(converted) : '"tags" expected to be of type "map"';
        {
          tags: converted,
        }
      ),
    },
    with_default_tags(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        default_tags: value,
      }
    ),
    with_default_tags_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        default_tags+: converted,
      }
    ),
  },
  with_grant(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      grant: value,
    }
  ),
  with_override_provider(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      override_provider: value,
    }
  ),
  with_grant_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      grant+: converted,
    }
  ),
  with_override_provider_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      override_provider+: converted,
    }
  ),
}
