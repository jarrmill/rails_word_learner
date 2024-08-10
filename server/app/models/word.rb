class Word < ApplicationRecord
  # Validations
  validates :name, presence: true
  validates :proficiency, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
