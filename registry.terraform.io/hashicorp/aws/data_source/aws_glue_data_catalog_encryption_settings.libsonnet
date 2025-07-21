{
  local block = self,
  new(catalog_id):: (
    {}
    + block.with_catalog_id(catalog_id)
  ),
  with_catalog_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"catalog_id" expected to be of type "string"';
    {
      catalog_id: converted,
    }
  ),
  with_data_catalog_encryption_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"data_catalog_encryption_settings" expected to be of type "list"';
    {
      data_catalog_encryption_settings: converted,
    }
  ),
  with_data_catalog_encryption_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"data_catalog_encryption_settings" expected to be of type "list"';
    {
      data_catalog_encryption_settings+: converted,
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
}
