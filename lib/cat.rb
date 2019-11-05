require 'pry'
class Cat
  attr_accessor :mood
  attr_reader :name, :owner
  @@all = []
  
  def initialzie(name, owner)
    @name, @owner, @mood = name, owner, "nervous"
  end
  
  def self.all
    @@all.dup.freeze
  end
end