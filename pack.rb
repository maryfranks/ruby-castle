require_relative 'snack.rb'
class Pack

  attr_accessor :pack_size, :items

  PACK_SIZE = 5

  def initialize

    @pack_size = PACK_SIZE
    @items = []

  end

  def add_item(item)
    @items.push(item)
  end

  def remove_item(item)
    @items.delete(item)
  end

  def list_items
    @items.each do | item |
      item.describe_item
    end
  end

end
