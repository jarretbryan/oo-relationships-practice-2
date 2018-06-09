require 'pry'

class Pet

  attr_reader :owner, :cat, :owner_name, :cat_name

  @@all = []

  def initialize(owner, cat)
    @owner_name = owner.name
    @cat_name = cat.name
    @@all.push << self
  end

  def self.all
    @@all
  end


end
