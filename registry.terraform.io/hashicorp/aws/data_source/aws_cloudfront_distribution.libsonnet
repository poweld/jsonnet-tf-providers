{
  local block = self,
  new(id):: (
    {}
    + block.with_id(id)
  ),
  with_aliases(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"aliases" expected to be of type "set"';
    {
      aliases: converted,
    }
  ),
  with_aliases_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"aliases" expected to be of type "set"';
    {
      aliases+: converted,
    }
  ),
  with_anycast_ip_list_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"anycast_ip_list_id" expected to be of type "string"';
    {
      anycast_ip_list_id: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_domain_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
    }
  ),
  with_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  with_etag(value):: (
    local converted = value;
    assert std.isString(converted) : '"etag" expected to be of type "string"';
    {
      etag: converted,
    }
  ),
  with_hosted_zone_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"hosted_zone_id" expected to be of type "string"';
    {
      hosted_zone_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_in_progress_validation_batches(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"in_progress_validation_batches" expected to be of type "number"';
    {
      in_progress_validation_batches: converted,
    }
  ),
  with_last_modified_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_modified_time" expected to be of type "string"';
    {
      last_modified_time: converted,
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
  with_web_acl_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"web_acl_id" expected to be of type "string"';
    {
      web_acl_id: converted,
    }
  ),
}
