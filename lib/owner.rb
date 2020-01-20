class Owner
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @species = "human"
    @cats = []
    @dogs = []
    @@all << self
  end
  
  def say_species 
    "I am a #{self.species}."
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
  
  def cats 
    @cats
  end
  
  def dogs 
    @dogs 
  end 
  
  def buy_cat(cat)
    new_cat = Cat.new(cat)
    new_cat.owner = self 
    @cats << new_cat 
  end
  
  def buy_dog(dog)
    dog.owner = self 
    @dogs << dog 
  end
end