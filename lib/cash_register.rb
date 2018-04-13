#to call an instance method inside another instance method,
#we use the self keyword to refer to the instance on which we are operating

#The apply_discount requires some knowledge about working with an Integer versus a Float in Ruby.
#Note that 100.class returns Integer while 100.0.class returns Float.
#Ruby provides methods for changing an object of type Integer to a Float and vice versa.

#The void_last_transaction method will remove the last transaction from the total.
#You'll need to make an additional attribute accessor and keep track of that last transaction amount somehow.
#In what method of the class are you working with an individual item?
#so make attr_accessor @last_transaction and put it in instance method
#maybe do last_transaction = transaction with each initilalize, replacing previous value

require 'pry'
class CashRegister
  attr_accessor :cash_register, :cash_register_with_discount, :title, :price, :discount, :total, :items

  #@@total = 0

  def initialize(discount = 0)
    @cash_register = cash_register
    #cash_register = self.new
    @discount = discount
    #cash_register = self
    @total = total
    @cash_register_with_discount = cash_register_with_discount
    @items = items
    @items = []
    @total = 0
    cash_register_with_discount = 0
    if discount > 0
      @cash_register_with_discount = 20
    end
    @total
    #binding.pry
  end

  def self.total
    self.total
  end

  def add_item(title, price, number = 1)
    cost = price * number
    @title = title
    @price = price
    @total += cost
    new_array = []
    new_array << title
    new_array = new_array * number
    #need to multiply title by the number of items they bought-but can't multiply non integer
    @items << new_array
    @total
  end

  def apply_discount
    if @cash_register_with_discount == 20
      @total = total.to_f
      @total = total * 0.8
    #binding.pry
    #if cash_register_with_discount == 20
      #@total = total #- (total * 0.2) #- total(.2) #* 0.8
    #end
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def self items
    #stuff = @items
    #stuff.uniq
    stuff = self.items
    #stuff.flat_map {|i| i }
    #binding.pry
    stuff.flatten!
    stuff
  #  self.items.flatten!
  end

  def void_last_transaction

  end

end
