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
  with_creation_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"creation_time" expected to be of type "string"';
    {
      creation_time: converted,
    }
  ),
  with_deployment_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"deployment_status" expected to be of type "string"';
    {
      deployment_status: converted,
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
  report_delivery_channel:: {
    local block = self,
    new(s3_bucket_name):: (
      {}
      + block.with_s3_bucket_name(s3_bucket_name)
    ),
    with_formats(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"formats" expected to be of type "set"';
      {
        formats: converted,
      }
    ),
    with_formats_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"formats" expected to be of type "set"';
      {
        formats+: converted,
      }
    ),
    with_s3_bucket_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_bucket_name" expected to be of type "string"';
      {
        s3_bucket_name: converted,
      }
    ),
    with_s3_key_prefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_key_prefix" expected to be of type "string"';
      {
        s3_key_prefix: converted,
      }
    ),
  },
  report_setting:: {
    local block = self,
    new(report_template):: (
      {}
      + block.with_report_template(report_template)
    ),
    with_accounts(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"accounts" expected to be of type "set"';
      {
        accounts: converted,
      }
    ),
    with_accounts_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"accounts" expected to be of type "set"';
      {
        accounts+: converted,
      }
    ),
    with_framework_arns(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"framework_arns" expected to be of type "set"';
      {
        framework_arns: converted,
      }
    ),
    with_framework_arns_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"framework_arns" expected to be of type "set"';
      {
        framework_arns+: converted,
      }
    ),
    with_number_of_frameworks(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"number_of_frameworks" expected to be of type "number"';
      {
        number_of_frameworks: converted,
      }
    ),
    with_organization_units(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"organization_units" expected to be of type "set"';
      {
        organization_units: converted,
      }
    ),
    with_organization_units_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"organization_units" expected to be of type "set"';
      {
        organization_units+: converted,
      }
    ),
    with_regions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"regions" expected to be of type "set"';
      {
        regions: converted,
      }
    ),
    with_regions_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"regions" expected to be of type "set"';
      {
        regions+: converted,
      }
    ),
    with_report_template(value):: (
      local converted = value;
      assert std.isString(converted) : '"report_template" expected to be of type "string"';
      {
        report_template: converted,
      }
    ),
  },
  with_report_delivery_channel(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      report_delivery_channel: value,
    }
  ),
  with_report_setting(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      report_setting: value,
    }
  ),
  with_report_delivery_channel_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      report_delivery_channel+: converted,
    }
  ),
  with_report_setting_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      report_setting+: converted,
    }
  ),
}
