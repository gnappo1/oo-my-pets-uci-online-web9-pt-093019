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
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def change_mood(collection, mood)
    collection.collect {|el| el.mood = "happy"}
  end
  
  def walk_dogs
    change_mood(dogs, "happy")
    dogs
  end
  
  def feed_cats
    change_mood(cats, "happy")
    cats
  end
  
  def remove_owner(collection)
    collection.each {|el| el.owner = nil}
    collection
  end
  
  def sell_pets
    change_mood(cats, "nervous")
    change_mood(dogs, "nervous")
    remove_owner(dogs)
  end
  
  def list_pets
    "I have #{dogs.count} dog(s), and #{cats.count} dog(s)."
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