{
  local block = self,
  new(repository_name):: (
    {}
    + block.with_repository_name(repository_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
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
  with_repository_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"repository_name" expected to be of type "string"';
    {
      repository_name: converted,
    }
  ),
  with_repository_uri(value):: (
    local converted = value;
    assert std.isString(converted) : '"repository_uri" expected to be of type "string"';
    {
      repository_uri: converted,
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
  catalog_data:: {
    local block = self,
    new():: (
      {}
    ),
    with_about_text(value):: (
      local converted = value;
      assert std.isString(converted) : '"about_text" expected to be of type "string"';
      {
        about_text: converted,
      }
    ),
    with_architectures(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"architectures" expected to be of type "set"';
      {
        architectures: converted,
      }
    ),
    with_architectures_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"architectures" expected to be of type "set"';
      {
        architectures+: converted,
      }
    ),
    with_description(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    with_logo_image_blob(value):: (
      local converted = value;
      assert std.isString(converted) : '"logo_image_blob" expected to be of type "string"';
      {
        logo_image_blob: converted,
      }
    ),
    with_operating_systems(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"operating_systems" expected to be of type "set"';
      {
        operating_systems: converted,
      }
    ),
    with_operating_systems_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"operating_systems" expected to be of type "set"';
      {
        operating_systems+: converted,
      }
    ),
    with_usage_text(value):: (
      local converted = value;
      assert std.isString(converted) : '"usage_text" expected to be of type "string"';
      {
        usage_text: converted,
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
  with_catalog_data(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      catalog_data: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_catalog_data_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      catalog_data+: converted,
    }
  ),
}
