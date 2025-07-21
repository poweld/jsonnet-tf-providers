{
  local block = self,
  new():: (
    {}
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_arn_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn_prefix" expected to be of type "string"';
    {
      arn_prefix: converted,
    }
  ),
  with_container_orchestration_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"container_orchestration_type" expected to be of type "string"';
    {
      container_orchestration_type: converted,
    }
  ),
  with_eks_properties(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"eks_properties" expected to be of type "list"';
    {
      eks_properties: converted,
    }
  ),
  with_eks_properties_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"eks_properties" expected to be of type "list"';
    {
      eks_properties+: converted,
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
  with_node_properties(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"node_properties" expected to be of type "list"';
    {
      node_properties: converted,
    }
  ),
  with_node_properties_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"node_properties" expected to be of type "list"';
    {
      node_properties+: converted,
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
  with_retry_strategy(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"retry_strategy" expected to be of type "list"';
    {
      retry_strategy: converted,
    }
  ),
  with_retry_strategy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"retry_strategy" expected to be of type "list"';
    {
      retry_strategy+: converted,
    }
  ),
  with_revision(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"revision" expected to be of type "number"';
    {
      revision: converted,
    }
  ),
  with_scheduling_priority(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"scheduling_priority" expected to be of type "number"';
    {
      scheduling_priority: converted,
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
  with_timeout(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"timeout" expected to be of type "list"';
    {
      timeout: converted,
    }
  ),
  with_timeout_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"timeout" expected to be of type "list"';
    {
      timeout+: converted,
    }
  ),
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
}
