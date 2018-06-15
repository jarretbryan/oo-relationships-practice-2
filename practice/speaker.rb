class Speaker

  attr_reader :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def speaker_languages
    LanguageSpeaker.all.select do |ls_instance|
      ls_instance.speaker == self
    end
  end

  def languages
    self.speaker_languages.map do |ls_instance|
      ls_instance.language
    end
  end


end
