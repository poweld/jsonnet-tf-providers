{
  local block = self,
  new():: (
    {}
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_certificate_body(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_body" expected to be of type "string"';
    {
      certificate_body: converted,
    }
  ),
  with_certificate_chain(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_chain" expected to be of type "string"';
    {
      certificate_chain: converted,
    }
  ),
  with_expiration_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"expiration_date" expected to be of type "string"';
    {
      expiration_date: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_latest(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"latest" expected to be of type "bool"';
    {
      latest: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_name_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
    }
  ),
  with_path(value):: (
    local converted = value;
    assert std.isString(converted) : '"path" expected to be of type "string"';
    {
      path: converted,
    }
  ),
  with_path_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"path_prefix" expected to be of type "string"';
    {
      path_prefix: converted,
    }
  ),
  with_upload_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"upload_date" expected to be of type "string"';
    {
      upload_date: converted,
    }
  ),
}
