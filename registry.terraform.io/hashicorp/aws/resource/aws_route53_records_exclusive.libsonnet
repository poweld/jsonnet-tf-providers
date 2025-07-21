{
  local block = self,
  new(zone_id):: (
    {}
    + block.with_zone_id(zone_id)
  ),
  with_zone_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"zone_id" expected to be of type "string"';
    {
      zone_id: converted,
    }
  ),
  resource_record_set:: {
    local block = self,
    new(name):: (
      {}
      + block.with_name(name)
    ),
    with_failover(value):: (
      local converted = value;
      assert std.isString(converted) : '"failover" expected to be of type "string"';
      {
        failover: converted,
      }
    ),
    with_health_check_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"health_check_id" expected to be of type "string"';
      {
        health_check_id: converted,
      }
    ),
    with_multi_value_answer(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"multi_value_answer" expected to be of type "bool"';
      {
        multi_value_answer: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_region(value):: (
      local converted = value;
      assert std.isString(converted) : '"region" expected to be of type "string"';
      {
        region: converted,
      }
    ),
    with_set_identifier(value):: (
      local converted = value;
      assert std.isString(converted) : '"set_identifier" expected to be of type "string"';
      {
        set_identifier: converted,
      }
    ),
    with_traffic_policy_instance_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"traffic_policy_instance_id" expected to be of type "string"';
      {
        traffic_policy_instance_id: converted,
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
    with_weight(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"weight" expected to be of type "number"';
      {
        weight: converted,
      }
    ),
    alias_target:: {
      local block = self,
      new(dns_name, evaluate_target_health, hosted_zone_id):: (
        {}
        + block.with_dns_name(dns_name)
        + block.with_evaluate_target_health(evaluate_target_health)
        + block.with_hosted_zone_id(hosted_zone_id)
      ),
      with_dns_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"dns_name" expected to be of type "string"';
        {
          dns_name: converted,
        }
      ),
      with_evaluate_target_health(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"evaluate_target_health" expected to be of type "bool"';
        {
          evaluate_target_health: converted,
        }
      ),
      with_hosted_zone_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"hosted_zone_id" expected to be of type "string"';
        {
          hosted_zone_id: converted,
        }
      ),
    },
    cidr_routing_config:: {
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
    geolocation:: {
      local block = self,
      new():: (
        {}
      ),
      with_continent_code(value):: (
        local converted = value;
        assert std.isString(converted) : '"continent_code" expected to be of type "string"';
        {
          continent_code: converted,
        }
      ),
      with_country_code(value):: (
        local converted = value;
        assert std.isString(converted) : '"country_code" expected to be of type "string"';
        {
          country_code: converted,
        }
      ),
      with_subdivision_code(value):: (
        local converted = value;
        assert std.isString(converted) : '"subdivision_code" expected to be of type "string"';
        {
          subdivision_code: converted,
        }
      ),
    },
    geoproximity_location:: {
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
    resource_records:: {
      local block = self,
      new(value):: (
        {}
        + block.with_value(value)
      ),
      with_value(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    with_alias_target(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        alias_target: value,
      }
    ),
    with_cidr_routing_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cidr_routing_config: value,
      }
    ),
    with_geolocation(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        geolocation: value,
      }
    ),
    with_geoproximity_location(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        geoproximity_location: value,
      }
    ),
    with_resource_records(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_records: value,
      }
    ),
    with_alias_target_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        alias_target+: converted,
      }
    ),
    with_cidr_routing_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cidr_routing_config+: converted,
      }
    ),
    with_geolocation_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        geolocation+: converted,
      }
    ),
    with_geoproximity_location_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        geoproximity_location+: converted,
      }
    ),
    with_resource_records_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_records+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_create':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    '#with_update':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_resource_record_set(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource_record_set: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_resource_record_set_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource_record_set+: converted,
    }
  ),
}
