class Snack

  attr_accessor :name, :strength, :description

  def initialize

    @name = "snack"
    @strength = 1
    @description = "A small packet of nuts."

  end

  def describe_item
    puts "You have 1 #{self.name}: #{self.description}."
  end

end
