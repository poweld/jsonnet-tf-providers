{
  local block = self,
  new(authentication, name, target_action, target_pipeline):: (
    {}
    + block.with_authentication(authentication)
    + block.with_name(name)
    + block.with_target_action(target_action)
    + block.with_target_pipeline(target_pipeline)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_authentication(value):: (
    local converted = value;
    assert std.isString(converted) : '"authentication" expected to be of type "string"';
    {
      authentication: converted,
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
  with_target_action(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_action" expected to be of type "string"';
    {
      target_action: converted,
    }
  ),
  with_target_pipeline(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_pipeline" expected to be of type "string"';
    {
      target_pipeline: converted,
    }
  ),
  with_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"url" expected to be of type "string"';
    {
      url: converted,
    }
  ),
  authentication_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_allowed_ip_range(value):: (
      local converted = value;
      assert std.isString(converted) : '"allowed_ip_range" expected to be of type "string"';
      {
        allowed_ip_range: converted,
      }
    ),
    with_secret_token(value):: (
      local converted = value;
      assert std.isString(converted) : '"secret_token" expected to be of type "string"';
      {
        secret_token: converted,
      }
    ),
  },
  filter:: {
    local block = self,
    new(json_path, match_equals):: (
      {}
      + block.with_json_path(json_path)
      + block.with_match_equals(match_equals)
    ),
    with_json_path(value):: (
      local converted = value;
      assert std.isString(converted) : '"json_path" expected to be of type "string"';
      {
        json_path: converted,
      }
    ),
    with_match_equals(value):: (
      local converted = value;
      assert std.isString(converted) : '"match_equals" expected to be of type "string"';
      {
        match_equals: converted,
      }
    ),
  },
  with_authentication_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      authentication_configuration: value,
    }
  ),
  with_filter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter: value,
    }
  ),
  with_authentication_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      authentication_configuration+: converted,
    }
  ),
  with_filter_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter+: converted,
    }
  ),
}
