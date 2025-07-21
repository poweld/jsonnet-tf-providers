{
  local block = self,
  new(addon_name, cluster_name):: (
    {}
    + block.with_addon_name(addon_name)
    + block.with_cluster_name(cluster_name)
  ),
  with_addon_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"addon_name" expected to be of type "string"';
    {
      addon_name: converted,
    }
  ),
  with_addon_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"addon_version" expected to be of type "string"';
    {
      addon_version: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_cluster_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_name" expected to be of type "string"';
    {
      cluster_name: converted,
    }
  ),
  with_configuration_values(value):: (
    local converted = value;
    assert std.isString(converted) : '"configuration_values" expected to be of type "string"';
    {
      configuration_values: converted,
    }
  ),
  with_created_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_at" expected to be of type "string"';
    {
      created_at: converted,
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
  with_preserve(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"preserve" expected to be of type "bool"';
    {
      preserve: converted,
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
  with_resolve_conflicts_on_create(value):: (
    local converted = value;
    assert std.isString(converted) : '"resolve_conflicts_on_create" expected to be of type "string"';
    {
      resolve_conflicts_on_create: converted,
    }
  ),
  with_resolve_conflicts_on_update(value):: (
    local converted = value;
    assert std.isString(converted) : '"resolve_conflicts_on_update" expected to be of type "string"';
    {
      resolve_conflicts_on_update: converted,
    }
  ),
  with_service_account_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_account_role_arn" expected to be of type "string"';
    {
      service_account_role_arn: converted,
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
  pod_identity_association:: {
    local block = self,
    new(role_arn, service_account):: (
      {}
      + block.with_role_arn(role_arn)
      + block.with_service_account(service_account)
    ),
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    with_service_account(value):: (
      local converted = value;
      assert std.isString(converted) : '"service_account" expected to be of type "string"';
      {
        service_account: converted,
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
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_pod_identity_association(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      pod_identity_association: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_pod_identity_association_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      pod_identity_association+: converted,
    }
  ),
}
