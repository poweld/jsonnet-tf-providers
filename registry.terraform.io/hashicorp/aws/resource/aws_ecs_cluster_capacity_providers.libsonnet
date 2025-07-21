{
  local block = self,
  new(cluster_name):: (
    {}
    + block.with_cluster_name(cluster_name)
  ),
  with_capacity_providers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"capacity_providers" expected to be of type "set"';
    {
      capacity_providers: converted,
    }
  ),
  with_capacity_providers_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"capacity_providers" expected to be of type "set"';
    {
      capacity_providers+: converted,
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
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  default_capacity_provider_strategy:: {
    local block = self,
    new(capacity_provider):: (
      {}
      + block.with_capacity_provider(capacity_provider)
    ),
    with_base(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"base" expected to be of type "number"';
      {
        base: converted,
      }
    ),
    with_capacity_provider(value):: (
      local converted = value;
      assert std.isString(converted) : '"capacity_provider" expected to be of type "string"';
      {
        capacity_provider: converted,
      }
    ),
    with_weight(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"weight" expected to be of type "number"';
      {
        weight: converted,
      }
    ),
  },
  with_default_capacity_provider_strategy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_capacity_provider_strategy: value,
    }
  ),
  with_default_capacity_provider_strategy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_capacity_provider_strategy+: converted,
    }
  ),
}
