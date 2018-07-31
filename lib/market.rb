class Market
  attr_reader :name,
              :vendors


  def initialize(name)
    @name = name
    @vendors = []
    @vendor_names = vendor_names
  end

  def add_vendor(vendor)
    @vendors << vendor
  end

  def vendor_names
    @vendor_names = @vendors.map do |vendor|
     vendor.name
    end
  end

  # def vendors_that_sell(item)
  #   @vendors.select do |vendor|
  #     vendor.inventory.include? item
  #   end
  #   require "pry"; binding.pry
  # end



end
