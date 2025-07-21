{
  local block = self,
  new(instance_profile_name, name):: (
    {}
    + block.with_instance_profile_name(instance_profile_name)
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_date_created(value):: (
    local converted = value;
    assert std.isString(converted) : '"date_created" expected to be of type "string"';
    {
      date_created: converted,
    }
  ),
  with_date_updated(value):: (
    local converted = value;
    assert std.isString(converted) : '"date_updated" expected to be of type "string"';
    {
      date_updated: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_instance_profile_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_profile_name" expected to be of type "string"';
    {
      instance_profile_name: converted,
    }
  ),
  with_instance_types(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"instance_types" expected to be of type "set"';
    {
      instance_types: converted,
    }
  ),
  with_instance_types_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"instance_types" expected to be of type "set"';
    {
      instance_types+: converted,
    }
  ),
  with_key_pair(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_pair" expected to be of type "string"';
    {
      key_pair: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  with_resource_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"resource_tags" expected to be of type "map"';
    {
      resource_tags: converted,
    }
  ),
  with_security_group_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
    {
      security_group_ids: converted,
    }
  ),
  with_security_group_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
    {
      security_group_ids+: converted,
    }
  ),
  with_sns_topic_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"sns_topic_arn" expected to be of type "string"';
    {
      sns_topic_arn: converted,
    }
  ),
  with_subnet_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"subnet_id" expected to be of type "string"';
    {
      subnet_id: converted,
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
  with_terminate_instance_on_failure(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"terminate_instance_on_failure" expected to be of type "bool"';
    {
      terminate_instance_on_failure: converted,
    }
  ),
  instance_metadata_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_http_put_response_hop_limit(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"http_put_response_hop_limit" expected to be of type "number"';
      {
        http_put_response_hop_limit: converted,
      }
    ),
    with_http_tokens(value):: (
      local converted = value;
      assert std.isString(converted) : '"http_tokens" expected to be of type "string"';
      {
        http_tokens: converted,
      }
    ),
  },
  logging:: {
    local block = self,
    new():: (
      {}
    ),
    s3_logs:: {
      local block = self,
      new(s3_bucket_name):: (
        {}
        + block.with_s3_bucket_name(s3_bucket_name)
      ),
      with_s3_bucket_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_bucket_name" expected to be of type "string"';
        {
          s3_bucket_name: converted,
        }
      ),
      with_s3_key_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_key_prefix" expected to be of type "string"';
        {
          s3_key_prefix: converted,
        }
      ),
    },
    with_s3_logs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_logs: value,
      }
    ),
    with_s3_logs_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_logs+: converted,
      }
    ),
  },
  placement:: {
    local block = self,
    new():: (
      {}
    ),
    with_availability_zone(value):: (
      local converted = value;
      assert std.isString(converted) : '"availability_zone" expected to be of type "string"';
      {
        availability_zone: converted,
      }
    ),
    with_host_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"host_id" expected to be of type "string"';
      {
        host_id: converted,
      }
    ),
    with_host_resource_group_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"host_resource_group_arn" expected to be of type "string"';
      {
        host_resource_group_arn: converted,
      }
    ),
    with_tenancy(value):: (
      local converted = value;
      assert std.isString(converted) : '"tenancy" expected to be of type "string"';
      {
        tenancy: converted,
      }
    ),
  },
  with_instance_metadata_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_metadata_options: value,
    }
  ),
  with_logging(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging: value,
    }
  ),
  with_placement(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      placement: value,
    }
  ),
  with_instance_metadata_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_metadata_options+: converted,
    }
  ),
  with_logging_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging+: converted,
    }
  ),
  with_placement_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      placement+: converted,
    }
  ),
}
