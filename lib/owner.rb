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
    Cat.all.select {|cat| cat.owner == self}
  end
  
  def dogs 
    Dog.all.select {|dog| dog.owner == self}
  end 
  
  def buy_cat(cat)
    new_cat = Cat.new(cat, self)
    @cats << new_cat 
  end
  
  def buy_dog(dog)
    new_dog = Dog.new(dog, self)
    @dogs << new_dog 
  end
  
  def walk_dogs
    dogs.each do |dog|
      dog.mood = "happy"
    end
  end
  
  def walk_dogs
    dogs.each do |dog|
      dog.mood = "happy"
    end
  end
  
end