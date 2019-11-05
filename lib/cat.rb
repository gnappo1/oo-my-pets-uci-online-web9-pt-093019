require 'pry'
class Cat
  attr_accessor :mood
  attr_reader :name, :owner
  @@all = []
  
  def initialize(name, owner)
    @name, @owner, @mood = name, owner, "nervous"
    save
  end
  
  def self.all
    @@all.dup.freeze
  end
  
  private
  def save
    @@all << self
  end
end