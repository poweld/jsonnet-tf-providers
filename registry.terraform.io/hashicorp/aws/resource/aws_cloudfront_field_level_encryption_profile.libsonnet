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
  with_caller_reference(value):: (
    local converted = value;
    assert std.isString(converted) : '"caller_reference" expected to be of type "string"';
    {
      caller_reference: converted,
    }
  ),
  with_comment(value):: (
    local converted = value;
    assert std.isString(converted) : '"comment" expected to be of type "string"';
    {
      comment: converted,
    }
  ),
  with_etag(value):: (
    local converted = value;
    assert std.isString(converted) : '"etag" expected to be of type "string"';
    {
      etag: converted,
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
  encryption_entities:: {
    local block = self,
    new():: (
      {}
    ),
    items:: {
      local block = self,
      new(provider_id, public_key_id):: (
        {}
        + block.with_provider_id(provider_id)
        + block.with_public_key_id(public_key_id)
      ),
      with_provider_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"provider_id" expected to be of type "string"';
        {
          provider_id: converted,
        }
      ),
      with_public_key_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"public_key_id" expected to be of type "string"';
        {
          public_key_id: converted,
        }
      ),
      field_patterns:: {
        local block = self,
        new():: (
          {}
        ),
        with_items(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"items" expected to be of type "set"';
          {
            items: converted,
          }
        ),
        with_items_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"items" expected to be of type "set"';
          {
            items+: converted,
          }
        ),
      },
      with_field_patterns(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          field_patterns: value,
        }
      ),
      with_field_patterns_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          field_patterns+: converted,
        }
      ),
    },
    with_items(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        items: value,
      }
    ),
    with_items_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        items+: converted,
      }
    ),
  },
  with_encryption_entities(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_entities: value,
    }
  ),
  with_encryption_entities_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_entities+: converted,
    }
  ),
}
