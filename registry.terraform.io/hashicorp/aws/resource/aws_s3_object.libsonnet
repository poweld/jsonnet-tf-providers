{
  local block = self,
  new(bucket, key):: (
    {}
    + block.with_bucket(bucket)
    + block.with_key(key)
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
  with_content(value):: (
    local converted = value;
    assert std.isString(converted) : '"content" expected to be of type "string"';
    {
      content: converted,
    }
  ),
  with_content_base64(value):: (
    local converted = value;
    assert std.isString(converted) : '"content_base64" expected to be of type "string"';
    {
      content_base64: converted,
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
  with_etag(value):: (
    local converted = value;
    assert std.isString(converted) : '"etag" expected to be of type "string"';
    {
      etag: converted,
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
  with_kms_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  with_metadata(value):: (
    local converted = value;
    assert std.isObject(converted) : '"metadata" expected to be of type "map"';
    {
      metadata: converted,
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
  with_source_hash(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_hash" expected to be of type "string"';
    {
      source_hash: converted,
    }
  ),
  with_storage_class(value):: (
    local converted = value;
    assert std.isString(converted) : '"storage_class" expected to be of type "string"';
    {
      storage_class: converted,
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
  with_override_provider(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      override_provider: value,
    }
  ),
  with_override_provider_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      override_provider+: converted,
    }
  ),
}
