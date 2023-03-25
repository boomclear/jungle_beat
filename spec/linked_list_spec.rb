require "./lib/linked_list"
require "./lib/node"
require "pry"

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
    list.append("deep")

    expect(list.to_string).to eq "doop deep"
  end

  it 'can prepend' do
    list = LinkedList.new

    list.append("doop")
    list.append("boop")
    list.prepend("deep")
    expect(list.head.data).to eq("deep")
    expect(list.to_string).to eq("deep doop boop")
  end

  it 'can insert' do
    list = LinkedList.new

    list.append("deep")
    list.append("boop")
    list.insert(3, "doop")
    expect(list.to_string).to eq("deep boop doop")

    list.append("meep")
    list.append("moop")
    list.insert(3, "loop")
    expect(list.to_string).to eq("deep boop doop loop meep moop")
    list.prepend("hype")
    list.insert(8, "type")
    expect(list.to_string).to eq("hype deep boop doop loop meep moop type")
    list.insert(5, "stoop")
    expect(list.to_string).to eq("hype deep boop doop loop stoop meep moop type")
    list.insert(8, "swipe")
    expect(list.to_string).to eq("hype deep boop doop loop stoop meep moop swipe type")
    list.insert(11, "gripe")
    expect(list.to_string).to eq("hype deep boop doop loop stoop meep moop swipe type gripe")
  end

  it 'can find' do
    list = LinkedList.new

    list.append("deep")
    list.append("doop")
    list.append("boop")
    list.append("loop")
    list.append("meep")
    list.append("moop")

    expect(list.find(1, 2)).to eq("doop boop")
  end
end

