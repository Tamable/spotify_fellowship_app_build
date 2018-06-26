class Event < ApplicationRecord
  validates :title, :end, :start, presence: true
  belongs_to :user

  before_save :validate_date

  def validate_date
    self.start < self.end
  end
end
