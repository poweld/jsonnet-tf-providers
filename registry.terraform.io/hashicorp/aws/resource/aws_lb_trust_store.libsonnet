{
  local block = self,
  new(ca_certificates_bundle_s3_bucket, ca_certificates_bundle_s3_key):: (
    {}
    + block.with_ca_certificates_bundle_s3_bucket(ca_certificates_bundle_s3_bucket)
    + block.with_ca_certificates_bundle_s3_key(ca_certificates_bundle_s3_key)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_arn_suffix(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn_suffix" expected to be of type "string"';
    {
      arn_suffix: converted,
    }
  ),
  with_ca_certificates_bundle_s3_bucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"ca_certificates_bundle_s3_bucket" expected to be of type "string"';
    {
      ca_certificates_bundle_s3_bucket: converted,
    }
  ),
  with_ca_certificates_bundle_s3_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"ca_certificates_bundle_s3_key" expected to be of type "string"';
    {
      ca_certificates_bundle_s3_key: converted,
    }
  ),
  with_ca_certificates_bundle_s3_object_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"ca_certificates_bundle_s3_object_version" expected to be of type "string"';
    {
      ca_certificates_bundle_s3_object_version: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_name_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
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
