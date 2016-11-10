require 'test_helper'

class ShoppeProductTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert ShoppeProduct.new.valid?
  end
end
