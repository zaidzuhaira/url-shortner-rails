# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Url, type: :model do
  describe 'validations' do
    it 'validates original URL is a valid URL' do
      click = url.new
      url.original_url = 'https://fullstacklabs.notion.site/'
      url.short_url = Url.generate_short_url
      expect(url).to_be valid
    end

    it 'validates short URL is present' do
      click = url.new
      url.original_url = 'https://fullstacklabs.notion.site/'
      url.short_url = nil
      expect(url).to_be not_valid
    end

    # add more tests
  end
end
