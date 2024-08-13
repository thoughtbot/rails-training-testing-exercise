class TitleCheck
  ALLOW_LIST = [
    "AMA",
    "API",
    "CI",
    "CLI",
    "Open Source",
    "Rails",
    "RailsConf",
    "REST",
    "RSpec",
    "Ruby",
    "RubyConf",
    "RubyGems",
    "Ruby on Rails",
    "TDD",
    "thoughtbot",
  ].freeze

  def initialize(title:)
    @title = title
  end

  def warnings
    if uses_sentence_case?
      []
    else
      ["Title needs to follow the sentence case standard. If this is an exception, add it to the allow list, or refer to the README for more guidance."]
    end
  end
  
  private

  attr_reader :title

  def uses_sentence_case?
    sentences.all? do |sentence|
      words = sentence.scan(/\b[\w']+\b/)
      words.each_with_index do |word, index|
        if index.zero?
          if (word == word.capitalize || ALLOW_LIST.include?(word))
            next
          else
            return false
          end
        end

        if (word == word.capitalize && !ALLOW_LIST.include?(word))
          return false
        end
      end
      true
    end
  end

  def sentences
    title.split(/(?<=[\--\.:!?])\s+/).map(&:strip)
  end
end