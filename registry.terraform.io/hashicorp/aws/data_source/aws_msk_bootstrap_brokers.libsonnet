{
  local block = self,
  new(cluster_arn):: (
    {}
    + block.with_cluster_arn(cluster_arn)
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
  with_bootstrap_brokers_vpc_connectivity_sasl_iam(value):: (
    local converted = value;
    assert std.isString(converted) : '"bootstrap_brokers_vpc_connectivity_sasl_iam" expected to be of type "string"';
    {
      bootstrap_brokers_vpc_connectivity_sasl_iam: converted,
    }
  ),
  with_bootstrap_brokers_vpc_connectivity_sasl_scram(value):: (
    local converted = value;
    assert std.isString(converted) : '"bootstrap_brokers_vpc_connectivity_sasl_scram" expected to be of type "string"';
    {
      bootstrap_brokers_vpc_connectivity_sasl_scram: converted,
    }
  ),
  with_bootstrap_brokers_vpc_connectivity_tls(value):: (
    local converted = value;
    assert std.isString(converted) : '"bootstrap_brokers_vpc_connectivity_tls" expected to be of type "string"';
    {
      bootstrap_brokers_vpc_connectivity_tls: converted,
    }
  ),
  with_cluster_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_arn" expected to be of type "string"';
    {
      cluster_arn: converted,
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
}
