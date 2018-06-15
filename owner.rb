require 'pry'

class Owner

  attr_reader :name, :pets, :cats
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all.push(self)
  end

  def pets
    Pet.all.select do |pet_ins|
      pet_ins.owner == self
    end
  end

  def cats
    self.pets.map do |pet_ins|
      pet_ins.cat
    end.uniq
  end

  def sick_cats
    self.cats.select do |cats|
      cats.status != "healthy"
    end
  end


end
