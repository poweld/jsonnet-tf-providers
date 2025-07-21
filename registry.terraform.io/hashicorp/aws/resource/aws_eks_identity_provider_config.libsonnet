{
  local block = self,
  new(cluster_name):: (
    {}
    + block.with_cluster_name(cluster_name)
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
  with_tags_all(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  oidc:: {
    local block = self,
    new(client_id, identity_provider_config_name, issuer_url):: (
      {}
      + block.with_client_id(client_id)
      + block.with_identity_provider_config_name(identity_provider_config_name)
      + block.with_issuer_url(issuer_url)
    ),
    with_client_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"client_id" expected to be of type "string"';
      {
        client_id: converted,
      }
    ),
    with_groups_claim(value):: (
      local converted = value;
      assert std.isString(converted) : '"groups_claim" expected to be of type "string"';
      {
        groups_claim: converted,
      }
    ),
    with_groups_prefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"groups_prefix" expected to be of type "string"';
      {
        groups_prefix: converted,
      }
    ),
    with_identity_provider_config_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"identity_provider_config_name" expected to be of type "string"';
      {
        identity_provider_config_name: converted,
      }
    ),
    with_issuer_url(value):: (
      local converted = value;
      assert std.isString(converted) : '"issuer_url" expected to be of type "string"';
      {
        issuer_url: converted,
      }
    ),
    with_required_claims(value):: (
      local converted = value;
      assert std.isObject(converted) : '"required_claims" expected to be of type "map"';
      {
        required_claims: converted,
      }
    ),
    with_username_claim(value):: (
      local converted = value;
      assert std.isString(converted) : '"username_claim" expected to be of type "string"';
      {
        username_claim: converted,
      }
    ),
    with_username_prefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"username_prefix" expected to be of type "string"';
      {
        username_prefix: converted,
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
  with_oidc(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      oidc: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_oidc_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      oidc+: converted,
    }
  ),
}
