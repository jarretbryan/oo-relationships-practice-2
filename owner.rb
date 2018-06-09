require 'pry'

class Owner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pets
    Pet.all.select do |pet|
      self.name == pet.owner_name
    end
  end

  def cats
    self.pets.map do |pet|
      pet.cat_name
    end
  end

  def sick_cats
    Cat.all.select do |cat|
      cat.sick == true
    end
  end


end
