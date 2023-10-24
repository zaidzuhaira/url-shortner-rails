# frozen_string_literal: true

class Click < ApplicationRecord
  belongs_to :url

  scope :current_month, -> { where(created_at: Time.now.beginning_of_month..Time.now.end_of_month)}

end
