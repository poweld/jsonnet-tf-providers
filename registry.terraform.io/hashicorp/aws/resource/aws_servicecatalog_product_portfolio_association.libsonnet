{
  local block = self,
  new(portfolio_id, product_id):: (
    {}
    + block.with_portfolio_id(portfolio_id)
    + block.with_product_id(product_id)
  ),
  with_accept_language(value):: (
    local converted = value;
    assert std.isString(converted) : '"accept_language" expected to be of type "string"';
    {
      accept_language: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_portfolio_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"portfolio_id" expected to be of type "string"';
    {
      portfolio_id: converted,
    }
  ),
  with_product_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"product_id" expected to be of type "string"';
    {
      product_id: converted,
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
  with_source_portfolio_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_portfolio_id" expected to be of type "string"';
    {
      source_portfolio_id: converted,
    }
  ),
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
    with_read(value):: (
      local converted = value;
      assert std.isString(converted) : '"read" expected to be of type "string"';
      {
        read: converted,
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
