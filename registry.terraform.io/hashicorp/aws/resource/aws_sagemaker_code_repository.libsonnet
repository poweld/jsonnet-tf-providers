{
  local block = self,
  new(code_repository_name):: (
    {}
    + block.with_code_repository_name(code_repository_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_code_repository_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"code_repository_name" expected to be of type "string"';
    {
      code_repository_name: converted,
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
  git_config:: {
    local block = self,
    new(repository_url):: (
      {}
      + block.with_repository_url(repository_url)
    ),
    with_branch(value):: (
      local converted = value;
      assert std.isString(converted) : '"branch" expected to be of type "string"';
      {
        branch: converted,
      }
    ),
    with_repository_url(value):: (
      local converted = value;
      assert std.isString(converted) : '"repository_url" expected to be of type "string"';
      {
        repository_url: converted,
      }
    ),
    with_secret_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"secret_arn" expected to be of type "string"';
      {
        secret_arn: converted,
      }
    ),
  },
  with_git_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      git_config: value,
    }
  ),
  with_git_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      git_config+: converted,
    }
  ),
}
