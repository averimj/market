require 'minitest/autorun'
require 'minitest/pride'
require './lib/vendor'
require './lib/market'

class MarketTest < Minitest::Test
  def test_it_exist
    market = Market.new("South Pearl Street Farmers Market")

    assert_instance_of Market, market
  end

  def test_it_has_name
    market = Market.new("South Pearl Street Farmers Market")

    assert_equal "South Pearl Street Farmers Market", market.name
  end

  def test_vendors_starts_off_empty_array
    market = Market.new("South Pearl Street Farmers Market")

    assert_equal [], market.vendors
  end

  def test_it_can_add_vendors
    market = Market.new("South Pearl Street Farmers Market")
    vendor_1 = Vendor.new("Rocky Mountain Fresh")
    vendor_1.stock("Peaches", 35)
    vendor_1.stock("Tomatoes", 7)

    vendor_2 = Vendor.new("Ba-Nom-a-Nom")
    vendor_2.stock("Banana Nice Cream", 50)
    vendor_2.stock("Peach-Raspberry Nice Cream", 25)

    vendor_3 = Vendor.new("Palisade Peach Shack")
    vendor_3.stock("Peaches", 65)

    market.add_vendor(vendor_1)
    market.add_vendor(vendor_2)
    market.add_vendor(vendor_3)

    expected = [vendor_1, vendor_2, vendor_3]
    assert_equal expected, market.vendors
  end

  def test_it_gives_vendors_name
    market = Market.new("South Pearl Street Farmers Market")
    vendor_1 = Vendor.new("Rocky Mountain Fresh")
    vendor_1.stock("Peaches", 35)
    vendor_1.stock("Tomatoes", 7)

    vendor_2 = Vendor.new("Ba-Nom-a-Nom")
    vendor_2.stock("Banana Nice Cream", 50)
    vendor_2.stock("Peach-Raspberry Nice Cream", 25)

    vendor_3 = Vendor.new("Palisade Peach Shack")
    vendor_3.stock("Peaches", 65)

    market.add_vendor(vendor_1)
    market.add_vendor(vendor_2)
    market.add_vendor(vendor_3)

    expected = ["Rocky Mountain Fresh", "Ba-Nom-a-Nom", "Palisade Peach Shack"]
    assert_equal expected, market.vendor_names
  end

  # def test_it_tells_which_vendor_sells_items
  #   market = Market.new("South Pearl Street Farmers Market")
  #   vendor_1 = Vendor.new("Rocky Mountain Fresh")
  #   vendor_1.stock("Peaches", 35)
  #   vendor_1.stock("Tomatoes", 7)
  #
  #   vendor_2 = Vendor.new("Ba-Nom-a-Nom")
  #   vendor_2.stock("Banana Nice Cream", 50)
  #   vendor_2.stock("Peach-Raspberry Nice Cream", 25)
  #
  #   vendor_3 = Vendor.new("Palisade Peach Shack")
  #   vendor_3.stock("Peaches", 65)
  #
  #   market.add_vendor(vendor_1)
  #   market.add_vendor(vendor_2)
  #   market.add_vendor(vendor_3)
  #
  #   expected = [ vendor_1, vendor_3]
  #   assert_equal expected, market.vendors_that_sell("Peaches")
  # end


end
