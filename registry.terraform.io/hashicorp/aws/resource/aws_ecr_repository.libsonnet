{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_force_delete(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_delete" expected to be of type "bool"';
    {
      force_delete: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_image_tag_mutability(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_tag_mutability" expected to be of type "string"';
    {
      image_tag_mutability: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  with_registry_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"registry_id" expected to be of type "string"';
    {
      registry_id: converted,
    }
  ),
  with_repository_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"repository_url" expected to be of type "string"';
    {
      repository_url: converted,
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
  encryption_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_encryption_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"encryption_type" expected to be of type "string"';
      {
        encryption_type: converted,
      }
    ),
    with_kms_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key" expected to be of type "string"';
      {
        kms_key: converted,
      }
    ),
  },
  image_scanning_configuration:: {
    local block = self,
    new(scan_on_push):: (
      {}
      + block.with_scan_on_push(scan_on_push)
    ),
    with_scan_on_push(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"scan_on_push" expected to be of type "bool"';
      {
        scan_on_push: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
  },
  with_encryption_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_configuration: value,
    }
  ),
  with_image_scanning_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      image_scanning_configuration: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_encryption_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_configuration+: converted,
    }
  ),
  with_image_scanning_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      image_scanning_configuration+: converted,
    }
  ),
}
