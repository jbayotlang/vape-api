class Shop < ActiveRecord::Base

  # Validation macros
  # NOTE: Validations not final
  validates :name, presence: true
  validates :address, presence: true
  validates :hours, presence: true
  validates :sns_page, presence: true
  validates :longitude, presence: true
  validates :latitude, presence: true
end
