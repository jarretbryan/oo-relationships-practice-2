class Language

  attr_reader :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def language_speakers
    LanguageSpeaker.all.select do |ls_instance|
      ls_instance.language == self
    end
  end

  def speakers
    self.language_speakers.map do |ls_instance|
      ls_instance.speaker
    end
  end

end
