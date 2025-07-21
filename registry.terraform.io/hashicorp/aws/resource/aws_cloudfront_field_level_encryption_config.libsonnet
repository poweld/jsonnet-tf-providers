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
  content_type_profile_config:: {
    local block = self,
    new(forward_when_content_type_is_unknown):: (
      {}
      + block.with_forward_when_content_type_is_unknown(forward_when_content_type_is_unknown)
    ),
    with_forward_when_content_type_is_unknown(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"forward_when_content_type_is_unknown" expected to be of type "bool"';
      {
        forward_when_content_type_is_unknown: converted,
      }
    ),
    content_type_profiles:: {
      local block = self,
      new():: (
        {}
      ),
      items:: {
        local block = self,
        new(content_type, format):: (
          {}
          + block.with_content_type(content_type)
          + block.with_format(format)
        ),
        with_content_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"content_type" expected to be of type "string"';
          {
            content_type: converted,
          }
        ),
        with_format(value):: (
          local converted = value;
          assert std.isString(converted) : '"format" expected to be of type "string"';
          {
            format: converted,
          }
        ),
        with_profile_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"profile_id" expected to be of type "string"';
          {
            profile_id: converted,
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
    with_content_type_profiles(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        content_type_profiles: value,
      }
    ),
    with_content_type_profiles_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        content_type_profiles+: converted,
      }
    ),
  },
  query_arg_profile_config:: {
    local block = self,
    new(forward_when_query_arg_profile_is_unknown):: (
      {}
      + block.with_forward_when_query_arg_profile_is_unknown(forward_when_query_arg_profile_is_unknown)
    ),
    with_forward_when_query_arg_profile_is_unknown(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"forward_when_query_arg_profile_is_unknown" expected to be of type "bool"';
      {
        forward_when_query_arg_profile_is_unknown: converted,
      }
    ),
    query_arg_profiles:: {
      local block = self,
      new():: (
        {}
      ),
      items:: {
        local block = self,
        new(profile_id, query_arg):: (
          {}
          + block.with_profile_id(profile_id)
          + block.with_query_arg(query_arg)
        ),
        with_profile_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"profile_id" expected to be of type "string"';
          {
            profile_id: converted,
          }
        ),
        with_query_arg(value):: (
          local converted = value;
          assert std.isString(converted) : '"query_arg" expected to be of type "string"';
          {
            query_arg: converted,
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
    with_query_arg_profiles(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        query_arg_profiles: value,
      }
    ),
    with_query_arg_profiles_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        query_arg_profiles+: converted,
      }
    ),
  },
  with_content_type_profile_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      content_type_profile_config: value,
    }
  ),
  with_query_arg_profile_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      query_arg_profile_config: value,
    }
  ),
  with_content_type_profile_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      content_type_profile_config+: converted,
    }
  ),
  with_query_arg_profile_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      query_arg_profile_config+: converted,
    }
  ),
}
