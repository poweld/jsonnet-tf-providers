{
  local block = self,
  new(bucket, key):: (
    {}
    + block.with_bucket(bucket)
    + block.with_key(key)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_body(value):: (
    local converted = value;
    assert std.isString(converted) : '"body" expected to be of type "string"';
    {
      body: converted,
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
  with_checksum_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"checksum_mode" expected to be of type "string"';
    {
      checksum_mode: converted,
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
  with_content_length(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"content_length" expected to be of type "number"';
    {
      content_length: converted,
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
  with_range(value):: (
    local converted = value;
    assert std.isString(converted) : '"range" expected to be of type "string"';
    {
      range: converted,
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
  with_sse_kms_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"sse_kms_key_id" expected to be of type "string"';
    {
      sse_kms_key_id: converted,
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
  with_version_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"version_id" expected to be of type "string"';
    {
      version_id: converted,
    }
  ),
  with_website_redirect_location(value):: (
    local converted = value;
    assert std.isString(converted) : '"website_redirect_location" expected to be of type "string"';
    {
      website_redirect_location: converted,
    }
  ),
}
