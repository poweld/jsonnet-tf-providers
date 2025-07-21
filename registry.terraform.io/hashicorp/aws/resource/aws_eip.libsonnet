{
  local block = self,
  new():: (
    {}
  ),
  with_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"address" expected to be of type "string"';
    {
      address: converted,
    }
  ),
  with_allocation_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"allocation_id" expected to be of type "string"';
    {
      allocation_id: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_associate_with_private_ip(value):: (
    local converted = value;
    assert std.isString(converted) : '"associate_with_private_ip" expected to be of type "string"';
    {
      associate_with_private_ip: converted,
    }
  ),
  with_association_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"association_id" expected to be of type "string"';
    {
      association_id: converted,
    }
  ),
  with_carrier_ip(value):: (
    local converted = value;
    assert std.isString(converted) : '"carrier_ip" expected to be of type "string"';
    {
      carrier_ip: converted,
    }
  ),
  with_customer_owned_ip(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_owned_ip" expected to be of type "string"';
    {
      customer_owned_ip: converted,
    }
  ),
  with_customer_owned_ipv4_pool(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_owned_ipv4_pool" expected to be of type "string"';
    {
      customer_owned_ipv4_pool: converted,
    }
  ),
  with_domain(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain" expected to be of type "string"';
    {
      domain: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_instance(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance" expected to be of type "string"';
    {
      instance: converted,
    }
  ),
  with_ipam_pool_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"ipam_pool_id" expected to be of type "string"';
    {
      ipam_pool_id: converted,
    }
  ),
  with_network_border_group(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_border_group" expected to be of type "string"';
    {
      network_border_group: converted,
    }
  ),
  with_network_interface(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_interface" expected to be of type "string"';
    {
      network_interface: converted,
    }
  ),
  with_private_dns(value):: (
    local converted = value;
    assert std.isString(converted) : '"private_dns" expected to be of type "string"';
    {
      private_dns: converted,
    }
  ),
  with_private_ip(value):: (
    local converted = value;
    assert std.isString(converted) : '"private_ip" expected to be of type "string"';
    {
      private_ip: converted,
    }
  ),
  with_ptr_record(value):: (
    local converted = value;
    assert std.isString(converted) : '"ptr_record" expected to be of type "string"';
    {
      ptr_record: converted,
    }
  ),
  with_public_dns(value):: (
    local converted = value;
    assert std.isString(converted) : '"public_dns" expected to be of type "string"';
    {
      public_dns: converted,
    }
  ),
  with_public_ip(value):: (
    local converted = value;
    assert std.isString(converted) : '"public_ip" expected to be of type "string"';
    {
      public_ip: converted,
    }
  ),
  with_public_ipv4_pool(value):: (
    local converted = value;
    assert std.isString(converted) : '"public_ipv4_pool" expected to be of type "string"';
    {
      public_ipv4_pool: converted,
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
  with_tags_all(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    with_read(value):: (
      local converted = value;
      assert std.isString(converted) : '"read" expected to be of type "string"';
      {
        read: converted,
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
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
