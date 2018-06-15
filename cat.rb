require 'pry'

class Cat

  attr_reader :name
  attr_accessor :status
  @@all = []

  def self.all
    @@all
  end

  def initialize(name, status)
    @name = name
    @status = status
    self.class.all << self
  end

  def pets
    Pet.all.select do |pet_ins|
      #binding.pry
      pet_ins.cat == self
    end
  end

  def owners
    self.pets.select do |pet_ins|
      pet_ins.owner == self
    end
  end

  def get_sick
    self.status = "sick"
  end

end
