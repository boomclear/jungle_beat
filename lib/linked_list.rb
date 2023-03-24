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
    if @head.nil?
      0
    else
      1
  end

end