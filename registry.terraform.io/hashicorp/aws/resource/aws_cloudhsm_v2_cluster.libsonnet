{
  local block = self,
  new(hsm_type, subnet_ids):: (
    {}
    + block.with_hsm_type(hsm_type)
    + block.with_subnet_ids(subnet_ids)
  ),
  with_cluster_certificates(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cluster_certificates" expected to be of type "list"';
    {
      cluster_certificates: converted,
    }
  ),
  with_cluster_certificates_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cluster_certificates" expected to be of type "list"';
    {
      cluster_certificates+: converted,
    }
  ),
  with_cluster_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_id" expected to be of type "string"';
    {
      cluster_id: converted,
    }
  ),
  with_cluster_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_state" expected to be of type "string"';
    {
      cluster_state: converted,
    }
  ),
  with_hsm_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"hsm_type" expected to be of type "string"';
    {
      hsm_type: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"mode" expected to be of type "string"';
    {
      mode: converted,
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
  with_security_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"security_group_id" expected to be of type "string"';
    {
      security_group_id: converted,
    }
  ),
  with_source_backup_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_backup_identifier" expected to be of type "string"';
    {
      source_backup_identifier: converted,
    }
  ),
  with_subnet_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
    {
      subnet_ids: converted,
    }
  ),
  with_subnet_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
    {
      subnet_ids+: converted,
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
  with_vpc_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
    {
      vpc_id: converted,
    }
  ),
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
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
