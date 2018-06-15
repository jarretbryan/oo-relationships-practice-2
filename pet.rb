require 'pry'

class Pet

  attr_accessor :owner, :cat
  @@all = []

  def self.all
    @@all
  end

  def initialize(owner, cat)
    @owner = owner
    @cat = cat
    self.class.all << self
  end


end
