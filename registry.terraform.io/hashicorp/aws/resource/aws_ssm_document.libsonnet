{
  local block = self,
  new(content, document_type, name):: (
    {}
    + block.with_content(content)
    + block.with_document_type(document_type)
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_content(value):: (
    local converted = value;
    assert std.isString(converted) : '"content" expected to be of type "string"';
    {
      content: converted,
    }
  ),
  with_created_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_date" expected to be of type "string"';
    {
      created_date: converted,
    }
  ),
  with_default_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_version" expected to be of type "string"';
    {
      default_version: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_document_format(value):: (
    local converted = value;
    assert std.isString(converted) : '"document_format" expected to be of type "string"';
    {
      document_format: converted,
    }
  ),
  with_document_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"document_type" expected to be of type "string"';
    {
      document_type: converted,
    }
  ),
  with_document_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"document_version" expected to be of type "string"';
    {
      document_version: converted,
    }
  ),
  with_hash(value):: (
    local converted = value;
    assert std.isString(converted) : '"hash" expected to be of type "string"';
    {
      hash: converted,
    }
  ),
  with_hash_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"hash_type" expected to be of type "string"';
    {
      hash_type: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_latest_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"latest_version" expected to be of type "string"';
    {
      latest_version: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_owner(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner" expected to be of type "string"';
    {
      owner: converted,
    }
  ),
  with_parameter(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"parameter" expected to be of type "list"';
    {
      parameter: converted,
    }
  ),
  with_parameter_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"parameter" expected to be of type "list"';
    {
      parameter+: converted,
    }
  ),
  with_permissions(value):: (
    local converted = value;
    assert std.isObject(converted) : '"permissions" expected to be of type "map"';
    {
      permissions: converted,
    }
  ),
  with_platform_types(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"platform_types" expected to be of type "list"';
    {
      platform_types: converted,
    }
  ),
  with_platform_types_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"platform_types" expected to be of type "list"';
    {
      platform_types+: converted,
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
  with_schema_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"schema_version" expected to be of type "string"';
    {
      schema_version: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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
  with_target_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_type" expected to be of type "string"';
    {
      target_type: converted,
    }
  ),
  with_version_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"version_name" expected to be of type "string"';
    {
      version_name: converted,
    }
  ),
  attachments_source:: {
    local block = self,
    new(key, values):: (
      {}
      + block.with_key(key)
      + block.with_values(values)
    ),
    with_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_values(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"values" expected to be of type "list"';
      {
        values: converted,
      }
    ),
    with_values_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"values" expected to be of type "list"';
      {
        values+: converted,
      }
    ),
  },
  with_attachments_source(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      attachments_source: value,
    }
  ),
  with_attachments_source_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      attachments_source+: converted,
    }
  ),
}
