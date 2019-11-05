class Owner
  attr_reader :name, :species
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    save
  end
  
  def say_species
    species
  end
  
  def self.all
    @@all.dup.freeze
  end
  
  def self.count
    all.count
  end
  
  def self.reset_all
    @@all.reset
  end
  
  private
  def save
    @@all << self
  end
end