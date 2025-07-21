{
  local block = self,
  new(instance_id, name):: (
    {}
    + block.with_instance_id(instance_id)
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_hierarchy_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"hierarchy_group_id" expected to be of type "string"';
    {
      hierarchy_group_id: converted,
    }
  ),
  with_hierarchy_path(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"hierarchy_path" expected to be of type "list"';
    {
      hierarchy_path: converted,
    }
  ),
  with_hierarchy_path_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"hierarchy_path" expected to be of type "list"';
    {
      hierarchy_path+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_instance_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_id" expected to be of type "string"';
    {
      instance_id: converted,
    }
  ),
  with_level_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"level_id" expected to be of type "string"';
    {
      level_id: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_parent_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"parent_group_id" expected to be of type "string"';
    {
      parent_group_id: converted,
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
}
