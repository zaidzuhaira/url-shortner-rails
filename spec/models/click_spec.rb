# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Click, type: :model do
  describe 'validations' do
    it 'validates url_id is valid' do
      click = Click.new
      click.url_id = 1000
      click.browser = 'dfvf'
      click.platform = 'djkjfhk'
      expect(click).to_be valid
    end

    it 'validates browser is not null' do
      click = Click.new
      click.url_id = 1000
      click.browser = nil
      click.platform = 'djkjfhk'
      expect(click).to_be valid
    end

    it 'validates platform is not null' do
      click = Click.new
      click.url_id = 1000
      click.browser = 'sldjksgg'
      click.platform = nil
      expect(click).to_be valid
    end
  end
end
