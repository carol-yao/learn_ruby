# class Changer
#
#   def self.make_change(amount)
#     change = []
#     while amount != 0
#       if amount / 25 > 0
#         change << 25
#         amount -= 25
#       elsif amount / 10 > 0
#         change << 10
#         amount -= 10
#       elsif amount / 5 > 0
#         change << 5
#         amount -= 5
#       elsif amount / 1 > 0
#         change << 1
#         amount -= 1
#       end
#     end
#     change
#   end
#
# end

#-----------------
# Note this also doesn't work because of the class variable
# class Changer
#   COINS = [25, 10, 5, 1]
#
#   @@change= []
#
#   def self.divider(coin)
#     @@change << coin
#     @@amount -= coin
#   end
#
#   def self.make_change(amount)
#     @@amount = amount
#     while @@amount > 0
#
#       COINS.each do |coin|
#         if @@amount % coin == 0
#           divider(coin)
#           break
#         end
#       end
#     end
#     @@change
#   end
#
# end

# -------


class Changer

  def self.make_change(amount)
    coins = [25, 10, 5, 1]
    @@amount = amount
    @@change = []
    while @@amount > 0
      coins.each do |coin|
        if @@amount / coin > 0
          @@amount -= coin
          @@change << coin
          break
        end
      end
    end
    @@change
  end

end
