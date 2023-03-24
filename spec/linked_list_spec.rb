require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
  it "exists" do 
    list = LinkedList.new

    expect(list).to be_instance_of(LinkedList)
  end

  it "can add data" do
    list = LinkedList.new

    list.append("doop")
  end

  it "can count nodes" do
    list = LinkedList.new
    
    list.append("doop")

    expect(list.count).to eq 1
  end

  it "can p node data as a string" do
    list = LinkedList.new

    list.append("doop")
    
    expect(list.to_string).to eq "doop"
  end
end

#  list = LinkedList.new
#  <LinkedList head=nil #4567890456 list.head
#  nil list.append("doop")
#  "doop" list
#  <LinkedList head=<Node data="doop" next_node=nil #567890456789 #4567890456 
#  list.head.next_node
#  nil list.count
#  1 list.to_string
#  "doop"