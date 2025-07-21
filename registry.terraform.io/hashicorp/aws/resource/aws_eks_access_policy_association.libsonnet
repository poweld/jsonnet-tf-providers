{
  local block = self,
  new(cluster_name, policy_arn, principal_arn):: (
    {}
    + block.with_cluster_name(cluster_name)
    + block.with_policy_arn(policy_arn)
    + block.with_principal_arn(principal_arn)
  ),
  with_associated_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"associated_at" expected to be of type "string"';
    {
      associated_at: converted,
    }
  ),
  with_cluster_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_name" expected to be of type "string"';
    {
      cluster_name: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_modified_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"modified_at" expected to be of type "string"';
    {
      modified_at: converted,
    }
  ),
  with_policy_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_arn" expected to be of type "string"';
    {
      policy_arn: converted,
    }
  ),
  with_principal_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"principal_arn" expected to be of type "string"';
    {
      principal_arn: converted,
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
  access_scope:: {
    local block = self,
    new(type):: (
      {}
      + block.with_type(type)
    ),
    with_namespaces(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"namespaces" expected to be of type "set"';
      {
        namespaces: converted,
      }
    ),
    with_namespaces_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"namespaces" expected to be of type "set"';
      {
        namespaces+: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
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
  with_access_scope(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_scope: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_access_scope_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_scope+: converted,
    }
  ),
}
