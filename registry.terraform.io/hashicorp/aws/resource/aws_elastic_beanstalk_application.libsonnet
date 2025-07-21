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
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
  appversion_lifecycle:: {
    local block = self,
    new(service_role):: (
      {}
      + block.with_service_role(service_role)
    ),
    with_delete_source_from_s3(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"delete_source_from_s3" expected to be of type "bool"';
      {
        delete_source_from_s3: converted,
      }
    ),
    with_max_age_in_days(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_age_in_days" expected to be of type "number"';
      {
        max_age_in_days: converted,
      }
    ),
    with_max_count(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_count" expected to be of type "number"';
      {
        max_count: converted,
      }
    ),
    with_service_role(value):: (
      local converted = value;
      assert std.isString(converted) : '"service_role" expected to be of type "string"';
      {
        service_role: converted,
      }
    ),
  },
  with_appversion_lifecycle(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      appversion_lifecycle: value,
    }
  ),
  with_appversion_lifecycle_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      appversion_lifecycle+: converted,
    }
  ),
}
