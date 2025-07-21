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
  with_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
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
  notification_settings:: {
    local block = self,
    new():: (
      {}
    ),
    with_channel(value):: (
      local converted = value;
      assert std.isString(converted) : '"channel" expected to be of type "string"';
      {
        channel: converted,
      }
    ),
    with_configured_by(value):: (
      local converted = value;
      assert std.isString(converted) : '"configured_by" expected to be of type "string"';
      {
        configured_by: converted,
      }
    ),
    with_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    with_event(value):: (
      local converted = value;
      assert std.isString(converted) : '"event" expected to be of type "string"';
      {
        event: converted,
      }
    ),
    with_threshold(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"threshold" expected to be of type "number"';
      {
        threshold: converted,
      }
    ),
  },
  source:: {
    local block = self,
    new(source_type):: (
      {}
      + block.with_source_type(source_type)
    ),
    with_source_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_type" expected to be of type "string"';
      {
        source_type: converted,
      }
    ),
    source_data:: {
      local block = self,
      new():: (
        {}
      ),
      with_acm_pca_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"acm_pca_arn" expected to be of type "string"';
        {
          acm_pca_arn: converted,
        }
      ),
      with_x509_certificate_data(value):: (
        local converted = value;
        assert std.isString(converted) : '"x509_certificate_data" expected to be of type "string"';
        {
          x509_certificate_data: converted,
        }
      ),
    },
    with_source_data(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        source_data: value,
      }
    ),
    with_source_data_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        source_data+: converted,
      }
    ),
  },
  with_notification_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      notification_settings: value,
    }
  ),
  with_source(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source: value,
    }
  ),
  with_notification_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      notification_settings+: converted,
    }
  ),
  with_source_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source+: converted,
    }
  ),
}
