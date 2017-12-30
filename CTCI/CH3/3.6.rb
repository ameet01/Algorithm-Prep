#Animal Shelter


class AnimalQueue
  def initialize
    @dog_queue = Queue.new
    @cat_queue = Queue.new
    @order = 0
  end

  def enqueue(animal)
    animal.setOrder(@order)
    @order = @order + 1

    if animal.is_a?(Dog)
      @dog_queue.push(animal)
    else
      @cat_queue.push(animal)
    end
  end

  def dequeueAny
    if @dog_queue.empty
      return dequeueCat
    else
      return dequeueDog
    end

    if @dog_queue.peek.isOlderThan(@cat_queue.peek)
      return dequeueDog
    else
      return dequeueCat
    end
  end

  def dequeueDog
    @dog_queue.pop
  end

  def dequeueCat
    @cat_queue.pop
  end

end


class Queue
  def initialize
    @store = []
  end
  
  def push(el)
    @store.push(el)
  end
  
  def pop
    value = @store.first
    @store.shift
    return value
  end

  def peek
    @store[0]
  end
  
  def empty
    @store.empty?
  end
  
  def length
    @store.length
  end
end

class Animal
  
  def initialize(name)
    @name = name
    @order = 0
  end

  def setOrder(order)
    @order = order
  end

  def getOrder
    return @order
  end

  def isOlderThan(animal)
    return @order < animal.getOrder
  end
end

class Dog < Animal

end

class Cat < Animal

end






queue = AnimalQueue.new

queue.enqueue(Dog.new('jeff'))
queue.enqueue(Dog.new('bo'))
queue.enqueue(Dog.new('henry'))

queue.enqueue(Cat.new('jay'))
queue.enqueue(Cat.new('tyler'))
queue.enqueue(Cat.new('anna'))

queue.dequeueCat
queue.dequeueCat
queue.dequeueCat
queue.dequeueCat
queue.enqueue(Cat.new('mike'))

p queue