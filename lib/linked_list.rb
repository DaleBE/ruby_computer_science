# Container for all the Nodes
class LinkedList
  attr_accessor :list_head

  def initialize
    @list_head = nil
  end

  # adds a new node containing value to the end of the list
  def append(value)
    if @list_head.nil?
      @list_head = Node.new(value, nil)
    else
      last_node = @list_head

      last_node = last_node.next_node until last_node.next_node.nil?

      last_node.next_node = Node.new(value, nil)
    end
  end

  # adds a new node containing value to the start of the list
  def prepend(value); end

  # returns the total number of nodes in the list
  def size; end

  # returns the first node in the list
  def head; end

  # returns the last node in the list
  def tail; end

  # returns the node at the given (index)
  def at(index); end

  # removes the last element from the list
  def pop; end

  # returns true if the passed in value is in the list and otherwise returns false.
  def contains?(value); end

  # returns the index of the node containing value, or nil if not found.
  def find(value); end

  # represent your LinkedList objects as strings, so you can print them out and preview them in the console.
  # The format should be: ( value ) -> ( value ) -> ( value ) -> nil
  def to_s; end

  # Class for each node of the LinkedList
  class Node
    attr_accessor :value, :next_node

    def initialize(value, next_node)
      self.value = value
      self.next_node = next_node
    end
  end
end

new_list = LinkedList.new
new_list.append(45)
new_list.append(13)
new_list.append(64)
p new_list
