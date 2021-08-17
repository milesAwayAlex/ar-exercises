class Employee < ActiveRecord::Base
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: {in: 40..200}

  belongs_to :store
  validates :store, presence: true
end
