module Enumerable
  # Your code goes here
  def my_all?
    for item in self
      return false if !yield(item)
    end
    true
  end

  def my_any?
    for item in self
      return true if yield(item)
    end
    false
  end

  def my_count
    return self.size if !block_given?
    counter = 0
    for item in self
      if yield(item)
        counter += 1
      end
    end
    counter
  end

  def my_each_with_index
    index = 0
    for item in self
      yield(item, index)
      index += 1
    end
  end

  def my_inject(initial_value)
    acumulator = initial_value
    for item in self
      if !acumulator 
        acumulator = item
        break
      else
        acumulator = yield(acumulator, item)
      end
    end
    acumulator
  end

  def my_map
    retorno = []
    for item in self
      retorno << yield(item)
    end
    retorno
  end

  def my_none?
    for item in self
      return false if yield(item)
    end
    true
  end

  def my_select
    retorno = []
    for item in self
      if yield(item)
        retorno << item
      end
    end
    retorno
  end
end

class Array
  # Define my_each here
  def my_each
    for item in self
      yield(item)
    end
  end
end