class Changer

  def self.make_change(amount)
    coins = [1, 5, 10, 25]
    change = []
    while amount != 0
      if amount / 25 > 0
        change << 25
        amount -= 25
      elsif amount / 10 > 0
        change << 10
        amount -= 10
      elsif amount / 5 > 0
        change << 5
        amount -= 5
      elsif amount / 1 > 0
        change << 1
        amount -= 1
      end
    end
    change
  end
end
