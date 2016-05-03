class Juice < ActiveRecord::Base

  # Validation macros
  validates :name, presence: true
  validates :ratio, presence: true
  validates :maker, presence: true
end
