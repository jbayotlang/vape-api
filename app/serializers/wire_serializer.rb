class WireSerializer < ActiveModel::Serializer
  attributes :id, :name, :wire_type, :maker
end
