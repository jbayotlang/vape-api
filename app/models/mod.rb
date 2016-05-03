class Mod < ActiveRecord::Base

  # Constants
  MOD_TYPE = %w(Mechanical Variable)

  # Validation macros
  validates :name, presence: true
  validates :mod_type, presence: true
  validates :battery, presence: true
  validates :maker, presence: true
end
