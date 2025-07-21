{
  local block = self,
  new(cell_name):: (
    {}
    + block.with_cell_name(cell_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_cell_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"cell_name" expected to be of type "string"';
    {
      cell_name: converted,
    }
  ),
  with_cells(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cells" expected to be of type "list"';
    {
      cells: converted,
    }
  ),
  with_cells_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cells" expected to be of type "list"';
    {
      cells+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_parent_readiness_scopes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"parent_readiness_scopes" expected to be of type "list"';
    {
      parent_readiness_scopes: converted,
    }
  ),
  with_parent_readiness_scopes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"parent_readiness_scopes" expected to be of type "list"';
    {
      parent_readiness_scopes+: converted,
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
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
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
