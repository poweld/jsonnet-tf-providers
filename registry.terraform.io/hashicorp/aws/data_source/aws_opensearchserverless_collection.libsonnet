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
  '#with_collection_endpoint':: 'Collection-specific endpoint used to submit index, search, and data upload requests to an OpenSearch Serverless collection.',
  with_collection_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"collection_endpoint" expected to be of type "string"';
    {
      collection_endpoint: converted,
    }
  ),
  '#with_created_date':: 'Date the Collection was created.',
  with_created_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_date" expected to be of type "string"';
    {
      created_date: converted,
    }
  ),
  '#with_dashboard_endpoint':: 'Collection-specific endpoint used to access OpenSearch Dashboards.',
  with_dashboard_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"dashboard_endpoint" expected to be of type "string"';
    {
      dashboard_endpoint: converted,
    }
  ),
  '#with_description':: 'Description of the collection.',
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  '#with_failure_code':: 'A failure code associated with the collection.',
  with_failure_code(value):: (
    local converted = value;
    assert std.isString(converted) : '"failure_code" expected to be of type "string"';
    {
      failure_code: converted,
    }
  ),
  '#with_failure_message':: 'A failure reason associated with the collection.',
  with_failure_message(value):: (
    local converted = value;
    assert std.isString(converted) : '"failure_message" expected to be of type "string"';
    {
      failure_message: converted,
    }
  ),
  '#with_id':: 'ID of the collection.',
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_kms_key_arn':: 'The ARN of the Amazon Web Services KMS key used to encrypt the collection.',
  with_kms_key_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
    {
      kms_key_arn: converted,
    }
  ),
  '#with_last_modified_date':: 'Date the Collection was last modified.',
  with_last_modified_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_modified_date" expected to be of type "string"';
    {
      last_modified_date: converted,
    }
  ),
  '#with_name':: 'Name of the collection.',
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
  '#with_standby_replicas':: 'Indicates whether standby replicas should be used for a collection.',
  with_standby_replicas(value):: (
    local converted = value;
    assert std.isString(converted) : '"standby_replicas" expected to be of type "string"';
    {
      standby_replicas: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  '#with_type':: 'Type of collection.',
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
}
