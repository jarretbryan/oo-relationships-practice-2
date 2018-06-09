require 'pry'

class Cat

  attr_reader :name
  attr_accessor :sick

  @@all = []

  def initialize(name)
    @name = name
    @sick = false
    @@all << self
  end

  def self.all
    @@all
  end

  def pets
    Pet.all.select do |pet|
      @name == pet.cat_name
    end
  end

  def owners
    self.pets.map do |pet|
      pet.owner_name
    end
  end

end
