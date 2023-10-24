# frozen_string_literal: true

class Url < ApplicationRecord
  # scope :latest, -> {}

  has_many :click
  validates :short_url, presence: true
  validates :original_url, presence: true, format: { with: URI::DEFAULT_PARSER::make_regexp }

  SHORT_URL_LENGHT = 5
  CHARSET = [*('A'..'Z')]

  def self.generate_short_url
    loop do
      short_url = CHARSET.sample(SHORT_URL_LENGHT).join
      return short_url unless self.exists?(short_url: short_url)
    end
  end

end
