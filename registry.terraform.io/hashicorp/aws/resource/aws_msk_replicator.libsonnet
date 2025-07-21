{
  local block = self,
  new(replicator_name, service_execution_role_arn):: (
    {}
    + block.with_replicator_name(replicator_name)
    + block.with_service_execution_role_arn(service_execution_role_arn)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_current_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"current_version" expected to be of type "string"';
    {
      current_version: converted,
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
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_replicator_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"replicator_name" expected to be of type "string"';
    {
      replicator_name: converted,
    }
  ),
  with_service_execution_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_execution_role_arn" expected to be of type "string"';
    {
      service_execution_role_arn: converted,
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
  kafka_cluster:: {
    local block = self,
    new():: (
      {}
    ),
    amazon_msk_cluster:: {
      local block = self,
      new(msk_cluster_arn):: (
        {}
        + block.with_msk_cluster_arn(msk_cluster_arn)
      ),
      with_msk_cluster_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"msk_cluster_arn" expected to be of type "string"';
        {
          msk_cluster_arn: converted,
        }
      ),
    },
    vpc_config:: {
      local block = self,
      new(subnet_ids):: (
        {}
        + block.with_subnet_ids(subnet_ids)
      ),
      with_security_groups_ids(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups_ids" expected to be of type "set"';
        {
          security_groups_ids: converted,
        }
      ),
      with_security_groups_ids_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups_ids" expected to be of type "set"';
        {
          security_groups_ids+: converted,
        }
      ),
      with_subnet_ids(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
        {
          subnet_ids: converted,
        }
      ),
      with_subnet_ids_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
        {
          subnet_ids+: converted,
        }
      ),
    },
    with_amazon_msk_cluster(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        amazon_msk_cluster: value,
      }
    ),
    with_vpc_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vpc_config: value,
      }
    ),
    with_amazon_msk_cluster_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        amazon_msk_cluster+: converted,
      }
    ),
    with_vpc_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vpc_config+: converted,
      }
    ),
  },
  replication_info_list:: {
    local block = self,
    new(source_kafka_cluster_arn, target_compression_type, target_kafka_cluster_arn):: (
      {}
      + block.with_source_kafka_cluster_arn(source_kafka_cluster_arn)
      + block.with_target_compression_type(target_compression_type)
      + block.with_target_kafka_cluster_arn(target_kafka_cluster_arn)
    ),
    with_source_kafka_cluster_alias(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_kafka_cluster_alias" expected to be of type "string"';
      {
        source_kafka_cluster_alias: converted,
      }
    ),
    with_source_kafka_cluster_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_kafka_cluster_arn" expected to be of type "string"';
      {
        source_kafka_cluster_arn: converted,
      }
    ),
    with_target_compression_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"target_compression_type" expected to be of type "string"';
      {
        target_compression_type: converted,
      }
    ),
    with_target_kafka_cluster_alias(value):: (
      local converted = value;
      assert std.isString(converted) : '"target_kafka_cluster_alias" expected to be of type "string"';
      {
        target_kafka_cluster_alias: converted,
      }
    ),
    with_target_kafka_cluster_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"target_kafka_cluster_arn" expected to be of type "string"';
      {
        target_kafka_cluster_arn: converted,
      }
    ),
    consumer_group_replication:: {
      local block = self,
      new(consumer_groups_to_replicate):: (
        {}
        + block.with_consumer_groups_to_replicate(consumer_groups_to_replicate)
      ),
      with_consumer_groups_to_exclude(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"consumer_groups_to_exclude" expected to be of type "set"';
        {
          consumer_groups_to_exclude: converted,
        }
      ),
      with_consumer_groups_to_exclude_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"consumer_groups_to_exclude" expected to be of type "set"';
        {
          consumer_groups_to_exclude+: converted,
        }
      ),
      with_consumer_groups_to_replicate(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"consumer_groups_to_replicate" expected to be of type "set"';
        {
          consumer_groups_to_replicate: converted,
        }
      ),
      with_consumer_groups_to_replicate_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"consumer_groups_to_replicate" expected to be of type "set"';
        {
          consumer_groups_to_replicate+: converted,
        }
      ),
      with_detect_and_copy_new_consumer_groups(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"detect_and_copy_new_consumer_groups" expected to be of type "bool"';
        {
          detect_and_copy_new_consumer_groups: converted,
        }
      ),
      with_synchronise_consumer_group_offsets(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"synchronise_consumer_group_offsets" expected to be of type "bool"';
        {
          synchronise_consumer_group_offsets: converted,
        }
      ),
    },
    topic_replication:: {
      local block = self,
      new(topics_to_replicate):: (
        {}
        + block.with_topics_to_replicate(topics_to_replicate)
      ),
      with_copy_access_control_lists_for_topics(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"copy_access_control_lists_for_topics" expected to be of type "bool"';
        {
          copy_access_control_lists_for_topics: converted,
        }
      ),
      with_copy_topic_configurations(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"copy_topic_configurations" expected to be of type "bool"';
        {
          copy_topic_configurations: converted,
        }
      ),
      with_detect_and_copy_new_topics(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"detect_and_copy_new_topics" expected to be of type "bool"';
        {
          detect_and_copy_new_topics: converted,
        }
      ),
      with_topics_to_exclude(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"topics_to_exclude" expected to be of type "set"';
        {
          topics_to_exclude: converted,
        }
      ),
      with_topics_to_exclude_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"topics_to_exclude" expected to be of type "set"';
        {
          topics_to_exclude+: converted,
        }
      ),
      with_topics_to_replicate(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"topics_to_replicate" expected to be of type "set"';
        {
          topics_to_replicate: converted,
        }
      ),
      with_topics_to_replicate_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"topics_to_replicate" expected to be of type "set"';
        {
          topics_to_replicate+: converted,
        }
      ),
      starting_position:: {
        local block = self,
        new():: (
          {}
        ),
        with_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
      },
      topic_name_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        with_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
      },
      with_starting_position(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          starting_position: value,
        }
      ),
      with_topic_name_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          topic_name_configuration: value,
        }
      ),
      with_starting_position_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          starting_position+: converted,
        }
      ),
      with_topic_name_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          topic_name_configuration+: converted,
        }
      ),
    },
    with_consumer_group_replication(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        consumer_group_replication: value,
      }
    ),
    with_topic_replication(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        topic_replication: value,
      }
    ),
    with_consumer_group_replication_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        consumer_group_replication+: converted,
      }
    ),
    with_topic_replication_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        topic_replication+: converted,
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
  with_kafka_cluster(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kafka_cluster: value,
    }
  ),
  with_replication_info_list(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      replication_info_list: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_kafka_cluster_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kafka_cluster+: converted,
    }
  ),
  with_replication_info_list_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      replication_info_list+: converted,
    }
  ),
}
