class PersonalChef
  attr_accessor :name

  def initialize(name = "")
    @name = name
  end

  def make_toast(doneness)
    puts "Your toast will be #{doneness}"
  end

  def make_juice(juice_type)
    puts "Your juice choice is #{juice_type}"
  end

  def make_eggs(quantity, style)
    puts "Your #{quantity} eggs are cooked #{style}"
  end

end





Gordon = PersonalChef.new
Gordon.make_toast("black")
Gordon.make_juice("apple")
Gordon.make_eggs(2, "overeasy")
