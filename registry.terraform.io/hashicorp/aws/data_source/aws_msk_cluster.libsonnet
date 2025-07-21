{
  local block = self,
  new(cluster_name):: (
    {}
    + block.with_cluster_name(cluster_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_bootstrap_brokers(value):: (
    local converted = value;
    assert std.isString(converted) : '"bootstrap_brokers" expected to be of type "string"';
    {
      bootstrap_brokers: converted,
    }
  ),
  with_bootstrap_brokers_public_sasl_iam(value):: (
    local converted = value;
    assert std.isString(converted) : '"bootstrap_brokers_public_sasl_iam" expected to be of type "string"';
    {
      bootstrap_brokers_public_sasl_iam: converted,
    }
  ),
  with_bootstrap_brokers_public_sasl_scram(value):: (
    local converted = value;
    assert std.isString(converted) : '"bootstrap_brokers_public_sasl_scram" expected to be of type "string"';
    {
      bootstrap_brokers_public_sasl_scram: converted,
    }
  ),
  with_bootstrap_brokers_public_tls(value):: (
    local converted = value;
    assert std.isString(converted) : '"bootstrap_brokers_public_tls" expected to be of type "string"';
    {
      bootstrap_brokers_public_tls: converted,
    }
  ),
  with_bootstrap_brokers_sasl_iam(value):: (
    local converted = value;
    assert std.isString(converted) : '"bootstrap_brokers_sasl_iam" expected to be of type "string"';
    {
      bootstrap_brokers_sasl_iam: converted,
    }
  ),
  with_bootstrap_brokers_sasl_scram(value):: (
    local converted = value;
    assert std.isString(converted) : '"bootstrap_brokers_sasl_scram" expected to be of type "string"';
    {
      bootstrap_brokers_sasl_scram: converted,
    }
  ),
  with_bootstrap_brokers_tls(value):: (
    local converted = value;
    assert std.isString(converted) : '"bootstrap_brokers_tls" expected to be of type "string"';
    {
      bootstrap_brokers_tls: converted,
    }
  ),
  with_broker_node_group_info(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"broker_node_group_info" expected to be of type "list"';
    {
      broker_node_group_info: converted,
    }
  ),
  with_broker_node_group_info_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"broker_node_group_info" expected to be of type "list"';
    {
      broker_node_group_info+: converted,
    }
  ),
  with_cluster_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_name" expected to be of type "string"';
    {
      cluster_name: converted,
    }
  ),
  with_cluster_uuid(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_uuid" expected to be of type "string"';
    {
      cluster_uuid: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_kafka_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"kafka_version" expected to be of type "string"';
    {
      kafka_version: converted,
    }
  ),
  with_number_of_broker_nodes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"number_of_broker_nodes" expected to be of type "number"';
    {
      number_of_broker_nodes: converted,
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
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_zookeeper_connect_string(value):: (
    local converted = value;
    assert std.isString(converted) : '"zookeeper_connect_string" expected to be of type "string"';
    {
      zookeeper_connect_string: converted,
    }
  ),
  with_zookeeper_connect_string_tls(value):: (
    local converted = value;
    assert std.isString(converted) : '"zookeeper_connect_string_tls" expected to be of type "string"';
    {
      zookeeper_connect_string_tls: converted,
    }
  ),
}
