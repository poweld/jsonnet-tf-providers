{
  local block = self,
  new(identity_pool_id, roles):: (
    {}
    + block.with_identity_pool_id(identity_pool_id)
    + block.with_roles(roles)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_identity_pool_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_pool_id" expected to be of type "string"';
    {
      identity_pool_id: converted,
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
  with_roles(value):: (
    local converted = value;
    assert std.isObject(converted) : '"roles" expected to be of type "map"';
    {
      roles: converted,
    }
  ),
  role_mapping:: {
    local block = self,
    new(identity_provider, type):: (
      {}
      + block.with_identity_provider(identity_provider)
      + block.with_type(type)
    ),
    with_ambiguous_role_resolution(value):: (
      local converted = value;
      assert std.isString(converted) : '"ambiguous_role_resolution" expected to be of type "string"';
      {
        ambiguous_role_resolution: converted,
      }
    ),
    with_identity_provider(value):: (
      local converted = value;
      assert std.isString(converted) : '"identity_provider" expected to be of type "string"';
      {
        identity_provider: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    mapping_rule:: {
      local block = self,
      new(claim, match_type, role_arn, value):: (
        {}
        + block.with_claim(claim)
        + block.with_match_type(match_type)
        + block.with_role_arn(role_arn)
        + block.with_value(value)
      ),
      with_claim(value):: (
        local converted = value;
        assert std.isString(converted) : '"claim" expected to be of type "string"';
        {
          claim: converted,
        }
      ),
      with_match_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"match_type" expected to be of type "string"';
        {
          match_type: converted,
        }
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      with_value(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    with_mapping_rule(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        mapping_rule: value,
      }
    ),
    with_mapping_rule_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        mapping_rule+: converted,
      }
    ),
  },
  with_role_mapping(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      role_mapping: value,
    }
  ),
  with_role_mapping_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      role_mapping+: converted,
    }
  ),
}
