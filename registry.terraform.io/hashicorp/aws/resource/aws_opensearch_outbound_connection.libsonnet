{
  local block = self,
  new(connection_alias):: (
    {}
    + block.with_connection_alias(connection_alias)
  ),
  with_accept_connection(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"accept_connection" expected to be of type "bool"';
    {
      accept_connection: converted,
    }
  ),
  with_connection_alias(value):: (
    local converted = value;
    assert std.isString(converted) : '"connection_alias" expected to be of type "string"';
    {
      connection_alias: converted,
    }
  ),
  with_connection_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"connection_mode" expected to be of type "string"';
    {
      connection_mode: converted,
    }
  ),
  with_connection_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"connection_status" expected to be of type "string"';
    {
      connection_status: converted,
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
  connection_properties:: {
    local block = self,
    new():: (
      {}
    ),
    with_endpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"endpoint" expected to be of type "string"';
      {
        endpoint: converted,
      }
    ),
    cross_cluster_search:: {
      local block = self,
      new():: (
        {}
      ),
      with_skip_unavailable(value):: (
        local converted = value;
        assert std.isString(converted) : '"skip_unavailable" expected to be of type "string"';
        {
          skip_unavailable: converted,
        }
      ),
    },
    with_cross_cluster_search(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cross_cluster_search: value,
      }
    ),
    with_cross_cluster_search_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cross_cluster_search+: converted,
      }
    ),
  },
  local_domain_info:: {
    local block = self,
    new(domain_name, owner_id, region):: (
      {}
      + block.with_domain_name(domain_name)
      + block.with_owner_id(owner_id)
      + block.with_region(region)
    ),
    with_domain_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"domain_name" expected to be of type "string"';
      {
        domain_name: converted,
      }
    ),
    with_owner_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"owner_id" expected to be of type "string"';
      {
        owner_id: converted,
      }
    ),
    with_region(value):: (
      local converted = value;
      assert std.isString(converted) : '"region" expected to be of type "string"';
      {
        region: converted,
      }
    ),
  },
  remote_domain_info:: {
    local block = self,
    new(domain_name, owner_id, region):: (
      {}
      + block.with_domain_name(domain_name)
      + block.with_owner_id(owner_id)
      + block.with_region(region)
    ),
    with_domain_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"domain_name" expected to be of type "string"';
      {
        domain_name: converted,
      }
    ),
    with_owner_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"owner_id" expected to be of type "string"';
      {
        owner_id: converted,
      }
    ),
    with_region(value):: (
      local converted = value;
      assert std.isString(converted) : '"region" expected to be of type "string"';
      {
        region: converted,
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
  },
  with_connection_properties(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      connection_properties: value,
    }
  ),
  with_local_domain_info(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      local_domain_info: value,
    }
  ),
  with_remote_domain_info(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      remote_domain_info: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_connection_properties_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      connection_properties+: converted,
    }
  ),
  with_local_domain_info_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      local_domain_info+: converted,
    }
  ),
  with_remote_domain_info_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      remote_domain_info+: converted,
    }
  ),
}
