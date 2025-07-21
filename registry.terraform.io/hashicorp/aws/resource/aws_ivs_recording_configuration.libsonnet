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
  with_recording_reconnect_window_seconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"recording_reconnect_window_seconds" expected to be of type "number"';
    {
      recording_reconnect_window_seconds: converted,
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
  with_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
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
  destination_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    s3:: {
      local block = self,
      new(bucket_name):: (
        {}
        + block.with_bucket_name(bucket_name)
      ),
      with_bucket_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
        {
          bucket_name: converted,
        }
      ),
    },
    with_s3(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3: value,
      }
    ),
    with_s3_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3+: converted,
      }
    ),
  },
  thumbnail_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_recording_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"recording_mode" expected to be of type "string"';
      {
        recording_mode: converted,
      }
    ),
    with_target_interval_seconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"target_interval_seconds" expected to be of type "number"';
      {
        target_interval_seconds: converted,
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
  with_destination_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination_configuration: value,
    }
  ),
  with_thumbnail_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      thumbnail_configuration: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_destination_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination_configuration+: converted,
    }
  ),
  with_thumbnail_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      thumbnail_configuration+: converted,
    }
  ),
}
