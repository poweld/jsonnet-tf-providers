{
  local block = self,
  new(allocated_storage, bucket, db_instance_type, name, organization, password, username, vpc_security_group_ids, vpc_subnet_ids):: (
    {}
    + block.with_allocated_storage(allocated_storage)
    + block.with_bucket(bucket)
    + block.with_db_instance_type(db_instance_type)
    + block.with_name(name)
    + block.with_organization(organization)
    + block.with_password(password)
    + block.with_username(username)
    + block.with_vpc_security_group_ids(vpc_security_group_ids)
    + block.with_vpc_subnet_ids(vpc_subnet_ids)
  ),
  '#with_allocated_storage':: 'The amount of storage to allocate for your DB storage type in GiB (gibibytes).',
  with_allocated_storage(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"allocated_storage" expected to be of type "number"';
    {
      allocated_storage: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  '#with_availability_zone':: 'The Availability Zone in which the DB instance resides.',
  with_availability_zone(value):: (
    local converted = value;
    assert std.isString(converted) : '"availability_zone" expected to be of type "string"';
    {
      availability_zone: converted,
    }
  ),
  '#with_bucket':: 'The name of the initial InfluxDB bucket. All InfluxDB data is stored in a bucket.  \t\t\t\t\tA bucket combines the concept of a database and a retention period (the duration of time  \t\t\t\t\tthat each data point persists). A bucket belongs to an organization.',
  with_bucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket" expected to be of type "string"';
    {
      bucket: converted,
    }
  ),
  '#with_db_instance_type':: 'The Timestream for InfluxDB DB instance type to run InfluxDB on.',
  with_db_instance_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_instance_type" expected to be of type "string"';
    {
      db_instance_type: converted,
    }
  ),
  '#with_db_parameter_group_identifier':: 'The id of the DB parameter group assigned to your DB instance.',
  with_db_parameter_group_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_parameter_group_identifier" expected to be of type "string"';
    {
      db_parameter_group_identifier: converted,
    }
  ),
  '#with_db_storage_type':: 'The Timestream for InfluxDB DB storage type to read and write InfluxDB data.  \t\t\t\t\tYou can choose between 3 different types of provisioned Influx IOPS included storage according  \t\t\t\t\tto your workloads requirements: Influx IO Included 3000 IOPS, Influx IO Included 12000 IOPS,  \t\t\t\t\tInflux IO Included 16000 IOPS.',
  with_db_storage_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_storage_type" expected to be of type "string"';
    {
      db_storage_type: converted,
    }
  ),
  '#with_deployment_type':: 'Specifies whether the DB instance will be deployed as a standalone instance or  \t\t\t\t\twith a Multi-AZ standby for high availability.',
  with_deployment_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"deployment_type" expected to be of type "string"';
    {
      deployment_type: converted,
    }
  ),
  '#with_endpoint':: 'The endpoint used to connect to InfluxDB. The default InfluxDB port is 8086.',
  with_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint" expected to be of type "string"';
    {
      endpoint: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_influx_auth_parameters_secret_arn':: 'The Amazon Resource Name (ARN) of the AWS Secrets Manager secret containing the  \t\t\t\t\tinitial InfluxDB authorization parameters. The secret value is a JSON formatted  \t\t\t\t\tkey-value pair holding InfluxDB authorization values: organization, bucket,  \t\t\t\t\tusername, and password.',
  with_influx_auth_parameters_secret_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"influx_auth_parameters_secret_arn" expected to be of type "string"';
    {
      influx_auth_parameters_secret_arn: converted,
    }
  ),
  '#with_name':: 'The name that uniquely identifies the DB instance when interacting with the  \t\t\t\t\tAmazon Timestream for InfluxDB API and CLI commands. This name will also be a  \t\t\t\t\tprefix included in the endpoint. DB instance names must be unique per customer  \t\t\t\t\tand per region.',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  '#with_network_type':: 'Specifies whether the networkType of the Timestream for InfluxDB instance is  \t\t\t\t\tIPV4, which can communicate over IPv4 protocol only, or DUAL, which can communicate  \t\t\t\t\tover both IPv4 and IPv6 protocols.',
  with_network_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_type" expected to be of type "string"';
    {
      network_type: converted,
    }
  ),
  '#with_organization':: 'The name of the initial organization for the initial admin user in InfluxDB. An  \t\t\t\t\tInfluxDB organization is a workspace for a group of users.',
  with_organization(value):: (
    local converted = value;
    assert std.isString(converted) : '"organization" expected to be of type "string"';
    {
      organization: converted,
    }
  ),
  '#with_password':: 'The password of the initial admin user created in InfluxDB. This password will  \t\t\t\t\tallow you to access the InfluxDB UI to perform various administrative tasks and  \t\t\t\t\talso use the InfluxDB CLI to create an operator token. These attributes will be  \t\t\t\t\tstored in a Secret created in AWS SecretManager in your account.',
  with_password(value):: (
    local converted = value;
    assert std.isString(converted) : '"password" expected to be of type "string"';
    {
      password: converted,
    }
  ),
  '#with_port':: 'The port number on which InfluxDB accepts connections.',
  with_port(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"port" expected to be of type "number"';
    {
      port: converted,
    }
  ),
  '#with_publicly_accessible':: 'Configures the DB instance with a public IP to facilitate access.',
  with_publicly_accessible(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"publicly_accessible" expected to be of type "bool"';
    {
      publicly_accessible: converted,
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
  '#with_secondary_availability_zone':: 'The Availability Zone in which the standby instance is located when deploying  \t\t\t\t\twith a MultiAZ standby instance.',
  with_secondary_availability_zone(value):: (
    local converted = value;
    assert std.isString(converted) : '"secondary_availability_zone" expected to be of type "string"';
    {
      secondary_availability_zone: converted,
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
  '#with_username':: "The username of the initial admin user created in InfluxDB.  \t\t\t\t\tMust start with a letter and can't end with a hyphen or contain two  \t\t\t\t\tconsecutive hyphens. For example, my-user1. This username will allow  \t\t\t\t\tyou to access the InfluxDB UI to perform various administrative tasks  \t\t\t\t\tand also use the InfluxDB CLI to create an operator token. These  \t\t\t\t\tattributes will be stored in a Secret created in Amazon Secrets  \t\t\t\t\tManager in your account",
  with_username(value):: (
    local converted = value;
    assert std.isString(converted) : '"username" expected to be of type "string"';
    {
      username: converted,
    }
  ),
  '#with_vpc_security_group_ids':: 'A list of VPC security group IDs to associate with the DB instance.',
  with_vpc_security_group_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_security_group_ids" expected to be of type "set"';
    {
      vpc_security_group_ids: converted,
    }
  ),
  '#with_vpc_security_group_ids_mixin':: 'A list of VPC security group IDs to associate with the DB instance.',
  with_vpc_security_group_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_security_group_ids" expected to be of type "set"';
    {
      vpc_security_group_ids+: converted,
    }
  ),
  '#with_vpc_subnet_ids':: 'A list of VPC subnet IDs to associate with the DB instance. Provide at least  \t\t\t\t\ttwo VPC subnet IDs in different availability zones when deploying with a Multi-AZ standby.',
  with_vpc_subnet_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_subnet_ids" expected to be of type "set"';
    {
      vpc_subnet_ids: converted,
    }
  ),
  '#with_vpc_subnet_ids_mixin':: 'A list of VPC subnet IDs to associate with the DB instance. Provide at least  \t\t\t\t\ttwo VPC subnet IDs in different availability zones when deploying with a Multi-AZ standby.',
  with_vpc_subnet_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_subnet_ids" expected to be of type "set"';
    {
      vpc_subnet_ids+: converted,
    }
  ),
  log_delivery_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    s3_configuration:: {
      local block = self,
      new(bucket_name, enabled):: (
        {}
        + block.with_bucket_name(bucket_name)
        + block.with_enabled(enabled)
      ),
      '#with_bucket_name':: 'The name of the S3 bucket to deliver logs to.',
      with_bucket_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
        {
          bucket_name: converted,
        }
      ),
      '#with_enabled':: 'Indicates whether log delivery to the S3 bucket is enabled.',
      with_enabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
    },
    with_s3_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration: value,
      }
    ),
    with_s3_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration+: converted,
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
    '#with_delete':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
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
  with_log_delivery_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_delivery_configuration: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_log_delivery_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_delivery_configuration+: converted,
    }
  ),
}
