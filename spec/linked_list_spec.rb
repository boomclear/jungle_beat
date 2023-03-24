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

    expect(list.head).to be_instance_of(Node)
  end

  it "can count 1 node" do
    list = LinkedList.new
    
    list.append("doop")

    expect(list.count).to eq 1
  end

  it "can count multiple nodes" do
    list = LinkedList.new
    
    list.append("doop")
    list.append("deep")
    list.append("dork")

    expect(list.count).to eq 3
  end

  it "can p node data as a string" do
    list = LinkedList.new

    list.append("doop")
    list.append("doop")

    expect(list.to_string).to eq "doop doop"
  end
end

