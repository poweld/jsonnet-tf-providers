{
  local block = self,
  new(global_network_id):: (
    {}
    + block.with_global_network_id(global_network_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_base_policy_document(value):: (
    local converted = value;
    assert std.isString(converted) : '"base_policy_document" expected to be of type "string"';
    {
      base_policy_document: converted,
    }
  ),
  with_base_policy_regions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"base_policy_regions" expected to be of type "set"';
    {
      base_policy_regions: converted,
    }
  ),
  with_base_policy_regions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"base_policy_regions" expected to be of type "set"';
    {
      base_policy_regions+: converted,
    }
  ),
  with_create_base_policy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"create_base_policy" expected to be of type "bool"';
    {
      create_base_policy: converted,
    }
  ),
  with_created_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_at" expected to be of type "string"';
    {
      created_at: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_edges(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"edges" expected to be of type "list"';
    {
      edges: converted,
    }
  ),
  with_edges_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"edges" expected to be of type "list"';
    {
      edges+: converted,
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
  with_segments(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"segments" expected to be of type "list"';
    {
      segments: converted,
    }
  ),
  with_segments_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"segments" expected to be of type "list"';
    {
      segments+: converted,
    }
  ),
  with_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
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
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
