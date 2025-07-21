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
  with_availability_zones(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"availability_zones" expected to be of type "set"';
    {
      availability_zones: converted,
    }
  ),
  with_availability_zones_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"availability_zones" expected to be of type "set"';
    {
      availability_zones+: converted,
    }
  ),
  with_connection_draining(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"connection_draining" expected to be of type "bool"';
    {
      connection_draining: converted,
    }
  ),
  with_connection_draining_timeout(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"connection_draining_timeout" expected to be of type "number"';
    {
      connection_draining_timeout: converted,
    }
  ),
  with_cross_zone_load_balancing(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"cross_zone_load_balancing" expected to be of type "bool"';
    {
      cross_zone_load_balancing: converted,
    }
  ),
  with_desync_mitigation_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"desync_mitigation_mode" expected to be of type "string"';
    {
      desync_mitigation_mode: converted,
    }
  ),
  with_dns_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"dns_name" expected to be of type "string"';
    {
      dns_name: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_idle_timeout(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"idle_timeout" expected to be of type "number"';
    {
      idle_timeout: converted,
    }
  ),
  with_instances(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"instances" expected to be of type "set"';
    {
      instances: converted,
    }
  ),
  with_instances_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"instances" expected to be of type "set"';
    {
      instances+: converted,
    }
  ),
  with_internal(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"internal" expected to be of type "bool"';
    {
      internal: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_name_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
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
  with_security_groups(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
    {
      security_groups: converted,
    }
  ),
  with_security_groups_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
    {
      security_groups+: converted,
    }
  ),
  with_source_security_group(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_security_group" expected to be of type "string"';
    {
      source_security_group: converted,
    }
  ),
  with_source_security_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_security_group_id" expected to be of type "string"';
    {
      source_security_group_id: converted,
    }
  ),
  with_subnets(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
    {
      subnets: converted,
    }
  ),
  with_subnets_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
    {
      subnets+: converted,
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
  with_zone_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"zone_id" expected to be of type "string"';
    {
      zone_id: converted,
    }
  ),
  access_logs:: {
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
    with_bucket_prefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
      {
        bucket_prefix: converted,
      }
    ),
    with_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    with_interval(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"interval" expected to be of type "number"';
      {
        interval: converted,
      }
    ),
  },
  health_check:: {
    local block = self,
    new(healthy_threshold, interval, target, timeout, unhealthy_threshold):: (
      {}
      + block.with_healthy_threshold(healthy_threshold)
      + block.with_interval(interval)
      + block.with_target(target)
      + block.with_timeout(timeout)
      + block.with_unhealthy_threshold(unhealthy_threshold)
    ),
    with_healthy_threshold(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"healthy_threshold" expected to be of type "number"';
      {
        healthy_threshold: converted,
      }
    ),
    with_interval(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"interval" expected to be of type "number"';
      {
        interval: converted,
      }
    ),
    with_target(value):: (
      local converted = value;
      assert std.isString(converted) : '"target" expected to be of type "string"';
      {
        target: converted,
      }
    ),
    with_timeout(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"timeout" expected to be of type "number"';
      {
        timeout: converted,
      }
    ),
    with_unhealthy_threshold(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"unhealthy_threshold" expected to be of type "number"';
      {
        unhealthy_threshold: converted,
      }
    ),
  },
  listener:: {
    local block = self,
    new(instance_port, instance_protocol, lb_port, lb_protocol):: (
      {}
      + block.with_instance_port(instance_port)
      + block.with_instance_protocol(instance_protocol)
      + block.with_lb_port(lb_port)
      + block.with_lb_protocol(lb_protocol)
    ),
    with_instance_port(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"instance_port" expected to be of type "number"';
      {
        instance_port: converted,
      }
    ),
    with_instance_protocol(value):: (
      local converted = value;
      assert std.isString(converted) : '"instance_protocol" expected to be of type "string"';
      {
        instance_protocol: converted,
      }
    ),
    with_lb_port(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"lb_port" expected to be of type "number"';
      {
        lb_port: converted,
      }
    ),
    with_lb_protocol(value):: (
      local converted = value;
      assert std.isString(converted) : '"lb_protocol" expected to be of type "string"';
      {
        lb_protocol: converted,
      }
    ),
    with_ssl_certificate_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"ssl_certificate_id" expected to be of type "string"';
      {
        ssl_certificate_id: converted,
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
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_access_logs(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_logs: value,
    }
  ),
  with_health_check(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      health_check: value,
    }
  ),
  with_listener(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      listener: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_access_logs_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_logs+: converted,
    }
  ),
  with_health_check_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      health_check+: converted,
    }
  ),
  with_listener_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      listener+: converted,
    }
  ),
}
