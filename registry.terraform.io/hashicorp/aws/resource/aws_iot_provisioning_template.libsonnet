{
  local block = self,
  new(name, provisioning_role_arn, template_body):: (
    {}
    + block.with_name(name)
    + block.with_provisioning_role_arn(provisioning_role_arn)
    + block.with_template_body(template_body)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_default_version_id(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"default_version_id" expected to be of type "number"';
    {
      default_version_id: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
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
  with_provisioning_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"provisioning_role_arn" expected to be of type "string"';
    {
      provisioning_role_arn: converted,
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
  with_template_body(value):: (
    local converted = value;
    assert std.isString(converted) : '"template_body" expected to be of type "string"';
    {
      template_body: converted,
    }
  ),
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  pre_provisioning_hook:: {
    local block = self,
    new(target_arn):: (
      {}
      + block.with_target_arn(target_arn)
    ),
    with_payload_version(value):: (
      local converted = value;
      assert std.isString(converted) : '"payload_version" expected to be of type "string"';
      {
        payload_version: converted,
      }
    ),
    with_target_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"target_arn" expected to be of type "string"';
      {
        target_arn: converted,
      }
    ),
  },
  with_pre_provisioning_hook(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      pre_provisioning_hook: value,
    }
  ),
  with_pre_provisioning_hook_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      pre_provisioning_hook+: converted,
    }
  ),
}
