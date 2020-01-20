class Cat
  attr_accessor :owner, :mood
  attr_reader :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @mood = "nervous"
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def owner=(owner)
    @owner = owner
  end
end