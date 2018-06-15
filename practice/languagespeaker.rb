class LanguageSpeaker

  attr_reader :language, :speaker
  @@all = []

  def self.all
    @@all
  end

  def initialize(speaker, language)
    @language = language
    @speaker = speaker
    self.class.all << self
  end



end
