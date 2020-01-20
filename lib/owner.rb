class Owner
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name, species)
    @name = name 
    @species = species 
    @@all << self
  end
  
  def say_species 
    puts self.species 
  end
  
  def self.all 
    @@all 
  end
  
  def self.count 
    self.all.length 
  end
  
  def self.reset_all 
    @@all.clear 
  end
end