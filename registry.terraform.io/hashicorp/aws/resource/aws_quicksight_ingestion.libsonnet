{
  local block = self,
  new(data_set_id, ingestion_id, ingestion_type):: (
    {}
    + block.with_data_set_id(data_set_id)
    + block.with_ingestion_id(ingestion_id)
    + block.with_ingestion_type(ingestion_type)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_aws_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_account_id" expected to be of type "string"';
    {
      aws_account_id: converted,
    }
  ),
  with_data_set_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_set_id" expected to be of type "string"';
    {
      data_set_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_ingestion_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"ingestion_id" expected to be of type "string"';
    {
      ingestion_id: converted,
    }
  ),
  with_ingestion_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"ingestion_status" expected to be of type "string"';
    {
      ingestion_status: converted,
    }
  ),
  with_ingestion_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"ingestion_type" expected to be of type "string"';
    {
      ingestion_type: converted,
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
