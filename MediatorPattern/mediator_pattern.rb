class Seller
  attr_accessor :balance

  def initialize balance: 0
    @balance = balance
  end

  def publish agency, house
    agency.register house
  end

end

class House
  attr_accessor :owner
  attr_reader :price

  def initialize rooms: 0, price: 0, owner: nil
    @rooms = rooms
    @price = price
    @owner = owner
  end
end

class Buyer
  attr_accessor :budget

  def initialize budget: 0
    @budget = budget
  end

  def follow_agency agency
    @agency = agency
  end

  def buy house
    @agency.mediate_purchase house, self
  end
end

class Agency
  def initialize
    @houses = []
  end

  def register house
    @houses << house
  end

  def mediate_purchase house, buyer
    if conditions_are_met? house, buyer
      handle_money house, buyer
      house.owner = buyer
    end
  end
  
  private

  def conditions_are_met? house, buyer
    @houses.include?(house) && buyer.budget >= house.price
  end

  def pay seller, amount
    seller.balance += amount
  end

  def charge buyer, amount
    buyer.budget -= amount
  end

  def handle_money house, buyer
    pay    house.owner, house.price
    charge buyer,       house.price
  end
end


# test
buyer = Buyer.new budget: 500
seller = Seller.new balance: 200
house = House.new rooms: 3, price: 400, owner: seller
agency = Agency.new

buyer.follow_agency agency
seller.publish agency, house
buyer.buy house

puts house.owner.eql? buyer
puts seller.balance == 600