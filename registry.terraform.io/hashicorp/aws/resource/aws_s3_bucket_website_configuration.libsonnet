{
  local block = self,
  new(bucket):: (
    {}
    + block.with_bucket(bucket)
  ),
  with_bucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket" expected to be of type "string"';
    {
      bucket: converted,
    }
  ),
  with_expected_bucket_owner(value):: (
    local converted = value;
    assert std.isString(converted) : '"expected_bucket_owner" expected to be of type "string"';
    {
      expected_bucket_owner: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_routing_rules(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_rules" expected to be of type "string"';
    {
      routing_rules: converted,
    }
  ),
  with_website_domain(value):: (
    local converted = value;
    assert std.isString(converted) : '"website_domain" expected to be of type "string"';
    {
      website_domain: converted,
    }
  ),
  with_website_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"website_endpoint" expected to be of type "string"';
    {
      website_endpoint: converted,
    }
  ),
  error_document:: {
    local block = self,
    new(key):: (
      {}
      + block.with_key(key)
    ),
    with_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
      }
    ),
  },
  index_document:: {
    local block = self,
    new(suffix):: (
      {}
      + block.with_suffix(suffix)
    ),
    with_suffix(value):: (
      local converted = value;
      assert std.isString(converted) : '"suffix" expected to be of type "string"';
      {
        suffix: converted,
      }
    ),
  },
  redirect_all_requests_to:: {
    local block = self,
    new(host_name):: (
      {}
      + block.with_host_name(host_name)
    ),
    with_host_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"host_name" expected to be of type "string"';
      {
        host_name: converted,
      }
    ),
    with_protocol(value):: (
      local converted = value;
      assert std.isString(converted) : '"protocol" expected to be of type "string"';
      {
        protocol: converted,
      }
    ),
  },
  routing_rule:: {
    local block = self,
    new():: (
      {}
    ),
    condition:: {
      local block = self,
      new():: (
        {}
      ),
      with_http_error_code_returned_equals(value):: (
        local converted = value;
        assert std.isString(converted) : '"http_error_code_returned_equals" expected to be of type "string"';
        {
          http_error_code_returned_equals: converted,
        }
      ),
      with_key_prefix_equals(value):: (
        local converted = value;
        assert std.isString(converted) : '"key_prefix_equals" expected to be of type "string"';
        {
          key_prefix_equals: converted,
        }
      ),
    },
    redirect:: {
      local block = self,
      new():: (
        {}
      ),
      with_host_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"host_name" expected to be of type "string"';
        {
          host_name: converted,
        }
      ),
      with_http_redirect_code(value):: (
        local converted = value;
        assert std.isString(converted) : '"http_redirect_code" expected to be of type "string"';
        {
          http_redirect_code: converted,
        }
      ),
      with_protocol(value):: (
        local converted = value;
        assert std.isString(converted) : '"protocol" expected to be of type "string"';
        {
          protocol: converted,
        }
      ),
      with_replace_key_prefix_with(value):: (
        local converted = value;
        assert std.isString(converted) : '"replace_key_prefix_with" expected to be of type "string"';
        {
          replace_key_prefix_with: converted,
        }
      ),
      with_replace_key_with(value):: (
        local converted = value;
        assert std.isString(converted) : '"replace_key_with" expected to be of type "string"';
        {
          replace_key_with: converted,
        }
      ),
    },
    with_condition(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        condition: value,
      }
    ),
    with_redirect(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        redirect: value,
      }
    ),
    with_condition_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        condition+: converted,
      }
    ),
    with_redirect_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        redirect+: converted,
      }
    ),
  },
  with_error_document(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      error_document: value,
    }
  ),
  with_index_document(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      index_document: value,
    }
  ),
  with_redirect_all_requests_to(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      redirect_all_requests_to: value,
    }
  ),
  with_routing_rule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      routing_rule: value,
    }
  ),
  with_error_document_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      error_document+: converted,
    }
  ),
  with_index_document_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      index_document+: converted,
    }
  ),
  with_redirect_all_requests_to_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      redirect_all_requests_to+: converted,
    }
  ),
  with_routing_rule_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      routing_rule+: converted,
    }
  ),
}
