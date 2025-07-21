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
  with_created_by(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_by" expected to be of type "string"';
    {
      created_by: converted,
    }
  ),
  with_deletion_protected(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"deletion_protected" expected to be of type "bool"';
    {
      deletion_protected: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_last_modified_by(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_modified_by" expected to be of type "string"';
    {
      last_modified_by: converted,
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
  with_tags_all(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  region:: {
    local block = self,
    new(name):: (
      {}
      + block.with_name(name)
    ),
    with_kms_key_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
      {
        kms_key_arn: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_status(value):: (
      local converted = value;
      assert std.isString(converted) : '"status" expected to be of type "string"';
      {
        status: converted,
      }
    ),
    with_status_message(value):: (
      local converted = value;
      assert std.isString(converted) : '"status_message" expected to be of type "string"';
      {
        status_message: converted,
      }
    ),
  },
  regions:: {
    local block = self,
    new(name):: (
      {}
      + block.with_name(name)
    ),
    with_kms_key_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
      {
        kms_key_arn: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_status(value):: (
      local converted = value;
      assert std.isString(converted) : '"status" expected to be of type "string"';
      {
        status: converted,
      }
    ),
    with_status_message(value):: (
      local converted = value;
      assert std.isString(converted) : '"status_message" expected to be of type "string"';
      {
        status_message: converted,
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
  with_region(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      region: value,
    }
  ),
  with_regions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      regions: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_region_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      region+: converted,
    }
  ),
  with_regions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      regions+: converted,
    }
  ),
}
