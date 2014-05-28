class PersonalChef
  attr_accessor :name, :hired

  def initialize(name = "")
    @name = name
    @hired = true
    @busy = false
  end

  def make_toast(doneness)
    if !@hired
      puts "You fired me, remember?!"
    elsif @hired && !@busy
      puts "Your toast will be cooked #{doneness}."
      @busy = true
    else
      puts "Hold on, I'm busy!"
    end
  end

  def serve_toast
    if @busy
      puts "Here comes the toast!"
      @busy = false
    end
  end

  def make_juice(juice_type)
    if !@hired
      puts "You fired me, remember?!"
    elsif @hired && !@busy
      puts "I'll grab you some #{juice_type} juice."
      @busy = true
    else
      puts "Hold on, I'm busy!"
    end
  end

  def serve_juice
    if @busy
      puts "Here's your juice!"
      @busy = false
    end
  end

  def make_eggs(quantity, style)
    if !@hired
      puts "You fired me, remember?!"
    elsif @hired && !@busy
      puts "Your #{quantity} eggs will be cooked #{style}."
      @busy = true
    else
      puts "Hold on, I'm busy!"
    end
  end

  def serve_eggs
    if @busy
      puts "Here are your eggs!"
      @busy = false
    end
  end

  def fired!
    puts "You're fired!"
    @hired = false
  end


end





gordon = PersonalChef.new
gordon.make_toast("light brown")
gordon.serve_toast
gordon.make_juice("orange")
gordon.serve_juice
#gordon.fired!
gordon.make_eggs(15, "scrambled")
gordon.serve_eggs

=begin

  New attributes-  :hired by default, true

  make a method called fired! which fires your current chef by switching
  their :hired attribute from true to false.

  when a chef's :hired attribute is false, make it so that he cannot make_toast,
  make_juice, make_eggs.

  :busy by default, false

  make a method called cooking? that checks to see if a chef is busy or nor. Make
  sure they have a :busy attribute that is set true any time a chef uses make_toast,
  make_juice, or make_eggs.

  make the following methods:
  serve_toast
  serve_juice
  serve_eggs

  make a method called are_you_hungry where the chef asks the
=end
