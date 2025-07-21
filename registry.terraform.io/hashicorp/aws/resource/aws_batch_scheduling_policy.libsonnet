{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
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
  fair_share_policy:: {
    local block = self,
    new():: (
      {}
    ),
    with_compute_reservation(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"compute_reservation" expected to be of type "number"';
      {
        compute_reservation: converted,
      }
    ),
    with_share_decay_seconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"share_decay_seconds" expected to be of type "number"';
      {
        share_decay_seconds: converted,
      }
    ),
    share_distribution:: {
      local block = self,
      new(share_identifier):: (
        {}
        + block.with_share_identifier(share_identifier)
      ),
      with_share_identifier(value):: (
        local converted = value;
        assert std.isString(converted) : '"share_identifier" expected to be of type "string"';
        {
          share_identifier: converted,
        }
      ),
      with_weight_factor(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"weight_factor" expected to be of type "number"';
        {
          weight_factor: converted,
        }
      ),
    },
    with_share_distribution(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        share_distribution: value,
      }
    ),
    with_share_distribution_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        share_distribution+: converted,
      }
    ),
  },
  with_fair_share_policy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      fair_share_policy: value,
    }
  ),
  with_fair_share_policy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      fair_share_policy+: converted,
    }
  ),
}
