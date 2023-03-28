require "./lib/jungle_beat"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe JungleBeat do
  it 'exists' do
    jb = JungleBeat.new

    expect(jb).to be_instance_of(JungleBeat)
    expect(jb.list).to be_a(LinkedList)
    expect(jb.list.head).to eq(nil)
  end

  it 'can append validated data' do
    jb = JungleBeat.new("deep")

    expect(jb.list.head).to be_a(Node)
    expect(jb.list.head.data).to eq("deep")
    expect(jb.list.count).to eq(1)
    expect(jb.append("dope boop la")).to eq(2)
    expect(jb.list.to_string).to eq("deep boop la")
    expect(jb.list.count).to eq(3)
    expect(jb.append("Mississippi")).to eq(0)
    expect(jb.append("234098deep{}{@#(*)}")).to eq(1)
    expect(jb.list.to_string).to eq("deep boop la deep")
    expect(jb.append("tee, Dee")).to eq(2)
    expect(jb.list.to_string).to eq("deep boop la deep tee dee")
  end

  it 'can count its validated sounds' do
    jb = JungleBeat.new("deep dop boop la")

    expect(jb.count).to eq(4)

    jb = JungleBeat.new("deep derp dope doop doo DEEP doot!")

    expect(jb.count).to eq(5)
  end

end