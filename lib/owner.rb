class Owner
  attr_reader :name, :species
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    save
  end
  
  def say_species
    "I am a #{species}."
  end
  
  def cats 
    Cat.all.select {|cat| cat.owner == self}
  end
  
  def dogs 
    Dog.all.select {|dog| dog.owner == self}
  end
  
  def buy_cat(name)
    cat = Cat.new(name, self)
  end
  
  def buy_dog(name)
    
  end
  
  def walk_dogs
    
  end
  
  def feed_cats
    
  end
  
  def sell_pets
    
  end
  
  def list_pets
    
  end
  
  def self.all
    @@all
  end
  
  def self.count
    all.count
  end
  
  def self.reset_all
    @@all.clear
  end
  
  private
  def save
    @@all << self
  end
end