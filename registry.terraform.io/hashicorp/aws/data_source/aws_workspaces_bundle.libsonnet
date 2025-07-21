{
  local block = self,
  new():: (
    {}
  ),
  with_bundle_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"bundle_id" expected to be of type "string"';
    {
      bundle_id: converted,
    }
  ),
  with_compute_type(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"compute_type" expected to be of type "list"';
    {
      compute_type: converted,
    }
  ),
  with_compute_type_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"compute_type" expected to be of type "list"';
    {
      compute_type+: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
  with_owner(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner" expected to be of type "string"';
    {
      owner: converted,
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
  with_root_storage(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"root_storage" expected to be of type "list"';
    {
      root_storage: converted,
    }
  ),
  with_root_storage_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"root_storage" expected to be of type "list"';
    {
      root_storage+: converted,
    }
  ),
  with_user_storage(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"user_storage" expected to be of type "list"';
    {
      user_storage: converted,
    }
  ),
  with_user_storage_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"user_storage" expected to be of type "list"';
    {
      user_storage+: converted,
    }
  ),
}
