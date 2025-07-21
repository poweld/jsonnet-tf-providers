{
  local block = self,
  new(global_network_id, site_id):: (
    {}
    + block.with_global_network_id(global_network_id)
    + block.with_site_id(site_id)
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
  with_global_network_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"global_network_id" expected to be of type "string"';
    {
      global_network_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_provider_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_name" expected to be of type "string"';
    {
      provider_name: converted,
    }
  ),
  with_site_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"site_id" expected to be of type "string"';
    {
      site_id: converted,
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
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  bandwidth:: {
    local block = self,
    new():: (
      {}
    ),
    with_download_speed(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"download_speed" expected to be of type "number"';
      {
        download_speed: converted,
      }
    ),
    with_upload_speed(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"upload_speed" expected to be of type "number"';
      {
        upload_speed: converted,
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
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_bandwidth(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      bandwidth: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_bandwidth_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      bandwidth+: converted,
    }
  ),
}
