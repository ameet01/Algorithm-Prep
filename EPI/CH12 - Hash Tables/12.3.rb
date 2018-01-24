
#Implement an ISBN Cache (International Standard Book Number)


class LRUCache
  def initialize(capacity)
    @capacity = capacity
    @store = Hash.new
  end

  def lookup(isbn)
    return -1 if !@store.key?(isbn)
    price = @store.delete(isbn)
    @store[isbn] = price
    price
  end

  def insert(isbn, price)
    if hash.key?(isbn)
      hash.delete(isbn)
      hash[isbn] = price
    else
      hash[isbn] = price
      hash.shift if hash.length > @capacity
    end
    price
  end

  def lru
    @store[@store.keys.first]
  end

  def erase(isbn)
    @store.delete(isbn) if @store[isbn]
  end
end


