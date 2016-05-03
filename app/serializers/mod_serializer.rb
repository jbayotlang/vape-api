class ModSerializer < ActiveModel::Serializer
  attributes :id, :name, :mod_type, :battery, :maker
end
