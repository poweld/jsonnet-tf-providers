{
  local block = self,
  new(virtual_mfa_device_name):: (
    {}
    + block.with_virtual_mfa_device_name(virtual_mfa_device_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_base_32_string_seed(value):: (
    local converted = value;
    assert std.isString(converted) : '"base_32_string_seed" expected to be of type "string"';
    {
      base_32_string_seed: converted,
    }
  ),
  with_enable_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"enable_date" expected to be of type "string"';
    {
      enable_date: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_path(value):: (
    local converted = value;
    assert std.isString(converted) : '"path" expected to be of type "string"';
    {
      path: converted,
    }
  ),
  with_qr_code_png(value):: (
    local converted = value;
    assert std.isString(converted) : '"qr_code_png" expected to be of type "string"';
    {
      qr_code_png: converted,
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
  with_user_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name" expected to be of type "string"';
    {
      user_name: converted,
    }
  ),
  with_virtual_mfa_device_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"virtual_mfa_device_name" expected to be of type "string"';
    {
      virtual_mfa_device_name: converted,
    }
  ),
}
