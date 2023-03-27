class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(value)
    if @head
      find_tail.next_node = Node.new(value)
    else
      @head = Node.new(value)
    end
  end


  def find_tail
    node = @head
    return node if !node.next_node
    return node if !node.next_node while (node = node.next_node)
  end

  def count
    node = @head
    return 0 if node.nil?
    count = 1
    while node.next_node != nil
      count += 1
      node = node.next_node
    end
    count
  end

  def to_string
    arr = []
    node = @head
    while node != nil
      arr << node.data
      node = node.next_node
    end
    arr.join(' ')
  end

  def prepend(data)
    old_head = @head
    @head = Node.new(data)
    @head.next_node = old_head
  end

  def insert(pos, data)
    if self.count <= pos
      self.append(data)
    elsif -(self.count) >= pos
      self.prepend(data)
    else
      node = @head
      last_node = nil
      (0...pos).each do
        last_node = node
        node = node.next_node
      end
      last_node.next_node = Node.new(data)
      last_node.next_node.next_node = node
    end
  end

  def to_array
    a = []
    node = @head
    while node != nil
      a << node.data
      node = node.next_node
    end
    a
  end

  def find(pos, qty)
    a = self.to_array
    b = []
    return "bad position, try again" if a[pos].nil?
    return "bad quantity, try again" if qty > self.count || qty <  0
    (pos...(pos+qty)).each do |i|
      b << a[i]
    end
    b.join(' ')
  end

  def includes?(data)
    if self.to_string.include?(data)
      true
    else
      false
    end
  end

  def pop 
    node = @head
    last_node = nil
    if node.nil?
      nil
    elsif node.next_node.nil?
      data = node.data
      @head = nil
      data
    else
      until node.next_node.nil?
        last_node = node
        node = node.next_node
      end
      last_node.next_node = nil
      node.data
    end
  end

end