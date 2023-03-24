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

end