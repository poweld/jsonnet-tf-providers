{
  local block = self,
  new(resource_set_name, resource_set_type):: (
    {}
    + block.with_resource_set_name(resource_set_name)
    + block.with_resource_set_type(resource_set_type)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_resource_set_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_set_name" expected to be of type "string"';
    {
      resource_set_name: converted,
    }
  ),
  with_resource_set_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_set_type" expected to be of type "string"';
    {
      resource_set_type: converted,
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
  resources:: {
    local block = self,
    new():: (
      {}
    ),
    with_component_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"component_id" expected to be of type "string"';
      {
        component_id: converted,
      }
    ),
    with_readiness_scopes(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"readiness_scopes" expected to be of type "list"';
      {
        readiness_scopes: converted,
      }
    ),
    with_readiness_scopes_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"readiness_scopes" expected to be of type "list"';
      {
        readiness_scopes+: converted,
      }
    ),
    with_resource_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
      {
        resource_arn: converted,
      }
    ),
    dns_target_resource:: {
      local block = self,
      new(domain_name):: (
        {}
        + block.with_domain_name(domain_name)
      ),
      with_domain_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"domain_name" expected to be of type "string"';
        {
          domain_name: converted,
        }
      ),
      with_hosted_zone_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"hosted_zone_arn" expected to be of type "string"';
        {
          hosted_zone_arn: converted,
        }
      ),
      with_record_set_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"record_set_id" expected to be of type "string"';
        {
          record_set_id: converted,
        }
      ),
      with_record_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"record_type" expected to be of type "string"';
        {
          record_type: converted,
        }
      ),
      target_resource:: {
        local block = self,
        new():: (
          {}
        ),
        nlb_resource:: {
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
        },
        r53_resource:: {
          local block = self,
          new():: (
            {}
          ),
          with_domain_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"domain_name" expected to be of type "string"';
            {
              domain_name: converted,
            }
          ),
          with_record_set_id(value):: (
            local converted = value;
            assert std.isString(converted) : '"record_set_id" expected to be of type "string"';
            {
              record_set_id: converted,
            }
          ),
        },
        with_nlb_resource(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            nlb_resource: value,
          }
        ),
        with_r53_resource(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            r53_resource: value,
          }
        ),
        with_nlb_resource_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            nlb_resource+: converted,
          }
        ),
        with_r53_resource_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            r53_resource+: converted,
          }
        ),
      },
      with_target_resource(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          target_resource: value,
        }
      ),
      with_target_resource_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          target_resource+: converted,
        }
      ),
    },
    with_dns_target_resource(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dns_target_resource: value,
      }
    ),
    with_dns_target_resource_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dns_target_resource+: converted,
      }
    ),
  },
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
  with_resources(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resources: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_resources_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resources+: converted,
    }
  ),
}
