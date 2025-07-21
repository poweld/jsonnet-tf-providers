{
  local block = self,
  new(name, type, zone_id):: (
    {}
    + block.with_name(name)
    + block.with_type(type)
    + block.with_zone_id(zone_id)
  ),
  with_allow_overwrite(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"allow_overwrite" expected to be of type "bool"';
    {
      allow_overwrite: converted,
    }
  ),
  with_fqdn(value):: (
    local converted = value;
    assert std.isString(converted) : '"fqdn" expected to be of type "string"';
    {
      fqdn: converted,
    }
  ),
  with_health_check_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"health_check_id" expected to be of type "string"';
    {
      health_check_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_multivalue_answer_routing_policy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"multivalue_answer_routing_policy" expected to be of type "bool"';
    {
      multivalue_answer_routing_policy: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_records(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"records" expected to be of type "set"';
    {
      records: converted,
    }
  ),
  with_records_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"records" expected to be of type "set"';
    {
      records+: converted,
    }
  ),
  with_set_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"set_identifier" expected to be of type "string"';
    {
      set_identifier: converted,
    }
  ),
  with_ttl(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"ttl" expected to be of type "number"';
    {
      ttl: converted,
    }
  ),
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  with_zone_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"zone_id" expected to be of type "string"';
    {
      zone_id: converted,
    }
  ),
  alias:: {
    local block = self,
    new(evaluate_target_health, name, zone_id):: (
      {}
      + block.with_evaluate_target_health(evaluate_target_health)
      + block.with_name(name)
      + block.with_zone_id(zone_id)
    ),
    with_evaluate_target_health(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"evaluate_target_health" expected to be of type "bool"';
      {
        evaluate_target_health: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_zone_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"zone_id" expected to be of type "string"';
      {
        zone_id: converted,
      }
    ),
  },
  cidr_routing_policy:: {
    local block = self,
    new(collection_id, location_name):: (
      {}
      + block.with_collection_id(collection_id)
      + block.with_location_name(location_name)
    ),
    with_collection_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"collection_id" expected to be of type "string"';
      {
        collection_id: converted,
      }
    ),
    with_location_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"location_name" expected to be of type "string"';
      {
        location_name: converted,
      }
    ),
  },
  failover_routing_policy:: {
    local block = self,
    new(type):: (
      {}
      + block.with_type(type)
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  geolocation_routing_policy:: {
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
    with_subdivision(value):: (
      local converted = value;
      assert std.isString(converted) : '"subdivision" expected to be of type "string"';
      {
        subdivision: converted,
      }
    ),
  },
  geoproximity_routing_policy:: {
    local block = self,
    new():: (
      {}
    ),
    with_aws_region(value):: (
      local converted = value;
      assert std.isString(converted) : '"aws_region" expected to be of type "string"';
      {
        aws_region: converted,
      }
    ),
    with_bias(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"bias" expected to be of type "number"';
      {
        bias: converted,
      }
    ),
    with_local_zone_group(value):: (
      local converted = value;
      assert std.isString(converted) : '"local_zone_group" expected to be of type "string"';
      {
        local_zone_group: converted,
      }
    ),
    coordinates:: {
      local block = self,
      new(latitude, longitude):: (
        {}
        + block.with_latitude(latitude)
        + block.with_longitude(longitude)
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
    },
    with_coordinates(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        coordinates: value,
      }
    ),
    with_coordinates_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        coordinates+: converted,
      }
    ),
  },
  latency_routing_policy:: {
    local block = self,
    new(region):: (
      {}
      + block.with_region(region)
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
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  weighted_routing_policy:: {
    local block = self,
    new(weight):: (
      {}
      + block.with_weight(weight)
    ),
    with_weight(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"weight" expected to be of type "number"';
      {
        weight: converted,
      }
    ),
  },
  with_alias(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      alias: value,
    }
  ),
  with_cidr_routing_policy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cidr_routing_policy: value,
    }
  ),
  with_failover_routing_policy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      failover_routing_policy: value,
    }
  ),
  with_geolocation_routing_policy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      geolocation_routing_policy: value,
    }
  ),
  with_geoproximity_routing_policy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      geoproximity_routing_policy: value,
    }
  ),
  with_latency_routing_policy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      latency_routing_policy: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_weighted_routing_policy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      weighted_routing_policy: value,
    }
  ),
  with_alias_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      alias+: converted,
    }
  ),
  with_cidr_routing_policy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cidr_routing_policy+: converted,
    }
  ),
  with_failover_routing_policy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      failover_routing_policy+: converted,
    }
  ),
  with_geolocation_routing_policy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      geolocation_routing_policy+: converted,
    }
  ),
  with_geoproximity_routing_policy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      geoproximity_routing_policy+: converted,
    }
  ),
  with_latency_routing_policy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      latency_routing_policy+: converted,
    }
  ),
  with_weighted_routing_policy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      weighted_routing_policy+: converted,
    }
  ),
}
