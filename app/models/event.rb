class Event < ApplicationRecord
  validates :title, presence: true
  belongs_to :calendar_date
end
