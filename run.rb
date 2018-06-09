require_relative './cat.rb'
require_relative './pet.rb'
require_relative './owner.rb'

require 'pry'

miu_miu = Cat.new("Miu Miu")
doraemon = Cat.new("Doraemon")
bixby = Cat.new("Bixby")
tchalla = Cat.new("tchalla")

john = Owner.new("John")
nakia = Owner.new("Nakia")
zip = Owner.new("Zip Carlos")

Pet.new(nakia, tchalla)
Pet.new(nakia, bixby)
Pet.new(john, miu_miu)
Pet.new(zip, doraemon)

binding.pry
