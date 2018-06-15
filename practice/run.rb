require_relative './language.rb'
require_relative './languagespeaker.rb'
require_relative './speaker.rb'

require 'pry'

xhosa = Language.new("IsiXhosa")
spanish = Language.new("Spanish")
javascript = Language.new("JavaScript")
python = Language.new("Python")

john = Speaker.new("John")
nakia = Speaker.new("Nakia")
zip = Speaker.new("Zip Carlos")

LanguageSpeaker.new(nakia, xhosa)
LanguageSpeaker.new(nakia, spanish)
LanguageSpeaker.new(john, javascript)
LanguageSpeaker.new(zip, python)

Pry.start
