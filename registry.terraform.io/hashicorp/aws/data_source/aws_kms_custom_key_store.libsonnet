{
  local block = self,
  new():: (
    {}
  ),
  with_cloud_hsm_cluster_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"cloud_hsm_cluster_id" expected to be of type "string"';
    {
      cloud_hsm_cluster_id: converted,
    }
  ),
  with_connection_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"connection_state" expected to be of type "string"';
    {
      connection_state: converted,
    }
  ),
  with_creation_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"creation_date" expected to be of type "string"';
    {
      creation_date: converted,
    }
  ),
  with_custom_key_store_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_key_store_id" expected to be of type "string"';
    {
      custom_key_store_id: converted,
    }
  ),
  with_custom_key_store_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_key_store_name" expected to be of type "string"';
    {
      custom_key_store_name: converted,
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
  with_trust_anchor_certificate(value):: (
    local converted = value;
    assert std.isString(converted) : '"trust_anchor_certificate" expected to be of type "string"';
    {
      trust_anchor_certificate: converted,
    }
  ),
}
