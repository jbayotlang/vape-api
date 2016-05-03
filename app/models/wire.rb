class Wire < ActiveRecord::Base

  # Constants
  WIRE_TYPE = %w(Fused\ Clapton Clapton C\ Wire Stainless\ Steel Nickel Wire)

  # Validation macros
  validates :name, presence: true
  validates :wire_type, presence: true
  validates :maker, presence: true
end
