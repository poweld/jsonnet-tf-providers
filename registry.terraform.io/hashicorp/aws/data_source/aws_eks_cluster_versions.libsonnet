{
  local block = self,
  new():: (
    {}
  ),
  with_cluster_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_type" expected to be of type "string"';
    {
      cluster_type: converted,
    }
  ),
  with_cluster_versions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cluster_versions" expected to be of type "list"';
    {
      cluster_versions: converted,
    }
  ),
  with_cluster_versions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cluster_versions" expected to be of type "list"';
    {
      cluster_versions+: converted,
    }
  ),
  with_cluster_versions_only(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cluster_versions_only" expected to be of type "list"';
    {
      cluster_versions_only: converted,
    }
  ),
  with_cluster_versions_only_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cluster_versions_only" expected to be of type "list"';
    {
      cluster_versions_only+: converted,
    }
  ),
  with_default_only(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"default_only" expected to be of type "bool"';
    {
      default_only: converted,
    }
  ),
  with_include_all(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_all" expected to be of type "bool"';
    {
      include_all: converted,
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
  with_version_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"version_status" expected to be of type "string"';
    {
      version_status: converted,
    }
  ),
}
