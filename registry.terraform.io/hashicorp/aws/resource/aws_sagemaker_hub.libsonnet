{
  local block = self,
  new(hub_description, hub_name):: (
    {}
    + block.with_hub_description(hub_description)
    + block.with_hub_name(hub_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_hub_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"hub_description" expected to be of type "string"';
    {
      hub_description: converted,
    }
  ),
  with_hub_display_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"hub_display_name" expected to be of type "string"';
    {
      hub_display_name: converted,
    }
  ),
  with_hub_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"hub_name" expected to be of type "string"';
    {
      hub_name: converted,
    }
  ),
  with_hub_search_keywords(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"hub_search_keywords" expected to be of type "set"';
    {
      hub_search_keywords: converted,
    }
  ),
  with_hub_search_keywords_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"hub_search_keywords" expected to be of type "set"';
    {
      hub_search_keywords+: converted,
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
  s3_storage_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_s3_output_path(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_output_path" expected to be of type "string"';
      {
        s3_output_path: converted,
      }
    ),
  },
  with_s3_storage_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3_storage_config: value,
    }
  ),
  with_s3_storage_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3_storage_config+: converted,
    }
  ),
}
