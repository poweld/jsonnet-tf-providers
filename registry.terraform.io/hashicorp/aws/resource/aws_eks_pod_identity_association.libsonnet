{
  local block = self,
  new(cluster_name, namespace, role_arn, service_account):: (
    {}
    + block.with_cluster_name(cluster_name)
    + block.with_namespace(namespace)
    + block.with_role_arn(role_arn)
    + block.with_service_account(service_account)
  ),
  with_association_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"association_arn" expected to be of type "string"';
    {
      association_arn: converted,
    }
  ),
  with_association_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"association_id" expected to be of type "string"';
    {
      association_id: converted,
    }
  ),
  with_cluster_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_name" expected to be of type "string"';
    {
      cluster_name: converted,
    }
  ),
  with_disable_session_tags(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"disable_session_tags" expected to be of type "bool"';
    {
      disable_session_tags: converted,
    }
  ),
  with_external_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"external_id" expected to be of type "string"';
    {
      external_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_namespace(value):: (
    local converted = value;
    assert std.isString(converted) : '"namespace" expected to be of type "string"';
    {
      namespace: converted,
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
  with_target_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_role_arn" expected to be of type "string"';
    {
      target_role_arn: converted,
    }
  ),
}
