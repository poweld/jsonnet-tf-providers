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
  cookies_config:: {
    local block = self,
    new(cookie_behavior):: (
      {}
      + block.with_cookie_behavior(cookie_behavior)
    ),
    with_cookie_behavior(value):: (
      local converted = value;
      assert std.isString(converted) : '"cookie_behavior" expected to be of type "string"';
      {
        cookie_behavior: converted,
      }
    ),
    cookies:: {
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
    with_cookies(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cookies: value,
      }
    ),
    with_cookies_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cookies+: converted,
      }
    ),
  },
  headers_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_header_behavior(value):: (
      local converted = value;
      assert std.isString(converted) : '"header_behavior" expected to be of type "string"';
      {
        header_behavior: converted,
      }
    ),
    headers:: {
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
    with_headers(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        headers: value,
      }
    ),
    with_headers_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        headers+: converted,
      }
    ),
  },
  query_strings_config:: {
    local block = self,
    new(query_string_behavior):: (
      {}
      + block.with_query_string_behavior(query_string_behavior)
    ),
    with_query_string_behavior(value):: (
      local converted = value;
      assert std.isString(converted) : '"query_string_behavior" expected to be of type "string"';
      {
        query_string_behavior: converted,
      }
    ),
    query_strings:: {
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
    with_query_strings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        query_strings: value,
      }
    ),
    with_query_strings_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        query_strings+: converted,
      }
    ),
  },
  with_cookies_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cookies_config: value,
    }
  ),
  with_headers_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      headers_config: value,
    }
  ),
  with_query_strings_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      query_strings_config: value,
    }
  ),
  with_cookies_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cookies_config+: converted,
    }
  ),
  with_headers_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      headers_config+: converted,
    }
  ),
  with_query_strings_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      query_strings_config+: converted,
    }
  ),
}
