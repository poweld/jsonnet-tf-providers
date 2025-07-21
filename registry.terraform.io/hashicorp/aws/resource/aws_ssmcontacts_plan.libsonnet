{
  local block = self,
  new(contact_id):: (
    {}
    + block.with_contact_id(contact_id)
  ),
  with_contact_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"contact_id" expected to be of type "string"';
    {
      contact_id: converted,
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
  stage:: {
    local block = self,
    new(duration_in_minutes):: (
      {}
      + block.with_duration_in_minutes(duration_in_minutes)
    ),
    with_duration_in_minutes(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"duration_in_minutes" expected to be of type "number"';
      {
        duration_in_minutes: converted,
      }
    ),
    target:: {
      local block = self,
      new():: (
        {}
      ),
      channel_target_info:: {
        local block = self,
        new(contact_channel_id):: (
          {}
          + block.with_contact_channel_id(contact_channel_id)
        ),
        with_contact_channel_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"contact_channel_id" expected to be of type "string"';
          {
            contact_channel_id: converted,
          }
        ),
        with_retry_interval_in_minutes(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"retry_interval_in_minutes" expected to be of type "number"';
          {
            retry_interval_in_minutes: converted,
          }
        ),
      },
      contact_target_info:: {
        local block = self,
        new(is_essential):: (
          {}
          + block.with_is_essential(is_essential)
        ),
        with_contact_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"contact_id" expected to be of type "string"';
          {
            contact_id: converted,
          }
        ),
        with_is_essential(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"is_essential" expected to be of type "bool"';
          {
            is_essential: converted,
          }
        ),
      },
      with_channel_target_info(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          channel_target_info: value,
        }
      ),
      with_contact_target_info(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          contact_target_info: value,
        }
      ),
      with_channel_target_info_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          channel_target_info+: converted,
        }
      ),
      with_contact_target_info_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          contact_target_info+: converted,
        }
      ),
    },
    with_target(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        target: value,
      }
    ),
    with_target_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        target+: converted,
      }
    ),
  },
  with_stage(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      stage: value,
    }
  ),
  with_stage_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      stage+: converted,
    }
  ),
}
