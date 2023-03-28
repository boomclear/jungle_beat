class JungleBeat
  attr_accessor :list, :rate, :voice
  def initialize(data=nil, rate=500, voice="Boing")
    @list = LinkedList.new
    @rate = rate
    @voice = voice
    self.append(data) if data
  end

  def append(data)
      beats_added = 0
      validate(data).each do |beat|
        self.list.append(beat) 
        beats_added +=1
      end 
      beats_added
    end

    def validate(data)
      valid = ["tee", "dee", "deep", "bop", "boop", "la", "na", "dop", "doop", "meep", "moop", "doot", "dot", "be", "bop", "hip", "hop", "choo", "coo", "doo", "do", "beep"]
      to_validate = data.split(' ')
      validated = []
      to_validate.each do |beat|
        sleek_beat = beat.gsub(/[^a-z]/i, '').downcase
        if valid.include?(sleek_beat)
          validated << sleek_beat
        end
      end
      validated
    end

    def play
      `say -r #{rate} -v #{voice} #{self.list.to_string}`
      return self.count
    end
    
    def count
      self.list.count
    end
end