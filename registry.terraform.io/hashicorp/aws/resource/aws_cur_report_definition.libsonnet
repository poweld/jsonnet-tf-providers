{
  local block = self,
  new(additional_schema_elements, compression, format, report_name, s3_bucket, s3_prefix, s3_region, time_unit):: (
    {}
    + block.with_additional_schema_elements(additional_schema_elements)
    + block.with_compression(compression)
    + block.with_format(format)
    + block.with_report_name(report_name)
    + block.with_s3_bucket(s3_bucket)
    + block.with_s3_prefix(s3_prefix)
    + block.with_s3_region(s3_region)
    + block.with_time_unit(time_unit)
  ),
  with_additional_artifacts(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"additional_artifacts" expected to be of type "set"';
    {
      additional_artifacts: converted,
    }
  ),
  with_additional_artifacts_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"additional_artifacts" expected to be of type "set"';
    {
      additional_artifacts+: converted,
    }
  ),
  with_additional_schema_elements(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"additional_schema_elements" expected to be of type "set"';
    {
      additional_schema_elements: converted,
    }
  ),
  with_additional_schema_elements_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"additional_schema_elements" expected to be of type "set"';
    {
      additional_schema_elements+: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_compression(value):: (
    local converted = value;
    assert std.isString(converted) : '"compression" expected to be of type "string"';
    {
      compression: converted,
    }
  ),
  with_format(value):: (
    local converted = value;
    assert std.isString(converted) : '"format" expected to be of type "string"';
    {
      format: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_refresh_closed_reports(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"refresh_closed_reports" expected to be of type "bool"';
    {
      refresh_closed_reports: converted,
    }
  ),
  with_report_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"report_name" expected to be of type "string"';
    {
      report_name: converted,
    }
  ),
  with_report_versioning(value):: (
    local converted = value;
    assert std.isString(converted) : '"report_versioning" expected to be of type "string"';
    {
      report_versioning: converted,
    }
  ),
  with_s3_bucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_bucket" expected to be of type "string"';
    {
      s3_bucket: converted,
    }
  ),
  with_s3_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_prefix" expected to be of type "string"';
    {
      s3_prefix: converted,
    }
  ),
  with_s3_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_region" expected to be of type "string"';
    {
      s3_region: converted,
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
  with_time_unit(value):: (
    local converted = value;
    assert std.isString(converted) : '"time_unit" expected to be of type "string"';
    {
      time_unit: converted,
    }
  ),
}
