class Project < ApplicationRecord
  validates :description, length: { maximum: 300 }
  validates_numericality_of :target_value, :greater_than => 0, :less_than_or_equal_to => 500
end
