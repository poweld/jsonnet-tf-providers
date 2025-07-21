{
  local block = self,
  new():: (
    {}
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_json(value):: (
    local converted = value;
    assert std.isString(converted) : '"json" expected to be of type "string"';
    {
      json: converted,
    }
  ),
  with_record_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"record_type" expected to be of type "string"';
    {
      record_type: converted,
    }
  ),
  with_start_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"start_endpoint" expected to be of type "string"';
    {
      start_endpoint: converted,
    }
  ),
  with_start_rule(value):: (
    local converted = value;
    assert std.isString(converted) : '"start_rule" expected to be of type "string"';
    {
      start_rule: converted,
    }
  ),
  with_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
  endpoint:: {
    local block = self,
    new(id):: (
      {}
      + block.with_id(id)
    ),
    with_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    with_region(value):: (
      local converted = value;
      assert std.isString(converted) : '"region" expected to be of type "string"';
      {
        region: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    with_value(value):: (
      local converted = value;
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
  },
  rule:: {
    local block = self,
    new(id):: (
      {}
      + block.with_id(id)
    ),
    with_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    geo_proximity_location:: {
      local block = self,
      new():: (
        {}
      ),
      with_bias(value):: (
        local converted = value;
        assert std.isString(converted) : '"bias" expected to be of type "string"';
        {
          bias: converted,
        }
      ),
      with_endpoint_reference(value):: (
        local converted = value;
        assert std.isString(converted) : '"endpoint_reference" expected to be of type "string"';
        {
          endpoint_reference: converted,
        }
      ),
      with_evaluate_target_health(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"evaluate_target_health" expected to be of type "bool"';
        {
          evaluate_target_health: converted,
        }
      ),
      with_health_check(value):: (
        local converted = value;
        assert std.isString(converted) : '"health_check" expected to be of type "string"';
        {
          health_check: converted,
        }
      ),
      with_latitude(value):: (
        local converted = value;
        assert std.isString(converted) : '"latitude" expected to be of type "string"';
        {
          latitude: converted,
        }
      ),
      with_longitude(value):: (
        local converted = value;
        assert std.isString(converted) : '"longitude" expected to be of type "string"';
        {
          longitude: converted,
        }
      ),
      with_region(value):: (
        local converted = value;
        assert std.isString(converted) : '"region" expected to be of type "string"';
        {
          region: converted,
        }
      ),
      with_rule_reference(value):: (
        local converted = value;
        assert std.isString(converted) : '"rule_reference" expected to be of type "string"';
        {
          rule_reference: converted,
        }
      ),
    },
    items:: {
      local block = self,
      new():: (
        {}
      ),
      with_endpoint_reference(value):: (
        local converted = value;
        assert std.isString(converted) : '"endpoint_reference" expected to be of type "string"';
        {
          endpoint_reference: converted,
        }
      ),
      with_health_check(value):: (
        local converted = value;
        assert std.isString(converted) : '"health_check" expected to be of type "string"';
        {
          health_check: converted,
        }
      ),
    },
    location:: {
      local block = self,
      new():: (
        {}
      ),
      with_continent(value):: (
        local converted = value;
        assert std.isString(converted) : '"continent" expected to be of type "string"';
        {
          continent: converted,
        }
      ),
      with_country(value):: (
        local converted = value;
        assert std.isString(converted) : '"country" expected to be of type "string"';
        {
          country: converted,
        }
      ),
      with_endpoint_reference(value):: (
        local converted = value;
        assert std.isString(converted) : '"endpoint_reference" expected to be of type "string"';
        {
          endpoint_reference: converted,
        }
      ),
      with_evaluate_target_health(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"evaluate_target_health" expected to be of type "bool"';
        {
          evaluate_target_health: converted,
        }
      ),
      with_health_check(value):: (
        local converted = value;
        assert std.isString(converted) : '"health_check" expected to be of type "string"';
        {
          health_check: converted,
        }
      ),
      with_is_default(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"is_default" expected to be of type "bool"';
        {
          is_default: converted,
        }
      ),
      with_rule_reference(value):: (
        local converted = value;
        assert std.isString(converted) : '"rule_reference" expected to be of type "string"';
        {
          rule_reference: converted,
        }
      ),
      with_subdivision(value):: (
        local converted = value;
        assert std.isString(converted) : '"subdivision" expected to be of type "string"';
        {
          subdivision: converted,
        }
      ),
    },
    primary:: {
      local block = self,
      new():: (
        {}
      ),
      with_endpoint_reference(value):: (
        local converted = value;
        assert std.isString(converted) : '"endpoint_reference" expected to be of type "string"';
        {
          endpoint_reference: converted,
        }
      ),
      with_evaluate_target_health(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"evaluate_target_health" expected to be of type "bool"';
        {
          evaluate_target_health: converted,
        }
      ),
      with_health_check(value):: (
        local converted = value;
        assert std.isString(converted) : '"health_check" expected to be of type "string"';
        {
          health_check: converted,
        }
      ),
      with_rule_reference(value):: (
        local converted = value;
        assert std.isString(converted) : '"rule_reference" expected to be of type "string"';
        {
          rule_reference: converted,
        }
      ),
    },
    region:: {
      local block = self,
      new():: (
        {}
      ),
      with_endpoint_reference(value):: (
        local converted = value;
        assert std.isString(converted) : '"endpoint_reference" expected to be of type "string"';
        {
          endpoint_reference: converted,
        }
      ),
      with_evaluate_target_health(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"evaluate_target_health" expected to be of type "bool"';
        {
          evaluate_target_health: converted,
        }
      ),
      with_health_check(value):: (
        local converted = value;
        assert std.isString(converted) : '"health_check" expected to be of type "string"';
        {
          health_check: converted,
        }
      ),
      with_region(value):: (
        local converted = value;
        assert std.isString(converted) : '"region" expected to be of type "string"';
        {
          region: converted,
        }
      ),
      with_rule_reference(value):: (
        local converted = value;
        assert std.isString(converted) : '"rule_reference" expected to be of type "string"';
        {
          rule_reference: converted,
        }
      ),
    },
    secondary:: {
      local block = self,
      new():: (
        {}
      ),
      with_endpoint_reference(value):: (
        local converted = value;
        assert std.isString(converted) : '"endpoint_reference" expected to be of type "string"';
        {
          endpoint_reference: converted,
        }
      ),
      with_evaluate_target_health(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"evaluate_target_health" expected to be of type "bool"';
        {
          evaluate_target_health: converted,
        }
      ),
      with_health_check(value):: (
        local converted = value;
        assert std.isString(converted) : '"health_check" expected to be of type "string"';
        {
          health_check: converted,
        }
      ),
      with_rule_reference(value):: (
        local converted = value;
        assert std.isString(converted) : '"rule_reference" expected to be of type "string"';
        {
          rule_reference: converted,
        }
      ),
    },
    with_geo_proximity_location(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        geo_proximity_location: value,
      }
    ),
    with_items(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        items: value,
      }
    ),
    with_location(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        location: value,
      }
    ),
    with_primary(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        primary: value,
      }
    ),
    with_region(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        region: value,
      }
    ),
    with_secondary(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        secondary: value,
      }
    ),
    with_geo_proximity_location_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        geo_proximity_location+: converted,
      }
    ),
    with_items_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        items+: converted,
      }
    ),
    with_location_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        location+: converted,
      }
    ),
    with_primary_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        primary+: converted,
      }
    ),
    with_region_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        region+: converted,
      }
    ),
    with_secondary_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        secondary+: converted,
      }
    ),
  },
  with_endpoint(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      endpoint: value,
    }
  ),
  with_rule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule: value,
    }
  ),
  with_endpoint_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      endpoint+: converted,
    }
  ),
  with_rule_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule+: converted,
    }
  ),
}
